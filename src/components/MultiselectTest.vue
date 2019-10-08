<template>
  <div>
    <label class="typo__label">Simple select / dropdown</label>
    <multiselect
      v-model="value"
      :options="options"
      :multiple="true"h
      :close-on-select="true" 
      :clear-on-select="false"
      :preserve-search="true"
      placeholder="Pick some"
      label="name"
      track-by="name"
      :preselect-first="true"
    ></multiselect>
    <pre class="language-json"><code>{{ value  }}</code></pre>
  </div>
</template>
<script>
import Multiselect from "vue-multiselect";
export default {
  components: { Multiselect },
  data() {
    return {
      value: [],
      options: [
        { name: "Vue.js", language: "JavaScript" },
        { name: "Adonis", language: "JavaScript" },
        { name: "Rails", language: "Ruby" },
        { name: "Sinatra", language: "Ruby" },
        { name: "Laravel", language: "PHP" },
        { name: "Phoenix", language: "Elixir" }
      ]
    };
  }
};
</script>
<style>
</style>