<template>
  <div class="container">
    <h1>イベントの内容を教えて下さい</h1>
    <h2>遊び（1日の予定を集計します）</h2>
    <h2>夜ご飯（18時以降の予定を集めます）</h2>
    <!-- デフォルトのボタン表示はこれ→<MyButton/>-->
    <!--<MyButton back_color="#FD99A1">次へ</MyButton>-->
    <!-- ↑背景色と中の文字を設定できる-->
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