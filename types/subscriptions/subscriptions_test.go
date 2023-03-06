package subscriptions

import (
	"github.com/statping-ng/statping-ng/database"
	"github.com/statping-ng/statping-ng/utils"
	"github.com/stretchr/testify/assert"
	"github.com/stretchr/testify/require"
	"testing"
)

var s = &Subscription{
	Id:    1,
	Email: "email@test.com",
}

var s2 = &Subscription{
	Email: "email2@test.com",
}

var s3 = &Subscription{
	Email: "email3@test.com",
}

func TestInit(t *testing.T) {
	err := utils.InitLogs()
	require.Nil(t, err)
	db, err := database.OpenTester()
	require.Nil(t, err)
	db.CreateTable(&Subscription{})
	db.Create(&s)
	db.Create(&s2)
	db.Create(&s3)
	SetDB(db)
}

func TestFind(t *testing.T) {
	item, err := Find(1)
	require.Nil(t, err)
	assert.Equal(t, "email@test.com", item.Email)
}

func TestAll(t *testing.T) {
	items := all()
	assert.Len(t, items, 3)
}

func TestSelectAllSubscribers(t *testing.T) {
	items := SelectAllSubscribers()
	assert.Len(t, items, 3)
}

func TestCreate(t *testing.T) {
	example := &Subscription{
		Email: "email4@test.com",
	}
	err := example.Create()
	require.Nil(t, err)
	assert.NotZero(t, example.Id)
	assert.Equal(t, "email4@test.com", example.Email)
	assert.NotZero(t, example.CreatedAt)
}

func TestSamples(t *testing.T) {
	require.Nil(t, Samples())
	assert.Len(t, All(), 5)
}

func TestClose(t *testing.T) {
	assert.Nil(t, db.Close())
}
