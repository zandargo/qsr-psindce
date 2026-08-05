<template>
  <div class="full-width q-pt-xl row justify-center q-gutter-x-lg">
    <div class="col-12 q-mb-sm text-center">
      CONTATO
    </div>

    <q-btn v-for="(link, index) in socialLinks" :key="index" dense round flat color="none" @click="onClickButton(link.url, '_blank')" class="svg-icon">
      <q-img v-if="link.icon.includes('svg')" :src="link.icon" spinner-color="primary" spinner-size="2em" style="width: 2.25em" />
      <q-icon v-else :name="link.icon" />
      <q-tooltip transition-show="fade" transition-hide="fade" transition-duration="300" self="bottom middle" :offset="[0, 24]" class="bg-transparent text-grey-8">
        {{ link.label }}
      </q-tooltip>
    </q-btn>

    <div class="col-12 q-pa-none q-mt-xl">
      <p class="text-center text-grey-8 q-my-none">
        &copy; {{ new Date().getFullYear() }} PSINDCE. Todos os direitos reservados.
      </p>
    </div>
  </div>
</template>

<script setup>
  import { ref } from 'vue'

  const socialLinks = ref([
    {
      label: 'Facebook',
      icon: 'img/icons/o_facebook.svg',
      url: 'https://www.facebook.com/psindce',
    },
    {
      label: 'Instagram',
      icon: 'img/icons/o_instagram.svg',
      url: 'https://www.instagram.com/psindce_/',
    },
    {
      label: 'Twitter/X',
      icon: 'img/icons/o_x.svg',
      url: 'https://x.com/psindce',
    },
    {
      label: 'WhatsApp',
      icon: 'img/icons/o_whatsapp.svg',
      url: 'https://wa.me/5585994201310',
    },
    {
      label: 'Localização',
      icon: 'fa-solid fa-map-location-dot',
      url: 'https://maps.app.goo.gl/gZ5P5Pv2Yqi8wiAy7',
    },
    {
      label: 'Email',
      icon: 'mail',
      url: 'mailto:psindce@gmail.com',
    },
  ])

  function onClickButton(link, target) {
    window.open(link, target)
  }
</script>

<style lang="scss" scoped>
  .svg-icon {
    opacity: 0.75;

    &:hover {
      opacity: 1;
      transform: scale(1.25);
      transition: opacity 0.25s, transform 0.25s ease-in-out;
    }
  }
</style>
