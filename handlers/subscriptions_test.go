package handlers

import (
	"github.com/stretchr/testify/assert"
	"testing"
)

func TestSubscriptionAPIRoutes(t *testing.T) {
	tests := []HTTPTest{
		{
			Name:        "Statping Create Public Group",
			URL:         "/api/subscriptions",
			HttpHeaders: []string{"Content-Type=application/json"},
			Body: `{
					"email": "yalhyan.e@gmail.com",
				}`,
			Method:         "POST",
			ExpectedStatus: 200,
			BeforeTest:     SetTestENV,
		},
		{
			Name:             "Incorrect JSON POST",
			URL:              "/api/subscriptions",
			Body:             BadJSON,
			ExpectedContains: []string{BadJSONResponse},
			Method:           "POST",
			ExpectedStatus:   422,
		},
	}

	for _, v := range tests {
		t.Run(v.Name, func(t *testing.T) {
			_, t, err := RunHTTPTest(v, t)
			assert.Nil(t, err)
		})
	}
}
