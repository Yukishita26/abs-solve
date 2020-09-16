var i='',f=process.stdin;
f.resume();f.setEncoding('utf8');f.on('data',t=>{i+=t});
f.on('end',()=>{
  i=i.trim().split('\n');
  var n=+i.shift();
  console.log(i.every((x)=>{
    var r=x.split(' '),a=+r.shift(),b=+r.shift(),c=+r.shift();
    return a>=b+c&&a%2==(b+c)%2
  })?'Yes':'No');
})