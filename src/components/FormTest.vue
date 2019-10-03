<template>
  <div id="login-form">
    <form @submit.prevent="handleSubmit">
      <div class="form-group">
        <p>{{inputText}}</p>
        <input type="text" v-model="inputText" />
      </div>
      <div class="form-group">
        <input type="checkbox" id="jack" value="Jack" v-model="checkedNames" />
        <label for="jack">Jack</label>
        <input type="checkbox" id="john" value="John" v-model="checkedNames" />
        <label for="john">John</label>
        <input type="checkbox" id="mike" value="Mike" v-model="checkedNames" />
        <label for="mike">Mike</label>
        <br />
        <span>Checked names: {{ checkedNames }}</span>
      </div>
      <div class="form-group">
        <input type="radio" id="one" value="One" v-model="picked" />
        <label for="one">One</label>
        <br />
        <input type="radio" id="two" value="Two" v-model="picked" />
        <label for="two">Two</label>
        <br />
        <span>Picked: {{ picked }}</span>
      </div>
    </form>
  </div>
</template>

<script>
//import Router from "./Router";
export default {
  name: "login-form",
  data() {
    return {
      inputText: "",
      checkedNames: [],
      picked: ""
    };
  },
  methods: {
    handleSubmit() {
      this.submitting = true;
      this.clearStatus();

      if (this.invalidName || this.invalidEmail) {
        this.error = true;
        return;
      }

      this.$emit("add", this.user);
      this.$refs.first.focus();
      this.user = {
        userName: "",
        password: ""
      };
      this.error = false;
      this.success = true;
      this.submitting = false;
    },

    clearStatus() {
      this.success = false;
      this.error = false;
    },
    goto() {
      window.location = "/";
      console.log("go to call");
    }
  },
  computed: {
    invalidName() {
      return this.user.userName === "";
    },

    invalidEmail() {
      return this.user.password === "";
    }
  }
};
</script>

<style scoped>
form {
  margin-bottom: 2rem;
}

[class*="-message"] {
  font-weight: 500;
}

.error-message {
  color: #d33c40;
}

.success-message {
  color: #32a95d;
}
</style>