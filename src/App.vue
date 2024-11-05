<template>
  <router-view />
</template>

<script setup>
  import { useQuasar } from 'quasar'

  const myIcons = {
    'app:callcenter': 'img:/icons/call-center-2-svgrepo-com.svg',
  }

  const $q = useQuasar()

  $q.iconMapFn = (iconName) => {
    const icon = myIcons[iconName]
    if (icon !== undefined) {
      return { icon }
    }
  }

  defineOptions({
    name: 'App'
  });
</script>
