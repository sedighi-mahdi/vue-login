<template>
  <component :is="routedComponent"></component>
</template>

<script>
import LoginForm from "./LoginForm.vue";

const routes = {
  "/login":LoginForm,  
};

export default {
  name: 'router',
  data() {
    return { current: window.location.pathname };
  },
  computed: {
    routedComponent() {
      return routes[this.current];
    }
  }
};
</script>