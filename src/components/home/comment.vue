<template>
    <div id="box">
      <el-form :model="item" :rules="rules" ref="ruleForm" label-width="100px" class="demo-ruleForm">
        <el-form-item label="评论内容" prop="comment">
          <el-input v-model="item.comment"></el-input>
        </el-form-item>
        <el-form-item label="上传图片" prop="imagePath">
          <up-img ref="upImg" @success="success"  ></up-img>
        </el-form-item>
      </el-form>
      <el-button type="primary" @click="submitss">提交</el-button>
    </div>
</template>

<script>
    import upImg from './upImg'
    export default {
        name: "comment",
        props: ['item'],
        data() {
          return {
            rules: {
              comment: [
                {required: true, message: '请输入评论内容', trigger: 'blur'},
              ],
            }
          }
        },
        methods: {
          success(path){
            this.item.imagePath=path
            this.item.ids=Date.now()
            this.$api.addComment(this.item,res=>{
                if(res){
                  let cnt={
                    ids:this.item.payIds,
                    status:'收货'
                  }
                  this.$emit('successComment',cnt)
                }
            })
          },
          submitss(){
            console.log(this.$refs.upImg)
              if(!this.item.comment||!this.$refs.upImg.verification){
                this.$message.error('请填写完整')
              }else{
                this.$refs.upImg.submits()

              }
          }
        },
        mounted() {
        },
        created() {
        },
      components:{
        upImg
      }
    }
</script>

<style scoped >
    #box {

    }
</style>
