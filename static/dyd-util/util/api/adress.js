import {util} from '../util.js'

let user={}
let src='users' //当前接口文件夹
user.addAddress=function(data,callback) {
  util(data,src+'/addAddress',callback)
}

user.getAddress=function(data,callback) {
  util(data,src+'/getAddress',callback)
}
user.deAddress=function(data,callback) {
  util(data,src+'/deAddress',callback)
}

user.createWares=function(data,callback) {
  util(data,src+'/createWares',callback)
}

user.gteWares=function(data,callback) {
  util(data,src+'/gteWares',callback)
}

user.deWares=function(data,callback) {
  util(data,src+'/deWares',callback)
}
user.updateWares=function(data,callback) {
  util(data,src+'/updateWares',callback)
}

user.addPay=function(data,callback) {
  util(data,src+'/addPay',callback)
}

user.getPay=function(data,callback) {
  util(data,src+'/getPay',callback)
}
user.changePayStatus=function(data,callback) {
  util(data,src+'/changePayStatus',callback)
}
user.getComment=function(data,callback) {
  util(data,src+'/getComment',callback)
}

export default user
