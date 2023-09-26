<script setup lang="ts">
import { NMessageProvider } from 'naive-ui'
import HomeView from './HomeView.vue';

console.log('App.vue loaded')

</script>

<template>
  <NMessageProvider>
    <HomeView />
  </NMessageProvider>
</template>
