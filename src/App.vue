<template>
  <div id="app">
    <router-view/>
    <!-- 部分路由不应该包含这个Footer -->
  </div>
</template>

<script>
import Header from '@/components/header/Header';
import Footer from '@/components/footer/Footer';
export default {
  name: 'App',
  data () {
    return {
      excludeRoutes: ['HomeIndex', 'MyAddress', 'AddAddress', 'MyOrder', 'MyShoppingCart']
    };
  },
  components: {
    Header,
    Footer
  }
};
</script>
