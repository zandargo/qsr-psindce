<template>
  <q-scroll-area ref="scrollAreaRef" class="layout-scroll" :thumb-style="thumbStyle">
    <q-layout view="hHh Lpr fFf">
      <q-header class="q-pb-sm bg-header">
        <q-toolbar>
          <q-btn flat dense round :icon="matMenu" aria-label="Menu" @click="toggleLeftDrawer" class="lt-md" />

          <q-toolbar-title class="q-py-sm row items-center no-wrap">
            <q-img src="img/icons/Logo-double-02b1.svg" spinner-color="primary" spinner-size="20px" class="brand-logo q-mr-sm" />
            <span class="text-h5 text-grey-4 text-bold text-italic text-shadow brand-name">
              PSINDCE
            </span>
          </q-toolbar-title>

          <q-tabs dense class="gt-sm text-green-13" indicator-color="white" active-class="text-white" align="justify">
            <q-route-tab label="Início" to="/" />
            <q-route-tab label="Sobre" to="/sobre" />
            <q-route-tab label="História" to="/historia" />
            <q-route-tab label="Sindicalize-se!" to="/afiliese" />
          </q-tabs>

          <!-- <div>Quasar v{{ $q.version }}</div> -->
        </q-toolbar>
      </q-header>

      <q-drawer v-model="leftDrawerOpen" bordered behavior="mobile" class="lt-md app-drawer text-grey-3">
        <q-list class="q-pa-sm">
          <q-item clickable v-close-popup to="/" exact active-class="drawer-item-active" class="q-mb-xs rounded-borders drawer-item">
            <q-item-section>Início</q-item-section>
          </q-item>
          <q-item clickable v-close-popup to="/sobre" active-class="drawer-item-active" class="q-mb-xs rounded-borders drawer-item">
            <q-item-section>Sobre</q-item-section>
          </q-item>
          <q-item clickable v-close-popup to="/historia" active-class="drawer-item-active" class="q-mb-xs rounded-borders drawer-item">
            <q-item-section>História</q-item-section>
          </q-item>
          <q-item clickable v-close-popup to="/afiliese" active-class="drawer-item-active" class="rounded-borders drawer-item">
            <q-item-section>Sindicalize-se!</q-item-section>
          </q-item>
        </q-list>
      </q-drawer>

      <q-page-container class="bg-image 6bg-teal-1">
        <router-view />
        <Footer />
      </q-page-container>

      <!-- <q-footer elevated class="" style="height: 32px;">
        <q-toolbar class="bg-py-none column items-start">
          <div class="full-width">
            Footer
          </div>
        </q-toolbar>
      </q-footer> -->

    </q-layout>

    <ButtonContact class="fixed-bottom-right" />
  </q-scroll-area>
</template>

<script setup>
  import { ref, watch } from 'vue'
  import { useRoute } from 'vue-router'
  import { useQuasar, getCssVar } from 'quasar'
  import ButtonContact from 'components/atoms/buttonContact.vue'
  import Footer from 'components/Footer.vue'
  import { matMenu } from 'assets/icons'

  const scrollAreaRef = ref(null)
  const route = useRoute()

  watch(() => route.path, () => {
    scrollAreaRef.value?.setScrollPosition('vertical', 0)
  })

  defineOptions({
    name: 'MainLayout'
  })

  const leftDrawerOpen = ref(false)

  function toggleLeftDrawer() {
    leftDrawerOpen.value = !leftDrawerOpen.value
  }

  const thumbStyle = {
    right: '8px',
    width: '12px',
    borderRadius: '8px',
    backgroundColor: getCssVar('primary'),
    opacity: 0.9
  }
</script>

<style lang="scss">
  @use "sass:color";

  .text-shadow {
    text-shadow: 2px 2px 8px #fff7;
  }

  .layout-scroll {
    height: 100svh;
  }

  .brand-logo {
    width: 64px;
    filter: brightness(1.25);
  }

  @media (max-width: 599px) {
    .brand-logo {
      width: 48px;
    }

    .brand-name {
      font-size: 1.25rem;
    }

    .q-toolbar {
      min-height: 56px;
    }
  }

  .text-shadow-tab {
    text-shadow: 1px 1px 4px #3f36;
  }

  .active-tab {
    // color: color.adjust($red-5, $red: 100%);
    // color: red;
    color: white;
    font-weight: 900;
    font-size: 32px !important;
  }

  .bg-header {
    // background: linear-gradient(180deg,
    //     color.adjust($teal-8, $alpha: -0.1, $whiteness: 20% ) 10%,
    //     color.adjust($teal-8, $alpha: -0.1, $whiteness: 10% ) 40%,
    //     color.adjust($teal-8, $alpha: -0.1, $blackness: 05% ) 50%,
    //     color.adjust($teal-8, $alpha: -0.1, $blackness: 10% ) 80%,
    //     color.adjust($dark, $alpha: -0.2) 81%,
    //     color.adjust($dark, $alpha: -0.5) 81%,
    //     color.adjust($dark, $alpha: -1.0) 99%,
    //   );
    background: linear-gradient(180deg,
        color.adjust($teal-9, $alpha: -0.1, $whiteness: 10%) 0%,
        color.adjust($teal-9, $alpha: -0.1, $blackness: 10%) 80%,
        color.adjust($dark, $alpha: -0.2) 80%,
        color.adjust($dark, $alpha: -0.5) 81%,
        color.adjust($dark, $alpha: -1.0) 99%,
      )
  }

  .app-drawer {
    background: linear-gradient(165deg,
        color.adjust($teal-9, $whiteness: 8%) 0%,
        color.adjust($dark, $blackness: 4%) 72%,
        color.adjust($dark-page, $blackness: 2%) 100%) !important;
    border-right: 1px solid color.adjust($primary, $alpha: -0.55) !important;
    font-family: inherit;
  }

  .app-drawer .q-list {
    padding: 18px 12px;
  }

  .drawer-item {
    min-height: 48px;
    padding: 0 16px;
    color: color.adjust($grey-4, $alpha: -0.08);
    font-size: 1rem;
    font-weight: 600;
    letter-spacing: 0.01em;
    transition: background-color 180ms ease, color 180ms ease, transform 180ms ease;
  }

  .drawer-item:hover {
    background: color.adjust($secondary, $alpha: -0.82);
    color: $grey-2;
    transform: translateX(3px);
  }

  .drawer-item-active {
    background: linear-gradient(90deg,
        color.adjust($primary, $alpha: -0.08) 0%,
        color.adjust($secondary, $alpha: -0.32) 100%) !important;
    color: white !important;
    box-shadow: inset 3px 0 0 $warning, 0 5px 14px color.adjust($dark, $alpha: -0.35);
    font-weight: 700;
  }

</style>
