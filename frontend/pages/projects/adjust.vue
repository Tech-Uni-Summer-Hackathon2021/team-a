<template>
  <div class="whole">
    <div class="section">
      <h1 class="form">日程調整フォーム</h1>
      <h3 class="name">あなたの名前を教えてください</h3>
    </div>
    <div class="name">
      <label for="name1">名前</label>
      <input type="text" name="name" class="nameIn" />
    </div>
  </div>
</template>

<script>
export default {}
</script>

<style scoped>
.whole {
  color: #ffffff;
  width: 1440px;
  height: 1024px;
}
.section {
  width: 818px;
  height: 422px;
}
.form {
  color: #47525e;
  font-family: Lato;
  font-size: 40px;
  line-height: 52px;
  text-align: left;
}
.name {
  color: #47525e;
  font-family: Lato;
  font-size: 40px;
  line-height: 52px;
  text-align: left;
}
.nameIn {
  background-color: rgba(19, 206, 102, 0);
  border: 5px solid #666666;
  width: 472px;
  height: 44px;
}
</style>
