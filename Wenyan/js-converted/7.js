/*___wenyan_module_格物_start___*/ var 格物 = new function(){ var 取物=this.取物=_=>{};取物=this.取物=物=>端=>{const _ans1=(obj=>x=>obj[x])(物)(端);return _ans1;};var 置物=this.置物=_=>{};置物=this.置物=物=>端=>實=>{const _ans2=(obj=>x=>v=>{obj[x]=v})(物)(端)(實);};var 列物之端=this.列物之端=_=>{};列物之端=this.列物之端=物=>{const _ans3=Object.keys(物);return _ans3;};var 識類=this.識類=_=>{};識類=this.識類=元=>{const _ans4=(x=>((x instanceof Array)?"列":({"number":"數","boolean":"爻","string":"言","function":"術","object":"物"}[(typeof x)])))(元);return _ans4;}; };/*___wenyan_module_格物_end___*//*___wenyan_module_控制台應用_start___*/ var 控制台應用 = new function(){ /*"get input string from standard stream"*/var 輸入=this.輸入=_=>{};輸入=this.輸入=()=>{const _ans1=(() => require('fs').readFileSync('/dev/stdin', 'utf8'))();return _ans1;};/*"get string array split with separator。同Javascript之x.split(y)也。"*/var 分裂=this.分裂=_=>{};分裂=this.分裂=輸入=>分隔器=>{const _ans2=輸入;const _ans3=分隔器;const _ans4=((str) => ((sep) => str.split(sep)))(_ans2)(_ans3);return _ans4;};/*"parse Integer from String。同Javascript之parseInt也。"*/var 解析為整數=this.解析為整數=_=>{};解析為整數=this.解析為整數=甲=>{const _ans5=parseInt(甲);return _ans5;};/*"轉換為字符串。同Javascript之x.toString()也。"*/var 轉換為字符串=this.轉換為字符串=_=>{};轉換為字符串=this.轉換為字符串=甲=>{const _ans6=(x => x.toString())(甲);return _ans6;};var 刪除空白=this.刪除空白=_=>{};刪除空白=this.刪除空白=甲=>{const _ans7=(x => x.trim())(甲);return _ans7;};var 排序=this.排序=_=>{};排序=this.排序=甲=>{const _ans8=(x => x.sort((a,b)=> a-b))(甲);return _ans8;}; };/*___wenyan_module_控制台應用_end___*/var 輸入=控制台應用.輸入;var 分裂=控制台應用.分裂;var 解析為整數=控制台應用.解析為整數;var 轉換為字符串=控制台應用.轉換為字符串;var 排序=控制台應用.排序;var 取物=格物.取物;var 置物=格物.置物;var 列物之端=格物.列物之端;const _ans1=輸入();const _ans2=分裂(_ans1)("\n");var 全部輸入=_ans2;const _ans3=全部輸入[1-1];const _ans4=解析為整數(_ans3);var 甲=_ans4;var 編號順序={};var 計數器=2;for(let _rand1=0;_rand1<甲;_rand1++){const _ans5=全部輸入[計數器-1];const _ans6=解析為整數(_ans5);const _ans7=置物(編號順序)(_ans6)(1);const _ans8=計數器+1;計數器=_ans8;};var 回答=0;const _ans9=列物之端(編號順序);for(let 端 of _ans9){const _ans10=回答+1;回答=_ans10;};const _ans11=回答;console.log(_ans11);