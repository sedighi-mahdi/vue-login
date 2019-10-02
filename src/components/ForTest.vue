<template>
  <div>
    <table class="table table-striped">
        <tr v-for="(usr,index) in users" :key="usr.id">
            <td>{{index}}</td>
            <td>{{usr.fname}}</td>
            <td>{{usr.lname}}</td>
        </tr>
    </table>
  </div>
</template>

<script>
export default {
  name: "for-test",
  data() {
    return {
      users:[
          {
              id:1,
              fname:"ali",
              lname:"ali nia"
          },
          {
              id:2,
              fname:"mahdi",
              lname:"sedighi"
          },
          {
              id:3,
              fname:"zahra",
              lname:"akbari"
          }
      ]
    };
  }
};
</script>

<style scoped></style>