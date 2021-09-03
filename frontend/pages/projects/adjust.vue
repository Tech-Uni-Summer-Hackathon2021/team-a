<template>
  <div>
    <div class="none">
      <div class="whole">
        <div class="section">
          <h1 class="form">日程調整フォーム</h1>
          <br />
          <h3 class="name">あなたの名前を教えてください</h3>
        </div>
        <div class="section">
          <div class="name">
            <label for="name1">名前</label>
            <input type="text" name="name" class="nameIn" />
          </div>
          <br /><br /><br />
          <div>
            <MyButton>完了</MyButton>
          </div>
        </div>
      </div>
    </div>
    <div class="place">
    <h3>集計結果が出ました！</h3>
    <a class="url" href=""
      >集計結果を表示</a
    >
    </div>
  </div>
</template>

<script>
import MyButton from '@/components/MyButton.vue'
export default {
  components: {
    MyButton,
  },
}
</script>
<style scoped>
* {
  color: #666666;
  text-align: center;
}
.whole {
  color: #ffffff;
  width: 1440px;
  height: 1024px;
}
.section {
  width: 818px;
  height: 300px;
}
.form {
  color: #47525e;
  font-family: Lato;
  font-size: 40px;
  line-height: 52px;
}
.name {
  color: #47525e;
  font-family: Lato;
  font-size: 40px;
  line-height: 52px;
}
.nameIn {
  background-color: rgba(19, 206, 102, 0);
  border: 5px solid #666666;
  width: 472px;
  height: 44px;
}
.none {
  display: none;
}
h3{
font-size: 40px;
  background-repeat: no-repeat;
  background-position: left bottom;
  transition: background-size 300ms ease;
}
.place {
  margin:30% 0%;
}
.url{
  font-size: 25px;
}
</style>