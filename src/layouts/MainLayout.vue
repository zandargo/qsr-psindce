<template>
  <q-scroll-area ref="scrollAreaRef" style="height: calc(100svh)" :thumb-style="thumbStyle">
    <q-layout view="hHh Lpr fFf">
      <q-header class="q-pb-sm bg-header">
        <q-toolbar>
          <!-- <q-btn
            flat
            dense
            round
            icon="menu"
            aria-label="Menu"
            @click="toggleLeftDrawer"
          /> -->

          <q-toolbar-title class="q-py-sm row items-center">
            <q-img src="icons/Logo-double-02b1.svg" spinner-color="primary" spinner-size="20px"
              style="width: 64px; filter:brightness(1.25)" class="q-ml-lg" />
            <span class="text-h5 text-grey-4 text-bold text-italic text-shadow">
              PSINDCE
            </span>
          </q-toolbar-title>

          <q-space />

          <!-- <q-tabs v-model="tab" dense class="text-grey-1" active-color="green-5" indicator-color="primary"
            align="justify" narrow-indicator active-class="">
            <q-tab name="sobre" label="Sobre" />
            <q-tab name="historia" label="História" />
            <q-tab name="sindicalize" label="Sindicalize-se!" />
          </q-tabs> -->
          <q-tabs dense class="text-green-13" indicator-color="white" active-class="text-white" align="justify">
            <!-- narrow-indicator -->
            <!-- active-bg-color="red-2" -->
            <q-route-tab label="Início" to="/" />
            <q-route-tab label="Sobre" to="/sobre" />
            <q-route-tab label="História" to="/historia" />
            <q-route-tab label="Sindicalize-se!" to="/afiliese" />
          </q-tabs>

          <!-- <div>Quasar v{{ $q.version }}</div> -->
        </q-toolbar>
      </q-header>

      <q-drawer v-model="leftDrawerOpen">
        <q-list>
          <q-item-label header>
            Essential Links
          </q-item-label>

          <EssentialLink v-for="link in linksList" :key="link.title" v-bind="link" />
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
  import EssentialLink from 'components/EssentialLink.vue'
  import { useQuasar, getCssVar } from 'quasar'
  import ButtonContact from 'components/atoms/buttonContact.vue'
  import Footer from 'components/Footer.vue'

  const tab = ref('sobre')
  const scrollAreaRef = ref(null)
  const route = useRoute()

  watch(() => route.path, () => {
    scrollAreaRef.value?.setScrollPosition('vertical', 0)
  })

  defineOptions({
    name: 'MainLayout'
  })

  const linksList = [
    {
      title: 'Docs',
      caption: 'quasar.dev',
      icon: 'school',
      link: 'https://quasar.dev'
    },
  ]

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

</style>
