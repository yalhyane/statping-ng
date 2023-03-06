package subscriptions

import (
	"github.com/statping-ng/statping-ng/database"
	"github.com/statping-ng/statping-ng/types/errors"
	"github.com/statping-ng/statping-ng/types/metrics"
	"github.com/statping-ng/statping-ng/utils"
	"net/mail"
	"strconv"
)

var (
	db             database.Database
	log            = utils.Log.WithField("type", "subscription")
	allSubscribers map[int64]*Subscription
)

func SetDB(database database.Database) {
	db = database.Model(&Subscription{})
}

func (s *Subscription) Validate() error {
	if s.Email == "" {
		return errors.NewWithCode("subscription email is empty", 422)
	}

	_, err := mail.ParseAddress(s.Email)
	if err != nil {
		return errors.NewWithCode("bad email format", 422)
	}

	return nil
}

func (s *Subscription) AfterFind() {
	metrics.Query("subscription", "find")
}

func (s *Subscription) AfterUpdate() {
	metrics.Query("subscription", "update")
}

func (s *Subscription) AfterDelete() {
	metrics.Query("subscription", "delete")
}

func (s *Subscription) BeforeUpdate() error {
	return s.Validate()
}

func (s *Subscription) BeforeCreate() error {
	return s.Validate()
}

func (s *Subscription) AfterCreate() {
	allSubscribers[s.Id] = s
	metrics.Query("subscription", "create")
}

func init() {
	allSubscribers = make(map[int64]*Subscription)
}

func SelectAllSubscribers() map[int64]*Subscription {
	log.Debugln("Loading subscribers")
	if len(allSubscribers) > 0 {
		return allSubscribers
	}
	for _, s := range all() {
		allSubscribers[s.Id] = s
	}
	log.Debugln(strconv.Itoa(len(allSubscribers)) + " subscribers loaded")
	return allSubscribers
}

func All() map[int64]*Subscription {
	return allSubscribers
}

func Find(id int64) (*Subscription, error) {
	if s, ok := allSubscribers[id]; ok {
		return s, nil
	}
	var subscription Subscription
	q := db.Where("id = ?", id).Find(&subscription)
	if q.Error() != nil {
		return nil, errors.Missing(subscription, id)
	}
	return &subscription, q.Error()
}

func all() []*Subscription {
	var subscriptions []*Subscription
	db.Find(&subscriptions)
	return subscriptions
}

func (s *Subscription) Create() error {
	log.Infoln("Creating subscription " + s.Email)
	q := db.Create(s)
	return q.Error()
}

func (s *Subscription) Update() error {
	q := db.Update(s)
	return q.Error()
}

func (s *Subscription) Delete() error {
	q := db.Delete(s)
	return q.Error()
}
