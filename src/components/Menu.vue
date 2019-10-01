<template>
  <div id="menu-table">
    <!-- ...در صورتی که لیست فاقد عنصر باشد در خروجی این تگ چاپ می شود... -->
    <p v-if="menu_list.length < 1" class="empty-table">No employees</p>
    <!-- ...اگر در وضعیت ویرایش باشد از شی  ورودی استفاده می شود... -->
    <div class="main-menu">
      <div class="mnu-group" v-for="men in menu_list" :key="men.id">
        <div class="head">
          <i class="fa fa-list-alt ml-5"></i>
          <span>{{men.menu_title}}</span>
        </div>
        <ul>
          <li v-for="smen in men.subMenus" :key="smen.id">
            <a target="_self">
              <i class="fa fa-hand-o-left ml-5"></i>
              {{smen.title}}
            </a>
          </li>
        </ul>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: "menu1",
  data() {
    return {
      menu_list: [
        {
          id: 1,
          menu_title: "منوی یک",
          subMenus: [
            { id: 1, title: "فعالیت یک" },
            { id: 2, title: "فعالیت دو" },
            { id: 3, title: "فعالیت سه" }
          ]
        },
        {
          id: 2,
          menu_title: "منوی دو",
          subMenus: [
            { id: 1, title: "فعالیت یک" },
            { id: 2, title: "فعالیت دو" },
            { id: 3, title: "فعالیت سه" }
          ]
        }
      ]
    };
  }
};
</script>

<style scoped></style>