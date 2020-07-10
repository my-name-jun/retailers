import {util} from '../util.js'

let user={}
let src='users' //当前接口文件夹
user.login=function(data,callback) {
  util(data,src+'/login',callback)
}

user.createUser=function(data,callback) {
  util(data,src+'/createUser',callback)
}

user.getUser=function(data,callback) {
  util(data,src+'/getUser',callback)
}
user.selectWares=function(data,callback) {
  util(data,src+'/selectWares',callback)
}
user.addComment=function(data,callback) {
  util(data,src+'/addComment',callback)
}
export default user
