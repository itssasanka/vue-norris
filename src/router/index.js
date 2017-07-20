import Vue from 'vue'
import Router from 'vue-router'
import Joke from '@/components/Joke'

Vue.use(Router);

export default new Router({
  routes: [
    {
      path: '/',
      name: 'Joke',
      component: Joke
    }
  ]
})
