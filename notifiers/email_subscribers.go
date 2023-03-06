package notifiers

import (
	"fmt"
	"github.com/statping-ng/statping-ng/types/subscriptions"
	"strconv"

	"github.com/statping-ng/emails"
	"github.com/statping-ng/statping-ng/types/failures"
	"github.com/statping-ng/statping-ng/types/notifications"
	"github.com/statping-ng/statping-ng/types/notifier"
	"github.com/statping-ng/statping-ng/types/services"
)

var _ notifier.Notifier = (*emailSubscribe)(nil)

type emailSubscribe struct {
	emailer
}

var EmailSubscriber = &emailSubscribe{
	emailer{&notifications.Notification{
		Method:      "email_subscribe",
		Title:       "Users subscription",
		Description: "Notify subscribed users via email when services are offline",
		Author:      "Ujeebu",
		AuthorUrl:   "https://github.com/ujeebu",
		Icon:        "far fa-envelope",
		Limits:      30,
		Form: []notifications.NotificationForm{{
			Type:        "text",
			Title:       "SMTP Host",
			Placeholder: "Insert your SMTP Host here.",
			DbField:     "Host",
		}, {
			Type:        "text",
			Title:       "SMTP Username",
			Placeholder: "Insert your SMTP Username here.",
			DbField:     "Username",
		}, {
			Type:        "password",
			Title:       "SMTP Password",
			Placeholder: "Insert your SMTP Password here.",
			DbField:     "Password",
		}, {
			Type:        "number",
			Title:       "SMTP Port",
			Placeholder: "Insert your SMTP Port here.",
			DbField:     "Port",
		}, {
			Type:        "text",
			Title:       "Outgoing Email Address",
			Placeholder: "outgoing@email.com",
			DbField:     "Var1",
		},
			//{
			//	Type:        "text",
			//	Title:       "Subject",
			//	Placeholder: "Statping service",
			//	DbField:     "Var2",
			//},
			{
				Type:        "list",
				Title:       "TLS/SSL",
				Placeholder: "TLS/SSL",
				SmallText:   "Enabling this will set Insecure Skip Verify to true",
				DbField:     "api_key",
				ListOptions: []string{"Enabled", "Disabled"},
			}},
	},
	},
}

// OnFailure will trigger failing service
func (es *emailSubscribe) OnFailure(s services.Service, f failures.Failure) (string, error) {

	// users can only subscribe to public services
	if !s.Public.Bool {
		return "", nil
	}

	log.Infoln("Sending emails to notify a service failure to " + strconv.Itoa(len(subscriptions.All())) + " subscribers")
	subscriber := es.Var2.String
	subject := fmt.Sprintf("Service %s is Offline", s.Name)
	tmpl := renderEmail(s, subscriber, f, emails.Failure)
	var err error
	for _, s := range subscriptions.All() {
		e := &emailOutgoing{
			To:       s.Email,
			Subject:  subject,
			Template: tmpl,
			From:     es.Var1.String,
		}
		if er := es.emailer.dialSend(e); er != nil {
			err = er
		}
	}

	return tmpl, err
}

// OnSuccess will trigger successful service
func (es *emailSubscribe) OnSuccess(s services.Service) (string, error) {
	return "", nil
}
