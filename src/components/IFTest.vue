<template>
  <div>
    <div v-if="isA">{{msgA}}</div>
    <div v-else>{{msgB}}</div>
  </div>
</template>

<script>
export default {
  name: "if-test",
  data() {
    return {
      isA: false,
      msgA: "block a",
      msgB: "block b"
    };
  }
};
</script>

<style scoped></style>