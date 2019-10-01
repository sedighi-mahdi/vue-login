<template>
  <div id="userInfoModal">
    <div class="us-header bg-primary">
      <h5 style="line-height: 30px;">مشخصات کاربری</h5>
    </div>
    <div class="us-body">
      <div class="row mb-10">
        <div class="col-sm-4">کد کاربری:</div>
        <div class="col-sm-8">
          <span id="usUserName">{{userName}}</span>
        </div>
      </div>

      <div class="row mb-10">
        <div class="col-sm-4">نام کاربری:</div>
        <div class="col-sm-8">
          <span id="usUserName">{{fname}}</span>
        </div>
      </div>

      <div class="row mb-10">
       
        <div class="col-sm-8">
          <button class="btn btn-primary ml-5" onclick="showchange();">
            <i class="fa fa-save ml-5"></i>تغییر رمز
          </button>
        </div>
      </div>

    </div>
  </div>
</template>

<script>
export default {
  name: "user-info-model",
  data() {
    return {
      userName: "user 1",
      fname: "mahdi sedigh"
    };
  }
};
</script>

<style scoped></style>