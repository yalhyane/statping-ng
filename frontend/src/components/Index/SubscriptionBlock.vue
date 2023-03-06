<template>
    <div class="" style="position: absolute; right: 10px; z-index: 99; min-width: 400px;">
      <a class="float-right" href="#" @click.prevent="visible = true">Subscribe to updates</a>
      <div v-if="visible">
        <transition name="modal">
          <div class="modal-mask">
            <div class="modal-wrapper">
              <div class="modal-dialog" role="document">
                <div class="modal-content">
                  <div class="modal-body">
                    <div class="alert alert-primary" role="alert" v-if="done">
                      Subscribed successfully! You will receive all updates via email.
                      <button type="button" class="close" data-dismiss="alert" aria-label="Close" @click="reset">
                        <span aria-hidden="true">&times;</span>
                      </button>
                    </div>
                    <div class="form-group row" v-if="!done">
                      <div class="col-sm-12">
                        <input v-model="email" type="text" name="title" :class="{'form-control': true, 'is-invalid': emailError.length > 0}" id="title" placeholder="Your email" required>
                        <div class="invalid-feedback text-capitalize">
                          {{ emailError }}
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="modal-footer" v-if="!done">
                    <button type="button" class="btn btn-secondary" @click="visible = false">Cancel</button>
                    <button @click.prevent="createSubscription"
                            :disabled="!email"
                            type="button" class="btn btn-block btn-primary">
                      Subscribe
                    </button>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </transition>
      </div>
    </div>
</template>

<script>
import Api from '../../API';
export default {
  name: 'SubscriptionBlock',
  data() {
    return {
      visible: false,
      done: false,
      email: '',
      emailError: ''
    }
  },
  methods: {
    reset() {
      this.visible = false;
      this.email = "";
      this.emailError = "";
      this.done= false
    },
    async createSubscription() {
      console.log('Email subscription ' + this.email)
      try {
        const r = await Api.subscription_save(this.email)
        if (r.status === 200) {
          this.done = true;
          setTimeout(() => {
            this.reset()
          }, 5000)
        } else {
          console.log("Error: ", r.data);
          this.emailError = "Invalid email";
        }
      } catch (e) {
        if (e && e.response && e.response.data && e.response.data.error) {
          this.emailError = e.response.data.error;
        } else {
          this.emailError = "Invalid email";
        }
      }

    },
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>

</style>
