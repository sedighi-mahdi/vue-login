<template>
  <div id="login-form">
    <form @submit.prevent="handleSubmit" >
        <div class="form-group">
          <label>user name</label>
        <input
            ref="first"
            type="text"
            :class="{ 'has-error': submitting && invalidName }"
            v-model="user.userName"
            @focus="clearStatus"
            @keypress="clearStatus"
        />
        </div>
         <div class="form-group">
           <label>password</label>
        <input
            type="text"
            :class="{ 'has-error': submitting && invalidEmail }"
            v-model="user.password"
            @focus="clearStatus"
        />
         </div>
        <p v-if="error && submitting" class="error-message">
            ❗Please fill out all required fields
        </p>
        <p v-if="success" class="success-message">
            ✅ Employee successfully added
        </p>
        <button class="btn  btn-success">login</button>
        <button @click="goto()" class="btn btn-warning">Edit</button>
            </form>
        </div>
</template>

<script>
  //import Router from "./Router";
  export default {
    name: 'login-form',
    data() {
      return {
        submitting: false,
        error: false,
        success: false,
        user: {          
          userName: '',
          password: '',
        },
      }
    },
    methods: {
        handleSubmit() {
            this.submitting = true
            this.clearStatus()

            if (this.invalidName || this.invalidEmail) {
            this.error = true
            return
            }

            this.$emit('add', this.user)
            this.$refs.first.focus()
            this.user = {
            userName: '',
            password: '',
            }
            this.error = false
            this.success = true
            this.submitting = false
        },

        clearStatus() {
            this.success = false
            this.error = false
            
        },
        goto(){
          window.location = "/";
          console.log("go to call");
        }
    },
    computed: {
    invalidName() {
        return this.user.userName === ''
    },

    invalidEmail() {
        return this.user.password === ''
    },
},
     
  }
</script>

<style scoped>
  form {
    margin-bottom: 2rem;
  }

  [class*='-message'] {
    font-weight: 500;
  }

  .error-message {
    color: #d33c40;
  }

  .success-message {
    color: #32a95d;
  }
</style>