<template>
  <header class="header">
    <div class="container-fluid">
        <div class="header-container">
            <div class="row">
                <div class="col-sm-8">
                    <div class="logo pull-right">
                        <div class="pull-right">
                            <img width="64px" height="64px" src="/img/internet.png" alt="">
                        </div>
                        <div class="logo-text pull-right text-center">
                            <h1>{{title}}</h1>
                            <p>{{subtitle}}</p>
                        </div>
                    </div>
                </div>
                <div class="col-sm-4">
                    <ul class="user-menu">
                        <li><a href="#" title="خروج از سیستم" class="log-out text-danger"><i class="fa fa-sign-out"></i></a></li>
                        <li style="position: relative" class="user-profile">
                            <a title="اطلاعات کاربری" class="text-primary"><i  class="fa fa-user-o "></i></a>
                            <user-info-model />
                        </li>
                        <li><a href="#" title="صفحه اصلی" class="home text-success"><i   class="fa fa-home "></i></a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</header>
</template>

<script>
import UserInfoModel from './UserInfoModel.vue'
export default {
  name: "header",
  components:{
      UserInfoModel
  },
  data() {
    return {
       title:"سامانه آزمایشی",
       subtitle:"واحد فناوری اطلاعات"
    };
  }
};
</script>

<style scoped></style>