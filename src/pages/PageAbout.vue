<template>
  <q-page class="about-page text-primary-12">
    <!-- Hero Section -->
    <section class="hero-section q-py-xl">
      <div class="container">
        <div class="row justify-center">
          <div class="col-12">
            <div class="text-h3 text-center text-weight-bold q-mb-lg text-teal-8">
              Sobre o PSINDCE
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- Mission Section -->
    <section class="mission-section q-py-lg">
      <div class="container">
        <div class="row justify-center">
          <div class="col-12 col-lg-10">
            <div class="mission-card q-pa-xl q-mb-xl">
              <div class="text-h5 text-weight-bold text-center q-mb-lg">
                Nossa Missão
              </div>
              <div class="mission-content">
                <p class="text-body1 text-justify leading-relaxed q-mb-lg">
                  O Sindicato dos Psicólogos do Estado do Ceará - PSINDCE - é uma organização de base estadual que
                  representa os
                  interesses da categoria e da sociedade por serviços de qualidade à população. O Sindicato procura
                  lutar por
                  melhores salários, remuneração condizente com sua formação e por condições adequadas de trabalho em
                  amplo
                  sentido: da jornada às condições que permitam um exercício técnico e ético da profissão.
                </p>

                <p class="text-body1 text-justify leading-relaxed q-mb-lg">
                  Porém, não se restringe a uma luta corporativista, pois entende que a luta sindical deve abraçar
                  melhores condições de trabalho para toda a classe trabalhadora.
                </p>

                <div class="affiliations-highlight q-pa-md q-mt-lg">
                  <div class="text-h6 text-weight-bold q-mb-md text-center">
                    Nossas Filiações
                  </div>
                  <p class="text-body1 text-justify leading-relaxed q-mb-md">
                    Para este fim, o PSINDCE está filiado à Confederação Nacional dos Trabalhadores em Seguridade Social
                    (CNTSS),
                    Federação Estadual dos Trabalhadores em Seguridade Social (FETSS), Federação Nacional dos Psicólogos
                    (FENAPSI)
                    e Central Única dos Trabalhadores (CUT-CE).
                  </p>
                </div>

                <p class="text-body1 text-justify leading-relaxed">
                  O PSINDCE entende que a luta sindical clássica de corte corporativo tem de estar articulada aos
                  interesses
                  mais amplos da sociedade, como a busca pela democracia universal e participativa, a conquista de
                  direitos que
                  garantam a justiça social amparados por amplas políticas públicas de Estado e a luta contra todas as
                  formas de
                  preconceito, discriminação e violência que ofendam a dignidade humana.
                </p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- Team Section -->
    <section class="team-section q-py-xl">
      <div class="container">
        <div class="text-h4 text-center text-weight-bold q-mb-xl text-teal-8">
          Nossa Equipe
        </div>

        <!-- Diretoria Atual -->
        <div class="team-subsection q-mb-xl">
          <div class="subsection-header q-pa-md q-mb-lg">
            <div class="text-h5 text-weight-bold text-center">DIRETORIA ATUAL</div>
          </div>
          <div class="row q-col-gutter-lg justify-center">
            <div class="col-12 col-sm-6 col-lg-4" v-for="(member, index) in members" :key="index">
              <div class="member-card q-pa-md">
                <div class="member-photo-container q-mb-md">
                  <q-img :src="`/img/Id/${member.image}`" spinner-color="primary" :spinner-size="spinnerSize"
                    class="member-photo" width="100px" height="100px" fit="cover" />
                </div>
                <div class="member-info text-center">
                  <div class="member-name text-weight-bold q-mb-xs">{{ member.name }}</div>
                  <div class="member-crp text-caption q-mb-xs">{{ member.crp }}</div>
                  <div class="member-role text-body2 text-weight-medium">{{ member.role }}</div>
                </div>
              </div>
            </div>
          </div>
        </div>

        <!-- Adjuntos e Adjuntas -->
        <div class="team-subsection q-mb-xl">
          <div class="subsection-header q-pa-md q-mb-lg">
            <div class="text-h5 text-weight-bold text-center">ADJUNTOS E ADJUNTAS</div>
          </div>
          <div class="row q-col-gutter-lg justify-center">
            <div class="col-12 col-sm-6 col-lg-4" v-for="(adjunct, index) in adjuncts" :key="index">
              <div class="member-card q-pa-md">
                <div class="member-photo-container q-mb-md">
                  <q-img :src="`/img/Id/${adjunct.image}`" spinner-color="primary" :spinner-size="spinnerSize"
                    class="member-photo" width="100px" height="100px" fit="cover" />
                </div>
                <div class="member-info text-center">
                  <div class="member-name text-weight-bold q-mb-xs">{{ adjunct.name }}</div>
                  <div class="member-crp text-caption q-mb-xs">{{ adjunct.crp }}</div>
                  <div class="member-role text-body2 text-weight-medium">{{ adjunct.role }}</div>
                </div>
              </div>
            </div>
          </div>
        </div>

        <!-- Conselho Fiscal -->
        <div class="team-subsection q-mb-xl">
          <div class="subsection-header q-pa-md q-mb-lg">
            <div class="text-h5 text-weight-bold text-center">CONSELHO FISCAL</div>
          </div>
          <div class="row q-col-gutter-lg justify-center">
            <div class="col-12 col-sm-6 col-md-4" v-for="(council, index) in councilMembers" :key="index">
              <div class="member-card q-pa-md">
                <div class="member-photo-container q-mb-md">
                  <q-img v-if="council.image" :src="`/img/Id/${council.image}`" spinner-color="primary"
                    :spinner-size="spinnerSize" class="member-photo" width="100px" height="100px" fit="cover" />
                  <div v-else class="member-photo-placeholder">
                    <q-icon name="person" size="48px" color="grey-6" />
                  </div>
                </div>
                <div class="member-info text-center">
                  <div class="member-name text-weight-bold q-mb-xs">{{ council.name }}</div>
                  <div class="member-crp text-caption">{{ council.crp }}</div>
                </div>
              </div>
            </div>
          </div>
        </div>

        <!-- Suplentes -->
        <div class="team-subsection">
          <div class="subsection-header q-pa-md q-mb-lg">
            <div class="text-h5 text-weight-bold text-center">SUPLENTES</div>
          </div>
          <div class="row q-col-gutter-lg justify-center">
            <div class="col-12 col-sm-6 col-md-4" v-for="(substitute, index) in substitutes" :key="index">
              <div class="member-card q-pa-md">
                <div class="member-photo-container q-mb-md">
                  <q-img v-if="substitute.image" :src="`/img/Id/${substitute.image}`" spinner-color="primary"
                    :spinner-size="spinnerSize" class="member-photo" width="100px" height="100px" fit="cover" />
                  <div v-else class="member-photo-placeholder">
                    <q-icon name="person" size="48px" color="grey-6" />
                  </div>
                </div>
                <div class="member-info text-center">
                  <div class="member-name text-weight-bold q-mb-xs">{{ substitute.name }}</div>
                  <div class="member-crp text-caption">{{ substitute.crp }}</div>
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
  import { ref } from 'vue'

  defineOptions({
    name: 'PageAbout'
  })

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

<style lang="scss" scoped>
  .leading-relaxed {
    line-height: 1.7;
  }

  .container {
    max-width: 1200px;
    margin: 0 auto;
    padding: 0 16px;
  }

  .about-page {
    min-height: 100vh;
  }

  .hero-section {
    background: rgba(255, 255, 255, 0.02);
  }

  .mission-section {
    background: rgba(255, 255, 255, 0.01);
  }

  .mission-card {
    background: rgba(255, 255, 255, 0.05);
    border-radius: 16px;
    backdrop-filter: blur(10px);
    border: 1px solid rgba(255, 255, 255, 0.1);
    box-shadow: 0 12px 40px rgba(0, 0, 0, 0.1);
  }

  .mission-content {
    max-width: 900px;
    margin: 0 auto;
  }

  .affiliations-highlight {
    background: rgba(255, 255, 255, 0.03);
    border-radius: 8px;
    border-left: 4px solid #26a69a;
  }

  .team-section {
    background: rgba(255, 255, 255, 0.02);
  }

  .team-subsection {
    margin-bottom: 48px;
  }

  .subsection-header {
    background: rgba(255, 255, 255, 0.05);
    border-radius: 12px;
    backdrop-filter: blur(5px);
    border: 1px solid rgba(255, 255, 255, 0.1);
    margin-bottom: 24px;
  }

  .member-card {
    background: rgba(255, 255, 255, 0.05);
    border-radius: 16px;
    backdrop-filter: blur(10px);
    border: 1px solid rgba(255, 255, 255, 0.1);
    transition: all 0.3s ease;
    height: 100%;
    display: flex;
    flex-direction: column;

    &:hover {
      transform: translateY(-4px);
      box-shadow: 0 12px 32px rgba(0, 0, 0, 0.15);
      background: rgba(255, 255, 255, 0.08);
    }
  }

  .member-photo-container {
    display: flex;
    justify-content: center;
    align-items: center;
  }

  .member-photo {
    border-radius: 50%;
    box-shadow: 0 4px 16px rgba(0, 0, 0, 0.1);
    border: 3px solid rgba(255, 255, 255, 0.1);
  }

  .member-photo-placeholder {
    width: 100px;
    height: 100px;
    border-radius: 50%;
    background: rgba(255, 255, 255, 0.1);
    display: flex;
    align-items: center;
    justify-content: center;
    border: 3px solid rgba(255, 255, 255, 0.1);
  }

  .member-info {
    flex-grow: 1;
    display: flex;
    flex-direction: column;
    justify-content: center;
  }

  .member-name {
    font-size: 1.1rem;
    line-height: 1.3;
    color: #26a69a;
  }

  .member-crp {
    color: rgba(83, 83, 83, 0.9);
    font-size: 0.85rem;
  }

  .member-role {
    color: rgba(83, 83, 83, 0.9);
    font-size: 0.95rem;
    line-height: 1.4;
  }

  // Responsive adjustments
  @media (max-width: 768px) {
    .container {
      padding: 0 12px;
    }

    .member-card {
      margin-bottom: 16px;
    }

    .team-subsection {
      margin-bottom: 32px;
    }
  }

  // Maintain original gradient for compatibility
  $green1: rgba($primary, 0.25);
  $red1: rgba($negative, 0.25);

  .gradient-bg1 {
    background: linear-gradient(-30deg, $green1, $red1);
  }
</style>
