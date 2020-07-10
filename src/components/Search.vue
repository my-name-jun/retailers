<template>
  <div>
    <div class="container">
      <i-input v-model="goodsList.names" size="large" class="sreach" placeholder="输入你想查找的商品">
        <Button slot="append" icon="ios-search" @click="sreach"></Button>
      </i-input>
      <Tag v-for="(item, index) in promotionTags" :key="index" closable  @on-close="closeTags(index)"><span @click="selectTags(index)">{{item}}</span></Tag>
    </div>
  </div>
</template>

<script>
  import goodsList from './nav/select'
export default {
  name: 'Search',
  data () {
    return {
      goodsList: goodsList,
      promotionTags: [],

    };
  },
  methods: {
    closeTags (index) {
      this.promotionTags.splice(index, 1);
    },
    selectTags (index) {
      this.sreachData = this.promotionTags[index];
    },
    sreach () {

      if(this.$route.path === '/goodsList'){
        this.$emit('changeName',this.goodsList.names)
      }else{
        this.$router.push({path: '/goodsList', query: this.goodsList});
      }
    }
  }
};
</script>

<style scoped>
.container {
  padding-top: 15px;
  margin: 0px auto;
  margin-bottom: 15px;
  width: 460px;
}
.sreach {
  margin: 5px 0px;
}
</style>
