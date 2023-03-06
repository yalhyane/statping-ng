package subscriptions

func Samples() error {
	log.Infoln("Inserting Sample Subscriptions...")
	s := &Subscription{
		Email: "y.alhyane@gmail.com",
	}
	if err := s.Create(); err != nil {
		return err
	}

	s1 := &Subscription{
		Email: "yalhyane@gmail.com",
	}

	if err := s1.Create(); err != nil {
		return err
	}

	return nil
}
