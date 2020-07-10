
const pool=require("./db.js")
let linkSql=function(sql,callback) {
  console.log(sql)
    pool.getConnection((err, connection) => {
        connection.query(sql, [], (err, result) => {
            if(err){
                callback(false)
                throw err;
            }else{
                callback(result);
                connection.release();
            }
        })
    })
}
module.exports =linkSql
