import admin from './index';
import login from './login'

import goodsTable from './goodClass/table'
import goodsCreate from './goodClass/create'

import waresTable from './wares/table'
import waresCreate from './wares/create'

import orderTable from './order/table'

import user from './user/table'
const routes = [
  {
    path:'/adminIndex',
    name:'管理员',
    component:admin,
    children:[
      {
        path:'/admin_goodsTable',
        name:'物品分类',
        component:goodsTable,
        children:[]
      },
      {
        path:'/admin_goodsCreate',
        name:'创建',
        component:goodsCreate,
        children:[]
      },
      {
        path:'/admin_waresTable',
        name:'waresTable',
        component:waresTable,
        children:[]
      },
      {
        path:'/admin_waresCreate',
        name:'waresCreate',
        component:waresCreate,
        children:[]
      }, {
        path:'/admin_user',
        name:'user',
        component:user,
        children:[]
      },
      {
        path:'/admin_orderTable',
        name:'orderTable',
        component:orderTable,
        children:[]
      },

    ]
  },
  {
    path:'/admin_login',
    name:'管理员',
    component:login,
    children:[]
  },
]
export default routes
