<template>
  <q-page class="text-primary-12">
    <!-- Hero Section -->
    <section class="hero-section q-py-xl">
      <div class="container">
        <div class="row justify-center">
          <div class="col-12 col-md-10 col-lg-8">
            <div class="text-center q-mb-lg">
              <div class="row items-center justify-center q-mb-md">
                <img src="img/icons/Logo-double-02b1.svg" style="width: 120px;" class="q-mr-md">
                <div class="text-h2 text-bold text-italic text-shadow1">
                  PSINDCE
                </div>
              </div>
              <div class="text-h4 text-bold text-italic text-shadow1 q-mb-xl">
                SINDICATO DOS PSICÓLOGOS<br>DO CEARÁ
              </div>
            </div>

            <!-- Article 1 Introduction -->
            <div class="introduction-card q-pa-lg q-mb-xl">
              <div class="text-h6 text-weight-bold q-mb-md text-center">
                Artigo 1º - Definição da Entidade
              </div>
              <p class="text-body1 text-justify leading-relaxed">
                O Sindicato dos Psicólogos do Ceará (PSINDCE) é uma entidade civil, com sede no endereço: Av. Edison
                Brasil Soares, 830 – Sala 6 - Sapiranga – Fortaleza/CE, Cep 60833-020, constituído para fins de defesa,
                representação legal e legítima, da categoria profissional dos psicólogos e psicólogas, assalariados e
                autônomos do estado do Ceará, tendo as seguintes características:
              </p>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- Characteristics Section -->
    <section class="characteristics-section q-py-xl">
      <div class="container">
        <div class="row justify-center">
          <div class="col-12 col-md-10 col-lg-8">
            <div class="characteristics-grid">
              <div class="characteristic-card q-pa-lg q-mb-md">
                <div class="text-h6 text-weight-bold q-mb-sm text-teal-8">
                  Parágrafo I
                </div>
                <p class="text-body1 text-justify">
                  É uma Entidade de representação sindical com base estadual, que poderá instituir subsedes a nível
                  regional e municipal, cuja criação dependerá de aprovação em Assembleia nos termos deste Estatuto.
                </p>
              </div>

              <div class="characteristic-card q-pa-lg q-mb-md">
                <div class="text-h6 text-weight-bold q-mb-sm text-teal-8">
                  Parágrafo II
                </div>
                <p class="text-body1 text-justify">
                  É uma Entidade sem fins lucrativos, inexistindo, portanto, distribuição de lucros ou dividendos aos
                  associados e participantes.
                </p>
              </div>

              <div class="characteristic-card q-pa-lg q-mb-md">
                <div class="text-h6 text-weight-bold q-mb-sm text-teal-8">
                  Parágrafo III
                </div>
                <p class="text-body1 text-justify">
                  É uma Entidade autônoma em relação aos partidos políticos, credos, instituições religiosas e ao
                  Estado.
                </p>
              </div>

              <div class="characteristic-card q-pa-lg q-mb-md">
                <div class="text-h6 text-weight-bold q-mb-sm text-teal-8">
                  Parágrafo IV
                </div>
                <p class="text-body1 text-justify">
                  É uma entidade com duração por tempo indeterminado.
                </p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- Mission Section -->
    <section class="mission-section q-py-xl">
      <div class="container">
        <div class="row justify-center">
          <div class="col-12 col-md-10 col-lg-9">
            <div class="mission-card q-pa-xl">
              <div class="text-h5 text-weight-bold text-center q-mb-lg">
                Nossa Missão e Propósito
              </div>

              <div class="mission-content">
                <p class="text-body1 text-justify leading-relaxed q-mb-lg">
                  O Sindicato dos Psicólogos do Estado do Ceará - PSINDCE - é uma organização de base estadual que
                  representa os interesses da categoria e da sociedade por serviços de qualidade à população. O
                  Sindicato procura lutar por melhores salários, remuneração condizente com sua formação e por condições
                  adequadas de trabalho em amplo sentido: da jornada às condições que permitam um exercício técnico e
                  ético da profissão.
                </p>

                <p class="text-body1 text-justify leading-relaxed q-mb-lg">
                  Porém, não se restringe a uma luta corporativista, pois entende que a luta sindical deve abraçar
                  melhores condições de trabalho para toda a classe trabalhadora.
                </p>

                <div class="affiliations-section q-mt-xl">
                  <div class="text-h6 text-weight-bold q-mb-md text-center">
                    Filiações
                  </div>
                  <p class="text-body1 text-justify leading-relaxed q-mb-lg">
                    Para este fim, o PSINDCE está filiado à Confederação Nacional dos Trabalhadores em Seguridade Social
                    (CNTSS), Federação Estadual dos Trabalhadores em Seguridade Social (FETSS), Federação Nacional dos
                    Psicólogos (FENAPSI) e Central Única dos Trabalhadores (CUT-CE).
                  </p>
                </div>

                <div class="values-section q-mt-xl">
                  <div class="text-h6 text-weight-bold q-mb-md text-center">
                    Nossos Valores
                  </div>
                  <p class="text-body1 text-justify leading-relaxed">
                    O PSINDCE entende que a luta sindical clássica de corte corporativo tem de estar articulada aos
                    interesses mais amplos da sociedade, como a busca pela democracia universal e participativa, a
                    conquista de direitos que garantam a justiça social amparados por amplas políticas públicas de
                    Estado e a luta contra todas as formas de preconceito, discriminação e violência que ofendam a
                    dignidade humana.
                  </p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
  </q-page>
</template>

<script setup>
  defineOptions({
    name: 'IndexPage'
  })
</script>

<style lang="scss" scoped>
  .text-shadow1 {
    text-shadow: 4px 4px 8px #0006;
  }

  .leading-relaxed {
    line-height: 1.7;
  }

  .container {
    max-width: 1200px;
    margin: 0 auto;
    padding: 0 16px;
  }

  .hero-section {
    min-height: 50vh;
    display: flex;
    align-items: center;
  }

  .introduction-card {
    background: rgba(255, 255, 255, 0.05);
    border-radius: 12px;
    backdrop-filter: blur(10px);
    border: 1px solid rgba(255, 255, 255, 0.1);
    box-shadow: 0 8px 32px rgba(0, 0, 0, 0.1);
  }

  .characteristics-section {
    background: rgba(255, 255, 255, 0.02);
  }

  .characteristics-grid {
    display: grid;
    gap: 16px;
  }

  @media (min-width: 768px) {
    .characteristics-grid {
      grid-template-columns: repeat(2, 1fr);
    }
  }

  .characteristic-card {
    background: rgba(255, 255, 255, 0.05);
    border-radius: 8px;
    border-left: 4px solid #26a69a;
    backdrop-filter: blur(5px);
    transition: transform 0.2s ease, box-shadow 0.2s ease;

    &:hover {
      transform: translateY(-2px);
      box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
    }
  }

  .mission-section {
    background: rgba(255, 255, 255, 0.02);
  }

  .mission-card {
    background: rgba(255, 255, 255, 0.05);
    border-radius: 16px;
    backdrop-filter: blur(10px);
    border: 1px solid rgba(255, 255, 255, 0.1);
    box-shadow: 0 12px 40px rgba(0, 0, 0, 0.1);
  }

  .mission-content {
    max-width: 800px;
    margin: 0 auto;
  }

  .affiliations-section,
  .values-section {
    background: rgba(255, 255, 255, 0.03);
    border-radius: 8px;
    padding: 24px;
    border: 1px solid rgba(255, 255, 255, 0.05);
  }
</style>
