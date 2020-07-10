<template>
    <div id="box">
      <el-table
        :data="tableData"
      >
        <el-table-column
          type="index"
          width="50">
        </el-table-column>
        <el-table-column
          prop="ids"
          label="ID">
        </el-table-column>
        <el-table-column
          prop="goods"
          label="类别">
        </el-table-column>
        <el-table-column
          prop="names"
          label="名称">
        </el-table-column>
        <el-table-column
          prop="nums"
          label="库存">
        </el-table-column>
        <el-table-column
          prop="prices"
          label="价格">
        </el-table-column>
        <el-table-column
          label="操作">
          <template slot-scope="scope">
            <el-button type="primary" size="mini" @click="updateWares(scope.row)">修改</el-button>
            <el-button type="danger" size="mini" @click="deWares(scope.row.ids,scope.$index)">删除</el-button>
          </template>
        </el-table-column>
      </el-table>

      <el-dialog
        title="修改"
        :visible.sync="dialogVisible"
        width="70%"
        style="min-width: 900px"
        >
        <update-wares :rule-form="row"></update-wares>
      </el-dialog>
    </div>
</template>

<script>
  import updateWares from './update'
    export default {
        name: "table",
        props: [''],
        data() {
            return {
              tableData:[],
              dialogVisible:false,
              row:{}
            }
        },
        methods: {
          deWares(ids,index){
            this.$api.deWares({ids:ids},res=>{
              if(res) this.tableData.splice(index,1)
            })
          },
          updateWares(row){
            this.row=row
            this.dialogVisible=true
          }
        },
        mounted() {
        },
        created() {
          this.$api.gteWares({},res=>{
            if(res){
              this.tableData=res
            }
          })
        },
      components:{
        updateWares
      }
    }
</script>

<style scoped >
    #box {

    }
</style>
