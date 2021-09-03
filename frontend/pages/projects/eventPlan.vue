<template>
  <div class="container">
    <h1>具体的なイベント案、<br>
    または店内の候補を挙げてください</h1>
    <p>
      提出された候補の中から、ランダムで決定します<br />
      希望の選択肢が既に挙げられている場合も、決定する確率を上げるため同じ内容のものを入力してください。
    </p>
    <h2>現在、挙がっている案</h2>
    <input type="text" class="textbox" /><br /><br /><br /><br />
    <div class="inline">
      <input type="text" class="text" value="案を入力してください" />
      <MyButton class="size">追加</MyButton>
    </div><br><br><br>
    <MyButton>→</MyButton>
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

<style>
* {
  color: #666666;
  text-align: center;
}
h1 {
  font-size: 40px;
  background: linear-gradient(90deg, red, blue);
  background-size: 0% 3px;
  background-repeat: no-repeat;
  background-position: left bottom;
  transition: background-size 300ms ease;
  text-decoration: none;
  font-weight: 900;
}
h1:hover {
  background-size: 100% 3px;
}
h2 {
  font-size: 36px;
}

.textbox {
  background-color: #eeeeee;
  border: 3px solid #666666;
  width: 100%;
  height: 200px;
}
.text {
  background-color: #eeeeee;
  border: 3px solid #666666;
  width: 80%;
  height: 60px;
}
.inline{
  display: flex;
  justify-content: center;
  }
  .size{
    height:60px;
    width:100px;
    margin-left: 10px;
    font-size: 20px;
  }
</style>
