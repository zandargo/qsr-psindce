<template>
  <q-page class="text-primary-12">

    <q-parallax :height="valHeight" :speed="1">
      <template v-slot:media>
        <img src="/img/BGW-002.png" class="opacity-45" position="100% 100%" style="bottom: -48% !important;" />
      </template>

      <template v-slot:content="scope">
        <div class="absolute column items-center">
          <div class="row no-wrap items-center">
            <img src="/icons/Logo-double-02b1.svg" style="width: 120px;" class="">
            <div class="text-h3 text-white text-center text-bold text-italic text-shadow1">
              PSINDCE
            </div>
          </div>
          <div class="text-h5 text-white text-center text-bold text-italic text-shadow1">
            SINDICATO DOS PSICÓLOGOS <br> DO CEARÁ
          </div>

          <span style="width: 480px;" class="q-mt-xl text-bold text-justify">
            Art. 1 – O Sindicato dos Psicólogos do Ceará (PSINDCE) é uma entidade civil, com sede no endereço: Av. Edison Brasil Soares, 830 – Sala 6 - Sapiranga – Fortaleza/CE, Cep 60833-020, constituído para fins de defesa, representação legal e legítima, da categoria da categoria profissional dos psicólogos e psicólogas,
            assalariados e autônomos do estado do Ceará, tendo as seguintes características:
          </span>
        </div>
      </template>
    </q-parallax>





    <div :style="{ height: `${valHeight}px` }" class="row no-wrap items-center">

      <div class="col-6 text-justify q-px-xl text-primary-12">
        <p>
          <strong>
            Parágrafo I
          </strong>
          – É uma Entidade de representação sindical com base estadual, que poderá instituir subsedes a nível regional e municipal, cuja criação dependerá de aprovação em Assembleia nos termos deste Estatuto;
        </p>

        <p>
          <strong>
            Parágrafo II
          </strong>
          – É uma Entidade sem fins lucrativos, inexistindo, portanto, distribuição de lucros ou dividendos aos associados e participantes;
        </p>

        <p>
          <strong>
            Parágrafo III
          </strong>
          – É uma Entidade autônoma em relação aos partidos políticos, credos, instituições religiosas e ao Estado;
        </p>

        <p>
          <strong>
            Parágrafo IV
          </strong>
          – É uma entidade com duração por tempo indeterminado.
        </p>
      </div>

      <div class="col-6 flex flex-center">
        <q-img src="/img/BGW-004.png" spinner-color="primary" spinner-size="82px" fit="cover" width="420px"
          class="opacity-85 shadow-5 rounded-1" />
      </div>

    </div>





    <q-parallax :height="valHeight" :speed="1">
      <template v-slot:media>
        <img src="/img/BGW-003.png" class="opacity-45" position="100% 100%" style="bottom: -36% !important;" />
      </template>

      <template v-slot:content="scope">
        <div class="absolute row items-center">
          <div class="col-3"></div>
          <div class="col-8 text-center text-justify text-primary-12 text-weight-medium">

            <p>
              O Sindicato dos Psicólogos do Estado do Ceará - PSINDCE - é uma organização de base estadual que representa os interesses da categoria e da sociedade por serviços de qualidade à população. O Sindicato procura lutar por melhores salários, remuneração condizente com sua formação e por condições adequadas de trabalho em amplo sentido: da jornada às condições que permitam um exercício técnico e ético da profissão. Porém, não se restringe a uma luta corporativista, pois entende que a luta sindical deve abraçar melhores condições de trabalho para toda a classe trabalhadora.
            </p>

            <p>
              Para este fim, o PSINDCE está filiado à Confederação Nacional dos Trabalhadores em Seguridade Social (CNTSS), Federação Estadual dos Trabalhadores em Seguridade Social (FETSS), Federação Nacional dos Psicólogos (FENAPSI) e Central Única dos Trabalhadores (CUT-CE).
            </p>

            <p>
              O PSINDCE entende que a luta sindical clássica de corte corporativo tem de estar articulada aos interesses mais amplos da sociedade, como a busca pela democracia universal e participativa, a conquista de direitos que garantam a justiça social amparados por amplas políticas públicas de Estado e a luta contra todas as
              formas de preconceito, discriminação e violência que ofendam a dignidade humana.
            </p>


          </div>
        </div>
      </template>
    </q-parallax>





    <!-- <div
    	:style="{ height: `${valHeight}px` }"
    	class="q-pa-lg column items-center"
    >
    </div> -->

  </q-page>
</template>

<script setup>
  import { ref } from 'vue'

  defineOptions({
    name: 'IndexPage'
  });

  const valHeight = ref(600)

</script>

<style lang="scss">
  .text-shadow1 {
    text-shadow: 4px 4px 8px #000f;
  }
</style>
