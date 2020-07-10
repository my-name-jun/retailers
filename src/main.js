// The Vue build version to load with the `import` command
// (runtime-only or standalone) has been set in webpack.base.conf with an alias.
import Vue from 'vue';
import App from './App';
import router from './router';
import iView from 'iview';
import 'iview/dist/styles/iview.css';

import ElementUI from 'element-ui';
import 'element-ui/lib/theme-chalk/index.css';
Vue.use(ElementUI);

Vue.use(iView);
Vue.config.productionTip = false;

router.beforeEach((to, from, next) => {
  iView.LoadingBar.start();
  next();
});

import {api} from '../static/dyd-util/util/util'
Vue.prototype.$api=api

import nodeUrl from '../static/dyd-util/util/url'
Vue.prototype.$nodeUrl=nodeUrl

import Time from '../static/fun/Time'
Vue.prototype.$Time=function(date){
  return new Time(date)
}

let userInfo= sessionStorage.getItem('userInfo')!==null? JSON.parse(sessionStorage.getItem('userInfo')):{
  username:'',password:''
}
Vue.prototype.$userInfo =userInfo

Vue.prototype.$shoppingCart=[]

router.afterEach(route => {
  iView.LoadingBar.finish();
});

/* eslint-disable no-new */
new Vue({
  el: '#app',
  router,
  components: { App },
  template: '<App/>'
});
