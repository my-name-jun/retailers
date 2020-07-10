var express = require('express');
var router = express.Router();
let linkSql=require('../sql/linkSql')


/* GET users listing. */
router.post('/login', function(req, res, next) {
  let username=req.body.username
  let password=req.body.password
  let sql=`SELECT * FROM tbl_user where username="${username}" and password="${password}" `
  linkSql(sql,r=>{
    res.send(r);
  })
});

router.post('/createUser', function(req, res, next) {
  let username=req.body.username
  let password=req.body.password
  let sql=`INSERT INTO tbl_user(username,password) values ( "${username}","${password}")`
  linkSql(sql,r=>{
    res.send(r);
  })
});

router.post('/getUser', function(req, res, next) {
  let sql=`select * from tbl_user`
  linkSql(sql,r=>{
    res.send(r);
  })
});

router.post('/addAddress', function(req, res, next) {
  let name=req.body.name
  let address=req.body.address
  let username=req.body.username
  let phone=req.body.phone
  let sql=`INSERT INTO tbl_address(username,address,name,phone) values ( "${username}","${address}","${name}","${phone}")`
  linkSql(sql,r=>{
    res.send(r);
  })
});

router.post('/getAddress', function(req, res, next) {
  let username=req.body.username
  let sql=`SELECT * from tbl_address where username = "${username}" `
  linkSql(sql,r=>{
    res.send(r);
  })
});

router.post('/deAddress', function(req, res, next) {
  let address=req.body.address
  let sql=`DELETE  from tbl_address where address = "${address}" `
  linkSql(sql,r=>{
    res.send(r);
  })
});


router.post('/createWares', function(req, res, next) {
  let ids=req.body.ids
  let names=req.body.names
  let goods=req.body.goods
  let nums=req.body.nums
  let specs=req.body.specs
  let prices=req.body.prices
  let images=req.body.images

  let sql=`INSERT INTO tbl_wares(ids,names,goods,nums,specs,prices,images) VALUES (${ids},"${names}","${goods}",${nums},"${specs}",${prices},"${images}")`
  linkSql(sql,r=>{
    res.send(r);
  })
});

router.post('/gteWares', function(req, res, next) {

  let sql=`SELECT * FROM tbl_wares`
  linkSql(sql,r=>{
    res.send(r);
  })
});
router.post('/deWares', function(req, res, next) {
  let ids=req.body.ids
  let sql=`Delete  FROM tbl_wares where ids=${ids}`
  linkSql(sql,r=>{
    res.send(r);
  })
});

router.post('/updateWares', function(req, res, next) {
  let ids=req.body.ids
  let names=req.body.names
  let goods=req.body.goods
  let nums=req.body.nums
  let specs=req.body.specs
  let prices=req.body.prices
  let images=req.body.images

  let sql=`UPDATE   tbl_wares set names="${names}", goods="${goods}",nums=${nums},specs="${specs}",prices=${prices},images="${images}" where ids=${ids}`
  linkSql(sql,r=>{
    res.send(r);
  })
});

router.post('/selectWares', function(req, res, next) {
  let highPrice=req.body.highPrice
  let names=req.body.names
  let goods=req.body.goods
  let lowPrice=req.body.lowPrice
  let orderBy=req.body.orderBy
  let sql=`select * from tbl_wares where `;
  if(names) sql+=` names like "%${names}%" and`;
  if(goods) sql+=` goods = "${goods}" and`;
  if(lowPrice) sql+=` prices >= ${lowPrice} and`;
  if(highPrice) sql+=` prices <= ${highPrice}`;
  let three=sql.substring(sql.length-3,sql.length)
  if(three==='and'){
    sql=sql.substring(0,sql.length-3)
  }
  console.log(three)
  sql+=` ORDER BY prices ${orderBy}`
  linkSql(sql,r=>{
    res.send(r);
  })
});

router.post('/addPay', function(req, res, next) {
  let ids=req.body.ids
  let names=req.body.names
  let nums=req.body.nums
  let specs=req.body.specs
  let prices=req.body.prices
  let status=req.body.status
  let address=req.body.address
  let username=req.body.username
  let goodsId=req.body.goodsId

  let sql=`INSERT INTO tbl_pay (ids,nums,names,specs,prices,address,status,username,goodsId) values (${ids},${nums},"${names}","${specs}","${prices}","${address}","${status}","${username}","${goodsId}")`
  linkSql(sql,r=>{
    res.send(r);
  })
});

router.post('/getPay', function(req, res, next) {
  let username=req.body.username
  let sql=`SELECT * FROM tbl_pay `+username
  linkSql(sql,r=>{
    res.send(r);
  })
});


router.post('/changePayStatus', function(req, res, next) {
  let status=req.body.status
  let ids=req.body.ids
  let sql=`UPDATE  tbl_pay set status="${status}" where ids=${ids} `
  linkSql(sql,r=>{
    res.send(r);
  })
});

router.post('/addComment', function(req, res, next) {
  let comment=req.body.comment
  let ids=req.body.ids
  let payIds=req.body.payIds
  let goodsId=req.body.goodsId
  let imagePath=req.body.imagePath
  let username=req.body.username

  let sql=`INSERT INTO tbl_comment(ids,payIds,comment,goodsId,imagePath,username) values(${ids},${payIds},"${comment}","${goodsId}","${imagePath}","${username}")`
  linkSql(sql,r=>{
    res.send(r);
  })
});

router.post('/getComment', function(req, res, next) {

  let goodsId=req.body.goodsId


  let sql=`SELECT * FROM tbl_comment where goodsId = "${goodsId}"`
  linkSql(sql,r=>{
    res.send(r);
  })
});
module.exports = router;
