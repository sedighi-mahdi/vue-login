<!-- Vue component -->
<template>
  <div>
    <label class="typo__label">Simple select / dropdown</label>
    <multiselect v-model="value" :options="options" :multiple="false" :close-on-select="true" 
    :clear-on-select="false" :preserve-search="true" 
    placeholder="Pick some" label="name" track-by="name" :preselect-first="true">
    </multiselect>
  <pre class="language-json"><code>{{ value  }}</code></pre>
  </div>
</template>

<script>
  
  import Multiselect from 'vue-multiselect'

  export default {
    // OR register locally
    components: { Multiselect },
    data () {
      return {
        value: [],
        options: [
        { name: 'Vue.js', language: 'JavaScript' },
        { name: 'Adonis', language: 'JavaScript' },
        { name: 'Rails', language: 'Ruby' },
        { name: 'Sinatra', language: 'Ruby' },
        { name: 'Laravel', language: 'PHP' },
        { name: 'Phoenix', language: 'Elixir' }
      ]
      }
    }
  }
</script>

<!-- New step!
     Add Multiselect CSS. Can be added as a static asset or inside a component. -->


<style>
  
</style>