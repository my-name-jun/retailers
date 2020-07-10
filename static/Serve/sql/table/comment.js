let table=[
  ['ids','bigint primary key'],
  ['comment','varchar(200) not null'],
  ['payIds','bigint not null'],
  ['goodsId','varchar(200) not null'],
  ['imagePath','varchar(200) not null'],
  ['username','varchar(200) not null'],
]
module.exports=table
