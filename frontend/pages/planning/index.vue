<template lang="pug">
v-app
  v-main
    v-row.bg
      v-col.text-center 
        p.title イベント内容を教えて下さい {{posts.playeat}}
        v-btn(@click="send") 送信
        v-row
      //-     a.title(@click="toPlay") 遊び（1日の予定を集計します）
      //-     a.title(@click="toEat") 夜ご飯（18時以降のの予定を集計します）
      //- v-col(cols="12" md="4")
</template>
<script>
export default {
  components: {},
  layout: 'simple-layout',
  data: () => {
    return {
      posts: [],
    }
  },
  computed: {},
  mounted() {
    this.fetchContents()
  },
  methods: {
    fetchContents() {
      const url = '/allplans/1/edit'
      this.$axios
        .get(url)
        .then((res) => {
          this.posts = res.data
          console.log(this.posts)
          console.log(`データ送れたよーー！！:::${res.data.playeat}`)
        })
        .catch(() => {
          // リクエスト失敗時の処理
        })
    },
    toPlay() {
      this.$router.push('/projects/adjust')
    },
    toEat() {
      this.$router.push('/projects/adjust')
    },
    send() {
      const url = '/allplans/1/edit'
      this.$axios
        .put(url, { playeat: '遊び' })
        .then((res) => {
          this.posts = res.data
          console.log(this.posts)
          console.log(`データ送れたよーー！！:::${res.data.playeat}`)
        })
        .catch(() => {
          // リクエスト失敗時の処理
        })
    },
  },
}
</script>

<style scoped>
.bg {
  background-color: lightgrey;
  height: 100vh;
}
.title {
  color: black;
  font-size: 5vw;
  font-weight: bold;
  padding: 100px;
  text-underline-position: below;
}
</style>
