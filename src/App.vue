<template>
  <div>
    <router-view v-slot="{ Component }" :key="route.path">
      <keep-alive>
        <component :is="Component" v-if="route.meta.keepAlive" />
      </keep-alive>
      <component :is="Component" v-if="!route.meta.keepAlive" />
    </router-view>
  </div>
</template>
<script lang="ts" setup>
import { useRoute } from 'vue-router'
const route = useRoute()
</script>
