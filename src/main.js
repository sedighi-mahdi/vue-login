import Vue from 'vue'
import App from './App.vue'



Vue.config.productionTip = false

new Vue({
  render: h => h(App),
  
}).$mount('#app')
/*new Vue({
  el: '#app',
  router,
  template: '<App/>',
  components: { App }
}).$mount('#app')*/