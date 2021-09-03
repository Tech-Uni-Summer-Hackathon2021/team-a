<template>
  <div>
    <div class="hover">集計が完了しました！</div>
    <p class="makeGroup">
      以下のメンバーでグループを作成し、各自詳細を決定してください
    </p>
    <br />
    <br />
    <br />
    <h3 class="date">日程：</h3>
    <h3 class="date">すること：</h3>
    <h3 class="date">参加者：</h3>
    <div class="box">
      <h4>残りのTodo</h4>
      <p>集合時間の決定</p>
      <p>集合場所決定</p>
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
.hover {
  font-size: 40px;
  background: linear-gradient(90deg, red, blue);
  background-size: 0% 3px;
  background-repeat: no-repeat;
  background-position: left bottom;
  transition: background-size 300ms ease;
  text-decoration: none;
  font-weight: 900;
}
.hover:hover {
  background-size: 100% 3px;
}
.makeGroup {
  color: #47525e;
  font-family: Lato;
  font-size: 26px;
}
.date {
  color: #47525e;
  font-family: Lato;
  font-size: 36px;
  line-height: 46px;
}
.box {
  background-color: rgba(19, 206, 102, 0);
  border: 3px solid #666666;
  margin: auto;
  width: 30%;
  height: 40%;
}
</style>
