<template>
  <div>
      <el-table :data="tableData">
        <el-table-column
          width="50"
          type="index">
        </el-table-column>
        <el-table-column
          prop="names"
          label="名称">
        </el-table-column>
        <el-table-column
          prop="nums"
          label="数量">
        </el-table-column>
        <el-table-column
          prop="prices"
          label="价格">
        </el-table-column>
        <el-table-column
          prop="address"
          label="收获地址">
        </el-table-column>
        <el-table-column
          prop="status"
          label="状态">
        </el-table-column>
        <el-table-column
          label="操作">
          <template slot-scope="scope">
              <el-button v-show="scope.row.status==='已付款'" size="mini" type="primary" @click="chagneTtstus('收货',scope.row,scope.$index)">收货</el-button>
              <el-button v-show="scope.row.status==='已付款'" size="mini" type="danger" @click="chagneTtstus('退款',scope.row,scope.$index)">退款</el-button>
          </template>
      </el-table-column>
      </el-table>

    <el-dialog
      title="评论"
      :visible.sync="dialogVisible"
      width="40%">
      <comments @successComment="successComment" :item="item"></comments>
    </el-dialog>
  </div>
</template>

<script>
  import comments from './comment'
export default {
  name: 'MyOrder',
  data () {
    return {
      index:'',
      tableData:[],
      item:{
        ids:'',
        payIds:"",
        goodsId:"",
        status:'',
        comment:'',
        imagePath:'',
        username:this.$userInfo.username
      },
      dialogVisible:false
    };
  },
  created() {
    this.$api.getPay({username:`where username = "${this.$userInfo.username}"`},res=>{
      if(res) this.tableData=res
    })
  },
  methods:{
    chagneTtstus(status,row,index){
      this.index=index
      if(status==='收货'){
        console.log(12345687)
          this.item.goodsId=row.goodsId
          this.item.status=status,
            this.item.payIds=row.ids,
            this.dialogVisible=true

      }else{
        let cnt={
          ids:row.ids,
          status:status
        }
        this.chagneStstus(cnt)
      }
      console.log(11111111111111111111)
    },
    chagneStstus(cnt){
      this.$api.changePayStatus(cnt,res=>{

      })
    },
    successComment(cnt){
      this.dialogVisible=false
      this.tableData[this.index].status='收货'
      let it=this.tableData[this.index]
      this.tableData.splice(this.index,1,it)
      this.chagneStstus(cnt)
    }
  },
  components:{
    comments
  }
};
</script>

<style scoped>

</style>
