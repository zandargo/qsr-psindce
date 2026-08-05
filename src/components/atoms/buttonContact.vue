<template>
  <div>
    <q-fab direction="up" color="red-9" class="q-ma-lg" hide-icon padding="xs xs md none">
      <template v-slot:label="{ opened }">
        <q-icon :class="{ 'example-fab-animate--hover': opened !== true }" name="support_agent" size="2.5em" />
      </template>

      <!--//* LOCALIZAÇÃO -->
      <q-fab-action @click="onClickButton('https://maps.app.goo.gl/gZ5P5Pv2Yqi8wiAy7', '_blank')" color="primary" icon="fa-solid fa-map-location-dot" />

      <!--//* EMAIL -->
      <q-fab-action @click="onClickButton('mailto:psindce@gmail.com', '_blank')" color="primary" icon="mail" />

      <!--//* WHATSAPP -->
      <q-fab-action @click="onClickButton('https://wa.me/5585994201310', '_blank')" color="none" class="q-pa-none">
        <template v-slot:icon>
          <q-img src="img/icons/whatsapp-logo.svg" spinner-color="white" spinner-size="2em" style="width: 2.85em" />
        </template>
      </q-fab-action>

      <!--//* TWITTER -->
      <q-fab-action @click="onClickButton('https://x.com/psindce', '_blank')" color="none" class="q-pa-none">
        <template v-slot:icon>
          <q-img src="img/icons/X_Logo.svg" spinner-color="white" spinner-size="2em" style="width: 2.5em" />
        </template>
      </q-fab-action>

      <!--//* INSTAGRAM -->
      <q-fab-action @click="onClickButton('https://www.instagram.com/psindce_/', '_blank')" color="none" class="q-pa-none">
        <template v-slot:icon>
          <q-img src="img/icons/instagram.svg" spinner-color="white" spinner-size="2em" style="width: 3.15em" />
        </template>
      </q-fab-action>

      <!--//* FACEBOOK -->
      <q-fab-action @click="onClickButton('https://www.facebook.com/psindce', '_blank')" color="none" class="q-pa-none">
        <template v-slot:icon>
          <q-img src="img/icons/facebook.svg" spinner-color="white" spinner-size="2em" style="width: 2.85em" />
        </template>
      </q-fab-action>


    </q-fab>

  </div>
</template>

<script setup>

  function onClickButton(link, target) {
    window.open(link, target)
  }

</script>

<style lang="scss" scoped>
  .invert-color {
    filter: invert(0.75);
  }

  .shadow-05 {
    box-shadow: 14px 14px 16px rgba(0, 0, 0, 0.06),
      inset 4px 4px 4px #0006 !important;
  }

</style>
