<template>
  <div>
    <router-view :key="route.path"></router-view>
  </div>
</template>
<script lang="ts" setup>
import { useRoute } from 'vue-router'
const route = useRoute()
</script>
