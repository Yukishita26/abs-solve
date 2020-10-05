var i='',f=process.stdin;
f.resume();
f.setEncoding('utf8');
f.on('data',c=>{i+=c});
f.on('end',()=>{
  var t=i.split('\n'),n=+t[0],
    a=t[1].split(' ').map(x=>+x),
    sa=0,sb=0;
  a.sort((x,y)=>x<y?1:-1).forEach((x,k)=>(k%2==0)?sa+=x:sb+=x);
  console.log(sa-sb)
})