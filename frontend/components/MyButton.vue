<template>
  <a
    class="MyButton"
    :style="{ 'background-color': back_color, color: fore_color }"
    :class="{ left_arrow, right_arrow }"
    ><slot>ボタン</slot></a
  >
  <!-- ボタン表示(デフォルト）は各ページのボタン出したい部分にこれ書くだけ→<MyButton/>-->
  <!--<MyButton back_color="#FD99A1">次へ</MyButton>-->
  <!-- ↑背景色と中の文字を設定できる-->
</template>
<script>
export default {
  props: {
    back_color: {
      type: String,
      default: '#666666',
    },
    fore_color: {
      type: String,
      default: '#FFFFFF',
    },
  },
}
</script>
<style scoped>
.MyButton {
  display: inline-block;
  border-radius: 5px;
  box-shadow: 0 0.2em 0.5em rgba(0, 0, 0, 0.2);
  padding: 2.5% 14%;
  font-weight: bold;
  text-decoration: none;
  font-size: 36px;
  text-align: center;
}
/*使わんと思うけど一応おいとく。矢印をボタンに追加できる機能 */
.MyButton.left_arrow {
  padding-left: 0;
}
.MyButton.left_arrow::before {
  content: '';
  padding-right: 1em;
}
.MyButton.right_arrow {
  padding-right: 0;
}
.MyButton.right_arrow::after {
  padding-left: 1em;
  content: '〉';
}
/*<無効な <input> のとき、ボタンを透明度50％に -->*/
input:disabled {
  opacity: 0.5;
}
</style>
