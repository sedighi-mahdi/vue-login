<template>
  <div id="app">
    <Header />    
    <div class="wrapper">
      <aside class="sidebar-right">
         <Menu />
      </aside>
      <main class="main-content">
        <div id="insert_box"></div>
           <!-- <IFTest/>
            <ForTest />
            <multiselect />-->
            <frm_bamaliati />
        <div>
          <ul id="dark-pagination" style="padding:5px;" class="simple-pagination"></ul>
        </div>

        <div id="data_box" style="padding:10px;"></div>
      </main>
    </div>
  </div>
</template>

<script>
import LoginForm from "./components/LoginForm";
import Menu from "./components/Menu.vue";
import VueRouter from "vue-router";
import Header from "./components/Header.vue";
import Router from "./components/Router";
import IFTest from "./components/IFTest"
import ForTest from "./components/ForTest"
import FormTest from "./components/FormTest"
import multiselect from "./components/MultiselectTest.vue"
import frm_bamaliati from './components/frm_bamaliati'
export default {
  name: "app",
  components: {
    Header,
    Menu,
    IFTest,
    ForTest,
    multiselect,
    FormTest,
    frm_bamaliati
  },
  methods: {
    addUser(user) {
      console.log(user.userName);
      console.log("call addUser");
    }
  },
  mounted: function() {
    //alert("alam");
    $(".main-menu .mnu-group ul").hide();
    $(".head").click(function() {
      $("main-menu .mnu-group ul").slideUp();
      var parent = $(this).parent();
      var subMenu = parent.find("ul");
      if ($(subMenu).css("display") == "none") subMenu.slideDown();
      else {
        subMenu.slideUp();
      }
    });
    console.log("app mount");
  }
};
</script>

<style>
#app {
  font-family: "Avenir", Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;  
  color: #2c3e50;
  margin-top: 60px;
}
</style>
