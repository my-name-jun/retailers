<template>
  <div id="box">
    <el-form :model="ruleForm" :rules="rules" ref="ruleForm" label-width="100px" class="demo-ruleForm">
      <el-form-item label="商品名称" prop="names">
        <el-input v-model="ruleForm.names"></el-input>
      </el-form-item>
      <el-form-item label="商品类型" prop="goods">
        <el-select v-model="ruleForm.goods" placeholder="请选择">
          <el-option
            v-for="(item,index) in options"
            :key="index"
            :value="item">
          </el-option>
        </el-select>
      </el-form-item>
      <el-form-item label="商品数量" prop="nums">
        <el-input-number v-model="ruleForm.nums"  :min="1" :max="1000" label="描述文字"></el-input-number>
      </el-form-item>
      <el-form-item label="商品规格" prop="specs">
        <el-tag
          :key="tag"
          v-for="tag in ruleForm.specs"
          closable
          :disable-transitions="false"
          @close="handleClose(tag)">
          {{tag}}
        </el-tag>
        <el-input
          class="input-new-tag"
          v-if="inputVisible"
          v-model="inputValue"
          ref="saveTagInput"
          size="small"
          @keyup.enter.native="handleInputConfirm"
          @blur="handleInputConfirm"
        >
        </el-input>
        <el-button v-else class="button-new-tag" size="small" @click="showInput">+ New Tag</el-button>
      </el-form-item>
      <el-form-item label="商品价格" prop="prices">
        <el-input-number v-model="ruleForm.prices"  :precision="2" :step="0.1" :max="10000"></el-input-number> 元
      </el-form-item>
      <el-form-item label="商品图片">
        <upImg @success="success" :index="1" :ref="'upImg1'"  style="float: left;margin-right: 10px"></upImg>
        <upImg @success="success" :index="2" :ref="'upImg2'"  style="float: left;margin-right: 10px"></upImg>
        <upImg @success="success" :index="3" :ref="'upImg3'"  style="float: left;margin-right: 10px"></upImg>
        <upImg @success="success" :index="4" :ref="'upImg4'"  style="float: left;margin-right: 10px"></upImg>
      </el-form-item>
    </el-form>

    <el-button type="primary" @click="submit">上传</el-button>
  </div>
</template>

<script>
  import upImg from './upImg'
  export default {
    name: "updatess",
    props: ['ruleForm'],
    data() {
      return {
        options:['家用电器','手机','电脑','家居','男装','美妆个护','女鞋','男鞋','汽车','母婴','礼品鲜花','食品','医药保健','图书'],
        rules: {
          names: [
            {required: true, message: '请输入商品名称', trigger: 'blur'},
          ],
          goods: [
            {required: true, message: '请输入商品名称', trigger: 'blur'},
          ],
        },
        inputVisible: false,
        inputValue: ''
      }
    },
    methods: {
      submit(){
        this.verification(r=>{
          //表单验证成功后开始上传图片
          this.$refs['upImg1'].submits()
        })
      },
      verification(call){//表单验证
        let that=this
        this.$refs.ruleForm.validate((valid) => {
          if (valid) {
            call(true)
            new Promise((res,rej)=>{
              let re=true
              for(let i of [1,2,3,4]){
                let upName='upImg' + i

                if(!that.$refs['upImg' + i].verification()) {
                  that.$message.error('请把图片选择完')
                  re=false
                  break;
                }
                res(re)
              }
            }).then(r=>{
              if(r){call(true)}
            })

          } else {
            this.$message.warning('请输入完整')
          }
        });
      },
      success(path,index){
        this.ruleForm.images[index-1] = path;
        if(index===4){
          let cnt=JSON.parse(JSON.stringify(this.ruleForm))
          cnt.specs=''
          this.ruleForm.specs.forEach(val=>{
            cnt.specs+=val+','
          })
          cnt.specs=cnt.specs.substr(0, cnt.specs.length-1)

          cnt.images=''
          this.ruleForm.images.forEach(val=>{
            cnt.images+=val+','
          })
          cnt.images=cnt.images.substr(0, cnt.images.length-1)
          this.$api.updateWares(cnt,res=>{
              if(res) this.$message.success('修改成功')
          })
        }else{
          this.$refs['upImg'+parseInt(index+1)].submits()

        }
      },
      handleClose(tag) {
        this.ruleForm.specs.splice(this.ruleForm.specs.indexOf(tag), 1);
      },

      showInput() {
        this.inputVisible = true;
        this.$nextTick(_ => {
          this.$refs.saveTagInput.$refs.input.focus();
        });
      },

      handleInputConfirm() {
        let inputValue = this.inputValue;
        if (inputValue) {
          this.ruleForm.specs.push(inputValue);
        }
        this.inputVisible = false;
        this.inputValue = '';
      }
    },
    mounted() {
      if(this.ruleForm){
        this.ruleForm.specs=this.ruleForm.specs.split(',')
        this.ruleForm.images=this.ruleForm.images.split(',')
      }
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
    min-width: 900px;
  }
</style>
