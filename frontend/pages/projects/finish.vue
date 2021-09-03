<template>
  <div>
    <div class="none">
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
      <br />
      <div class="box">
        <h4>残りのTodo</h4>
        <p>
          ・集合時間の決定<br />
          ・集合場所決定
        </p>
      </div>
      <Mybutton>完了</Mybutton>
    </div>
    <div class="container">
      <h2>回答ありがとうございました。期限までお待ち下さい。</h2>
    </div>
  </div>
</template>

<script>
// import MyButton from "@/components/MyButton.vue";
// export default {
//   components: {
//     MyButton
//   }
// };
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
h4 {
  font-size: 25px;
}
p {
  font-size: 20px;
}
.none {
  display: none;
}
h2 {
  color: #47525e;
  font-family: Lato;
  font-size: 40px;
  line-height: 52px;
  text-align: center;
  text-decoration: underline;
  margin: 30% 10%;
}
</style>
