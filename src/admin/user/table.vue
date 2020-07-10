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
          prop="username"
          label="用户名">
        </el-table-column>
        <el-table-column
          prop="password"
          label="密码">
        </el-table-column>
      </el-table>
    </div>
</template>

<script>
    export default {
        name: "table",
        props: [''],
        data() {
            return {
              tableData:[]
            }
        },
        methods: {},
        mounted() {
        },
        created() {
          this.$api.getUser({},res=>{
            if(res) this.tableData=res
          })
        },
    }
</script>

<style scoped >
    #box {

    }
</style>
