<template>
    <div class="container">
    <h1>具体的なイベント案、または店内の候補を挙げてください</h1>
    <p>提出された候補の中から、ランダムで決定します<br>
    希望の選択肢が既に挙げられている場合も、決定する確率を上げるため同じ内容のものを入力してください。</p>
    <h2>現在挙がっている案</h2>
    <div></div>
    <div></div>
    <MyButton>追加</MyButton>
    <MyButton>→</MyButton>
  </div>
</template>
<script>
import MyButton from "@/components/MyButton.vue";
export default {
  components: {
    MyButton
  }
};
</script>
<style>
    * {
    color:#666666;
    text-align:center;
   }
    h1{
        font-size:40px;
        background: linear-gradient(transparent 50%, #FD99A1  50%);
    }
    h2{
        font-size:36px; 
    }
</style>