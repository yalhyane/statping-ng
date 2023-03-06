package handlers

import (
	"github.com/statping-ng/statping-ng/types/subscriptions"
	"net/http"
)

// apiCreateSubscriptionHandler accepts a POST method to create new groups
func apiCreateSubscriptionHandler(w http.ResponseWriter, r *http.Request) {
	var s subscriptions.Subscription
	if err := DecodeJSON(r, &s); err != nil {
		sendErrorJson(err, w, r)
		return
	}

	if err := s.Create(); err != nil {
		sendErrorJson(err, w, r)
		return
	}

	sendJsonAction(s, "create", w, r)
}

// apiAllSubscriptionHandler will show all the groups
func apiAllSubscriptionHandler(r *http.Request) interface{} {
	// auth, admin := IsUser(r), IsAdmin(r)
	// return groups.SelectGroups(admin, auth)
	return subscriptions.SelectAllSubscribers()
}
