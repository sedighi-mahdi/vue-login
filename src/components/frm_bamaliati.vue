<template>
  <div id="frm_bamaliati">
    <form @submit.prevent="handleSubmit">
      <header class="main-head">
        <h3>{{title}}</h3>
      </header>
      <div class="container-fluid">
        <div class="row mt-10">
          <div class="col-xs-12">
            <button id="btnAddProgram" class="btn btn-sm btn-success btn-add" onclick="showBox()">
              <i class="fa fa-plus ml-5"></i>جدید
            </button>
          </div>
        </div>
        <div class="row">
          <div class="col-xs-12 col-sm-6">
            <div class="save-box">
              <div class="form-group">
                <label>برنامه تحول</label>
                <v-select :options="options" :reduce="country => country.id" label="lang" @input="setSelected" @search="fetchOptions"></v-select>
              </div>

              <div class="form-group">
                <label>برنامه عملیاتی</label>
                <input type="text" v-model="data.Bamaliati_name" class="form-control" />
              </div>

              <div class="form-group">
                <label>نهاد مسئول</label>
                <multiselect
                  v-model="data.Nahadmasool_idvalue"
                  :options="data.Nahadmasool_idoption"
                  :multiple="false"
                  :close-on-select="true"
                  :clear-on-select="false"
                  :preserve-search="true"
                  placeholder="Pick some"
                  label="name"
                  track-by="name"
                  :preselect-first="true"
                  @search-change="asyncFind"
                  @open="active='Nahadmasool'"
                ></multiselect>
              </div>

              <div class="form-group">
                <label>زمان اجرا</label>
                <multiselect
                  v-model="data.ZamanEjravalue"
                  :options="data.ZamanEjraoption"
                  :multiple="false"
                  :close-on-select="true"
                  :clear-on-select="false"
                  :preserve-search="true"
                  placeholder="Pick some"
                  label="name"
                  track-by="name"
                  :preselect-first="true"
                  @search-change="asyncFind"
                  @open="active='ZamanEj'"
                ></multiselect>
              </div>
            </div>
          </div>
        </div>
      </div>
    </form>
  </div>
</template>
    <script>
//import Router from "./Router";
import Multiselect from "vue-multiselect";
import vSelect from "vue-select";
import VueAxios from "vue-axios";

export default {
  name: "frm_bamaliati",
  components: { Multiselect, vSelect },
  data() {
    return {
      submitting: false,
      error: false,
      success: false,
      isLoading: false,
      options: ["foo", "bar", "baz"],
      active: "ax",
      data: {
        title: "rasss",
        id: "",
        Btahvol_idvalue: [],
        Btahvol_idoption: [],
        Bamaliati_name: "",
        Nahadmasool_idvalue: [],
        Nahadmasool_idoption: [],
        ZamanEjravalue: [],
        ZamanEjraoption: []
      }
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

      //this.$emit("add", this.user);
      this.$refs.first.focus();

      this.error = false;
      this.success = true;
      this.submitting = false;
    },

    clearStatus() {
      this.success = false;
      this.error = false;
    },
    async asyncFind(field) {
      console.log(this.active);
      this.isLoading = true;
      try {
        //const response = await fetch('https://jsonplaceholder.typicode.com/users')
        //const data = await response.json()
        //console.log(data);
        const myobj = {
          id: 1,
          operation: field,
          search: this.active
        };
        const response = await fetch(
          "http://10.38.41.62/Tahavol/phpPages/searchtest.php",
          {
            method: "POST",
            body: JSON.stringify(myobj),
            headers: { "Content-type": "application/json; charset=UTF-8" }
          }
        );
        const data1 = await response.json();
        this.options = ["foo", "bar", "baz"];
        this.isLoading = false;
        console.log(typeof t);
        //this.employees = [...this.employees, data]
      } catch (error) {
        console.error(error);
      }
    },
    setSelected() {
      console.log("set selected");
      //this.options.push("sdas");
    },
    goto() {
      window.location = "/";
      console.log("go to call");
    },
    selectActive(data) {
      console.log(data);
    },
    async fetchOptions(search, loading) {  
      var t=12;    
      try {
        var t=13;
        const myobj = {
          id: 1,
          operation: search,
          search: this.active
        };
        const response = await fetch(
          "http://10.38.41.62/Tahavol/phpPages/searchtest.php",{
            method: "POST",
            body: JSON.stringify(myobj),
            headers: { "Content-type": "application/json; charset=UTF-8" }
          }
        );
        const data1 = await response.json();
        console.log(data1)
        this.options = data1;
      } catch (error) {}
      console.log(t)
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
</style>
    