<template lang="pug">
  v-row(
    :style="`background-color:${color}`"
    style="margin:0;padding-top:1rem;padding-bottom:1rem;"
  )
    v-container()
      v-layout(
        column
        justify-center
      )
        v-row(
          align="center"
          justify="center"
        )
          v-col(col="12")
            slot
</template>
<script>
export default {
  props: {
    color: { type: String, default: '' },
  },
}
</script>
<style></style>
