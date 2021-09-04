<template lang="pug">
v-app
  v-main
    v-row.bg
      v-col.text-center 
        p.catchcopy smart adjust
        v-col.text-center(style="padding:400px;")
          v-btn.font-weight-bold(@click="toDashboard" dark color="grey" x-large) 予約調整URLを発行する
      v-col(cols="12" md="4")
    Section(color="#ffffff")
      h2.display-1.font-weight-bold() あの面倒なイベント企画をいつでも！どこでも！だれとでも！"samrt"に"adjust"しよう！！
    Section(color="#e79298")
      h2.display-1.font-weight-bold.white--text 今すぐ無料で始められる簡単4ステップ
      v-row
        step-card(
          v-for="(step, key) in steps" :key="key"
          :value="step"
          :num="key"
        )
    Section(color="#ffffff")
      h2.display-1.font-weight-bold どんなに面倒なイベント企画もSmart Adjustにお任せください！
    Section(color="#e79298")
      h2.display-1.font-weight-bold.white--text さっそく予定調整してみる
      v-row
        v-col.text-center()
          v-btn.font-weight-bold(@click="toDashboard" dark color="#ebb94d" rounded x-large) 予定調整URLを発行
    v-footer(
      color="white"
      padless
    )
      v-row(
        justify="center"
        no-gutters
      )
        v-btn(
          v-for="link in footerLinks"
          :key="link"
          text
          rounded
          class="my-2"
        ) {{ link }}
        v-col.text-center(
          class="py-4"
          cols="12"
        ) {{ new Date().getFullYear() }} — <strong>Smart Adjust</strong>
</template>
<script>
import Section from '~/components/top/Section'
import StepCard from '~/components/top/StepCard'
export default {
  components: {
    Section,
    StepCard,
  },
  layout: 'simple-layout',
  data() {
    return {
      message: '',
      scrollY: '',
      steps: [
        {
          title: '遊びor夜ご飯で選択！',
          description:
            '遊びなら1日、夜ご飯なら夜18時以降の予定を回答して貰います。',
          image: 'https://cdn.vuetifyjs.com/images/cards/docks.jpg',
        },
        {
          title: '日程調整フォームに回答',
          description:
            '日程調整フォーム（1ヶ月分）に名前と予定を記入し、回答してください。（発行されたフォームのリンクをコピペ、メンバーへ共有して下さい。）◯が最も多い日を調べます。',
          image: 'https://cdn.vuetifyjs.com/images/cards/docks.jpg',
        },
        {
          title: 'イベント詳細について案を回答',
          description:
            '遊びならイベント案、夜ご飯なら店名を候補選択として挙げて下さい。出た案を集計し、ランダムで詳細内容/店を決定します。',
          image: 'https://cdn.vuetifyjs.com/images/cards/docks.jpg',
        },
        {
          title: '日程、すること、メンバー決定',
          description:
            'アンケート期間終了後、イベント内容が自動で決定されます。更に細かな詳細は参加者のグループを各自で作り、柔軟に調整して下さい。',
          image: 'https://cdn.vuetifyjs.com/images/cards/docks.jpg',
        },
      ],
      footerLinks: ['ホーム', '開発チーム', '運営会社', 'お問い合わせ'],
    }
  },
  computed: {
    appBarColor() {
      return this.scrollY < 50 ? '#1e88e5' : '#ffffff00'
    },
  },
  mounted() {
    window.addEventListener('scroll', this.onScroll)
  },
  beforeDestroy() {
    window.removeEventListener('scroll', this.onScroll)
  },
  methods: {
    handleResize() {
      if (this.$refs.sharedboard) {
        this.$set(this.boardSize, 'width', this.$refs.sharedboard.clientWidth)
        this.$set(this.boardSize, 'height', this.$refs.sharedboard.clientHeight)
      }
    },
    onScroll(event) {
      this.scrollY = window.scrollY
    },
    toDashboard() {
      this.$router.push('/dashboard')
    },
  },
}
</script>

<style scoped>
.bg {
  background-image: url('assets/HeroPage.png');
  background-size: cover;
  height: 100vh;
}
.catchcopy {
  color: black;
  font-size: 5vw;
  font-weight: bold;
}
.catchcopy-sp {
  color: white;
  font-size: 7vw;
  font-weight: bold;
}
.compare-services th,
h2 {
  margin: 3rem 0px;
  text-align: center;
}
</style>
