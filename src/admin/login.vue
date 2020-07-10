<template>
    <div class="login-container" style="width: 50%;margin-left: 25%;padding-top: 100px">
        <el-form class="login-form" ref="login-form" label-position="left" :rules="rules" :model="user">

            <div class="title-container">
                <h3 class="title" style="font-size: 24px">
                    电商系统管理后台
                </h3>
            </div>

            <el-form-item prop="username">
                <span class="svg-container">
                    <i class="iconfont course_user"></i>
                 </span>
                <el-input
                        v-model="user.username"
                        placeholder="请输入账号"
                        type="text"
                />
            </el-form-item>
            <el-form-item prop="password">
                <span class="svg-container">
                    <i class="iconfont course_ziyuanxhdpi"></i>
                </span>
                <el-input
                        v-model="user.password"
                        :type="passwordType"
                        placeholder="请输入密码"
                        name="password"
                />
                <span class="show-pwd" @click="showPwd">
                    <i :class="passwordType === 'password' ? 'iconfont course_yanjing_bi' : 'iconfont course_yanjing_kai'"/>
                </span>
            </el-form-item>

            <el-button :loading="loading" @click="login" type="primary" style="width:100%;margin:60px 0 0 0;">
                登录
            </el-button>


        </el-form>

    </div>
</template>

<script>


    export default {
        name: 'login',
        data() {
            return {
                user:{username: 'adminadmin',password: 'adminadmin'},
                passwordType: 'password',
                loading: false,
                rules:{
                    username:[{ required: true, message: '请输入账号', trigger: 'blur' },],
                    password:[{ required: true, message: '请输入密码', trigger: 'blur' },],
                },
            }
        },
        methods: {
            login(){
                this.$refs['login-form'].validate((valid) => {
                    if (valid) {
                        console.log(this.user)
                        if(this.user.username==='adminadmin'&&this.user.password==='adminadmin'){
                            sessionStorage.setItem('adminInfo','123456');
                            this.$router.go(0)
                        }else{
                            this.$message.error('账号或密码错误')
                        }
                    }else{
                        this.$message.error('请输入完整')
                    }
                })

            },
            showPwd() {
                if (this.passwordType === 'password') {
                    this.passwordType = ''
                } else {
                    this.passwordType = 'password'
                }
            },
        },
        mounted() {
            let adminInfo=sessionStorage.getItem('adminInfo');
            if(adminInfo&&adminInfo!==''){
                this.$router.push('/admin_goodsTable')
            }
        }
    }
</script>



