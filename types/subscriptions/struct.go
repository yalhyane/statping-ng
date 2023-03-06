package subscriptions

import "time"

// Subscription is the main struct for Subscriptions
type Subscription struct {
	Id        int64     `gorm:"primary_key;auto_increment:true;column:id" json:"id"`
	Email     string    `gorm:"type:varchar(100);column:email" json:"email,omitempty"`
	CreatedAt time.Time `gorm:"column:created_at" json:"created_at"`
	UpdatedAt time.Time `gorm:"column:updated_at" json:"updated_at"`
}
