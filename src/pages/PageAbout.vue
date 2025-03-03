<template>
  <q-page class="q-pa-lg text-justify text-primary-12 text-weight-medium">
    <div class="row q-col-gutter-x-xl justify-between">
      <div class="col-12 col-md-5">
        <p>
          O Sindicato dos Psicólogos do Estado do Ceará - PSINDCE - é uma organização de base estadual que representa os
          interesses da categoria e da sociedade por serviços de qualidade à população. O Sindicato procura lutar por
          melhores salários, remuneração condizente com sua formação e por condições adequadas de trabalho em amplo
          sentido:
          da jornada às condições que permitam um exercício técnico e ético da profissão. Porém, não se restringe a uma
          luta
          corporativista, pois entende que a luta sindical deve abraçar melhores condições de trabalho para toda a
          classe
          trabalhadora.
        </p>
        <p>
          Para este fim, o PSINDCE está filiado à Confederação Nacional dos Trabalhadores em Seguridade Social (CNTSS),
          Federação Estadual dos Trabalhadores em Seguridade Social (FETSS), Federação Nacional dos Psicólogos (FENAPSI)
          e
          Central Única dos Trabalhadores (CUT-CE).
        </p>
        <p>
          O PSINDCE entende que a luta sindical clássica de corte corporativo tem de estar articulada aos interesses
          mais
          amplos da sociedade, como a busca pela democracia universal e participativa, a conquista de direitos que
          garantam
          a justiça social amparados por amplas políticas públicas de Estado e a luta contra todas as formas de
          preconceito,
          discriminação e violência que ofendam a dignidade humana.
        </p>
      </div>
      <!-- <div class="col-7 flex flex-center">
        <q-img src="/img/BGW-007.png" spinner-color="primary" spinner-size="82px" fit="cover" width="60%"
          class="opacity-85 shadow-5 rounded-1" />
      </div> -->
      <!-- <div class="col-12 q-py-xl"></div>
      <div class="col-5 flex flex-center">
        <q-img src="/img/BGW-009.png" spinner-color="primary" spinner-size="82px" fit="cover" width="60%"
          class="opacity-85 shadow-5 rounded-1" />
      </div> -->

      <div class="col-12 col-md-7">
        <div class="full-width text-bold q-mb-md">DIRETORIA ATUAL</div>
        <div class="row q-col-gutter-md">
          <div class="col-12 col-md-6 full-height" v-for="(member, index) in members" :key="index">
            <q-card class="gradient-bg1">
              <q-card-section horizontal>
                <q-img
                  :src="`/img/Id/${member.image}`"
                  spinner-color="primary"
                  :spinner-size="spinnerSize"
                  class=""
                  :width="'80px'"
                />
                <q-card-section class="col-grow col-md-8">
                  <div class="c-name text-left">{{ member.name }}</div>
                  <div class="c-crps text-left">{{ member.crp }}</div>
                  <div class="c-role text-left">{{ member.role }}</div>
                </q-card-section>
              </q-card-section>

            </q-card>
          </div>
        </div>

        <div class="full-width text-bold q-mb-md q-mt-xl">ADJUNTOS E ADJUNTAS</div>
        <div class="row q-col-gutter-md">
          <div class="col-12 col-md-6 full-height" v-for="(adjunct, index) in adjuncts" :key="index">
            <q-card class="gradient-bg1">
              <q-card-section horizontal>
                <q-img
                  :src="`/img/Id/${adjunct.image}`"
                  spinner-color="primary"
                  :spinner-size="spinnerSize"
                  class=""
                  :width="'80px'"
                />
                <q-card-section class="col-grow col-md-8">
                  <div class="c-name text-left">{{ adjunct.name }}</div>
                  <div class="c-crps text-left">{{ adjunct.crp }}</div>
                  <div class="c-role text-left">{{ adjunct.role }}</div>
                </q-card-section>
              </q-card-section>
            </q-card>
          </div>
        </div>

        <div class="full-width text-bold q-mb-md q-mt-xl">CONSELHO FISCAL</div>
        <div class="row q-col-gutter-md">
          <div class="col-12 col-md-6 full-height" v-for="(council, index) in councilMembers" :key="index">
            <q-card class="gradient-bg1">
              <q-card-section horizontal>
                <q-img
                  :src="`/img/Id/${council.image}`"
                  spinner-color="primary"
                  :spinner-size="spinnerSize"
                  class=""
                  :width="'80px'"
                />
                <q-card-section class="col-grow col-md-8">
                  <div class="c-name text-left">{{ council.name }}</div>
                  <div class="c-crps text-left">{{ council.crp }}</div>
                </q-card-section>
              </q-card-section>
            </q-card>
          </div>
        </div>

        <div class="full-width text-bold q-mb-md q-mt-xl">SUPLENTE</div>
        <div class="row q-col-gutter-md">
          <div class="col-12 col-md-6 full-height" v-for="(substitute, index) in substitutes" :key="index">
            <q-card class="gradient-bg1">
              <q-card-section horizontal>
                <q-img
                  :src="`/img/Id/${substitute.image}`"
                  spinner-color="primary"
                  :spinner-size="spinnerSize"
                  class=""
                  :width="'80px'"
                />
                <q-card-section class="col-grow col-md-8">
                  <div class="c-name text-left">{{ substitute.name }}</div>
                  <div class="c-crps text-left">{{ substitute.crp }}</div>
                </q-card-section>
              </q-card-section>
            </q-card>
          </div>
        </div>

      </div>
    </div>
  </q-page>
</template>

<script setup>
  import { ref } from 'vue'

  defineOptions({
    name: 'IndexPage'
  });

  const spinnerSize = ref('32px')

  const members = ref([
    {
      name: 'Claudemi Campos',
      crp: '(CRP 11/14061)',
      role: 'Coordenação Geral',
      image: 'Claudemi.JPG'
    },
    {
      name: 'Fernando Pinto',
      crp: '(CRP 11/11607)',
      role: 'Coordenação Administrativa',
      image: 'Fernando.JPG'
    },
    {
      name: 'Karen Crisostomo',
      crp: '(CRP 11/13272)',
      role: 'Coordenação de Comunicação',
      image: 'Karen.PNG'
    },
    {
      name: 'Jannayna Queiroz',
      crp: '(CRP 11/05087)',
      role: 'Coordenação de Formação',
      image: 'Jannayna.JPG'
    },
    {
      name: 'Jorge Luiz',
      crp: '(CRP 11/08046)',
      role: 'Coordenação de Políticas',
      image: 'Jorge_Luiz.JPG'
    }
  ])

  const adjuncts = ref([
    {
      name: 'Helena Oliveira',
      crp: '(CRP 11/14909)',
      role: 'Coordenação Geral',
      image: 'Fca_Helena.JPG'
    },
    {
      name: 'Rozelir Lima',
      crp: '(CRP 11/18978)',
      role: 'Coordenação Administrativa',
      image: 'Rozelir.JPG'
    },
    {
      name: 'Elisângela Chagas',
      crp: '(CRP 11/10712)',
      role: 'Coordenação de Comunicação',
      image: 'Elisangela.PNG'
    },
    {
      name: 'Gisele Peixoto',
      crp: '(CRP 11/2194)',
      role: 'Coordenação de Formação',
      image: 'Gisele.PNG'
    },
    {
      name: 'Walesson Castro',
      crp: '(CRP 11/13625)',
      role: 'Coordenação de Políticas Públicas',
      image: 'Ant_Walesson.PNG'
    }
  ])

  const councilMembers = ref([
    {
      name: 'Meire Viana',
      crp: '(CRP 11/00919)',
      image: 'Meire.PNG'
    },
    {
      name: 'Ivan Nogueira',
      crp: '(CRP 11/15086)',
      image: 'Ivan.PNG'
    },
    {
      name: 'Fúlvio Robert',
      crp: '(CRP 11/03494)',
      image: ''
    }
  ])

  const substitutes = ref([
    {
      name: 'Priscila Araújo',
      crp: '(CRP 11/07998)',
      image: ''
    }
  ])
</script>

<style lang="scss">
  .text-shadow1 {
    text-shadow: none;
    // text-shadow: 1px 1px 2px #0003;
  }

  .td1 {
    line-height: .5em;
  }

  .td2 {
    font-size: small;
    line-height: 1.75em;
    margin-bottom: 10px;
  }

  .td3 {
    font-size: medium;
    line-height: 1.75em;
  }

  .c-name {
    line-height: .75em;
  }

  .c-crps {
    font-size: small;
    // line-height: 1.75em;
    margin-bottom: 0px;
  }

  .c-role {
    font-size: medium;
    line-height: 1.05em;
  }

  $green1: rgba($primary, 0.25);
  $red1: rgba($negative, 0.25);

  .gradient-bg1 {
    background: linear-gradient(-30deg, $green1, $red1);
  }
</style>
