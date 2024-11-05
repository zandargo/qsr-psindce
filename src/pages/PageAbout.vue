<template>
  <q-page class="text-justify text-primary-12 text-weight-medium">


    <div class="row q-px-xl q-py-md">
      <div class="col-5">
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

      <div class="col-7 flex flex-center">
        <q-img src="/img/BGW-007.png" spinner-color="primary" spinner-size="82px" fit="cover" width="60%"
          class="opacity-85 shadow-5 rounded-1" />
      </div>

      <div class="col-12 q-py-xl"></div>

      <div class="col-5 flex flex-center">
        <q-img src="/img/BGW-009.png" spinner-color="primary" spinner-size="82px" fit="cover" width="60%"
          class="opacity-85 shadow-5 rounded-1" />
      </div>

      <div class="col-7">
        <!-- <table style="width:100%">
          <tr>
            <th>Diretor(a)</th>
            <th>Coordenação</th>
          </tr>
          <tr>
            <td>Alfreds Futterkiste</td>
            <td>Maria Anders</td>
          </tr>

        </table> -->



        <div class="full-width text-bold q-mb-lg">DIRETORIA ATUAL</div>

        <table class="full-width">
          <tbody>
            <tr>
              <th>Diretor(a)</th>
              <th>Coordenação</th>
            </tr>
            <tr>
              <td>Fulvio Robert</td>
              <td>Coordenação Geral</td>
            </tr>
            <tr>
              <td>Rodrigo Meireles</td>
              <td>Coordenação de Comunicação e Imprensa</td>
            </tr>
            <tr>
              <td>Meire Viana</td>
              <td>Coordenação Administrativo-Financeira</td>
            </tr>
            <tr>
              <td>Juliemary Peixoto</td>
              <td>Coordenação de Formação e Cultura</td>
            </tr>
            <tr>
              <td>Simone Soares de Castro</td>
              <td>Coordenação de Políticas Sindicais e de Saúde
              </td>
            </tr>
            <tr class="q-pb-md">
              <td colspan="2">&nbsp;</td>
            </tr>
            <tr>
              <td>Israu Lima</td>
              <td>Diretor Adjunto</td>
            </tr>
            <tr>
              <td>Ariadyne Luz</td>
              <td>Diretora Adjunta</td>
            </tr>
            <tr>
              <td>Diana Pinheiro</td>
              <td>Diretora Adjunta</td>
            </tr>
            <tr>
              <td>Maria de Fátima Vidal</td>
              <td>Diretora Adjunta</td>
            </tr>
            <tr>
              <td>Rita de Cássia Mendes</td>
              <td>Diretora Adjunta</td>
            </tr>
          </tbody>
        </table>
      </div>



    </div>


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
  text-shadow: none;
  // text-shadow: 1px 1px 2px #0003;
}
</style>
