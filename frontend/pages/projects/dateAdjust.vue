<template>
  <div>
    <div class="form">日程調整フォーム</div>
    <br />
    <div class="input">〇〇さんの予定を追加してください</div>
    <div class="container">
      <div class="radio">
        <input id="radio-1" name="radio" type="radio" checked />
        <label for="radio-1" class="radio-label">◯</label>
      </div>

      <div class="radio">
        <input id="radio-2" name="radio" type="radio" />
        <label for="radio-2" class="radio-label">×</label>
      </div>
      </div>
    </div>
</template>

<script>
export default {}
</script>

<style scoped>
* {
  color: #666666;
  text-align: center;
}

.form {
  color: #47525e;
  font-family: Lato;
  font-size: 40px;
  line-height: 52px;
}
.input {
  color: #47525e;
  font-family: Lato;
  font-size: 36px;
  line-height: 46px;
}
.container {
display: flex;
margin: 10% 50%;
font-size: 1.25em;
}

</style>
