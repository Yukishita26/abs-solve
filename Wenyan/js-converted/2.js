/*___wenyan_module_控制台應用_start___*/ var 控制台應用 = new function(){ /*"get input string from standard stream"*/var 輸入=this.輸入=_=>{};輸入=this.輸入=()=>{const _ans1=(() => require('fs').readFileSync('/dev/stdin', 'utf8'))();return _ans1;};/*"get string array split with separator。同Javascript之x.split(y)也。"*/var 分裂=this.分裂=_=>{};分裂=this.分裂=輸入=>分隔器=>{const _ans2=輸入;const _ans3=分隔器;const _ans4=((str) => ((sep) => str.split(sep)))(_ans2)(_ans3);return _ans4;};/*"parse Integer from String。同Javascript之parseInt也。"*/var 解析為整數=this.解析為整數=_=>{};解析為整數=this.解析為整數=甲=>{const _ans5=parseInt(甲);return _ans5;};/*"轉換為字符串。同Javascript之x.toString()也。"*/var 轉換為字符串=this.轉換為字符串=_=>{};轉換為字符串=this.轉換為字符串=甲=>{const _ans6=(x => x.toString())(甲);return _ans6;};var 刪除空白=this.刪除空白=_=>{};刪除空白=this.刪除空白=甲=>{const _ans7=(x => x.trim())(甲);return _ans7;}; };/*___wenyan_module_控制台應用_end___*/var 輸入=控制台應用.輸入;var 分裂=控制台應用.分裂;var 刪除空白=控制台應用.刪除空白;var 解析為整數=控制台應用.解析為整數;var 轉換為字符串=控制台應用.轉換為字符串;const _ans1=輸入();var 輸入字串=_ans1;var 回答=0;const _ans2=輸入字串[1-1];var 字符一=_ans2;if (字符一=="1"){const _ans3=回答+1;var 臨時=_ans3;回答=臨時;};const _ans4=輸入字串[2-1];var 字符二=_ans4;if (字符二=="1"){const _ans5=回答+1;var 臨時=_ans5;回答=臨時;};const _ans6=輸入字串[3-1];var 字符三=_ans6;if (字符三=="1"){const _ans7=回答+1;var 臨時=_ans7;回答=臨時;};const _ans8=轉換為字符串(回答);console.log(_ans8);