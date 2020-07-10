
let menu=[
  // {
  //   path:'/',
  //   name:'分类管理',
  //   icon:'zf-icon-news',
  //   children:[
  //     {
  //       path:'/admin_goodsTable',
  //       name:'表格',
  //       icon:'el-icon-eleme',
  //     },
  //     {
  //       path:'/admin_goodsCreate',
  //       name:'创建',
  //       icon:'el-icon-eleme',
  //     },
  //
  //   ]},
  {
    path:'/',
    name:'商品管理',
    icon:'zf-icon-news',
    children:[
      {
        path:'/admin_waresTable',
        name:'表格',
        icon:'el-icon-eleme',
      },
      {
        path:'/admin_waresCreate',
        name:'创建',
        icon:'el-icon-eleme',
      },

    ]},
  {
    path:'/admin_user',
    name:'用户管理',
    icon:'zf-icon-news',
    children:[
    ]},
  {
    path:'/admin_orderTable',
    name:'订单管理',
    icon:'zf-icon-news',
    children:[
    ]},



]

export default menu
