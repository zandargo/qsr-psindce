const routes = [
  {
    path: '/',
    component: () => import('layouts/MainLayout.vue'),
    children: [
      { path: ''        , component: () => import('pages/IndexPage.vue') },
      { path: 'sobre'   , component: () => import('pages/PageAbout.vue') },
      { path: 'historia', component: () => import('pages/PageHist.vue' ) },
      { path: 'afiliese', component: () => import('pages/PageJoin.vue' ) },
    ]
  },

  // Always leave this as last one,
  // but you can also remove it
  {
    path: '/:catchAll(.*)*',
    component: () => import('pages/ErrorNotFound.vue')
  }
]

export default routes
