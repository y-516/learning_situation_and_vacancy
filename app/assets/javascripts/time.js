function getWeekDay() {
        var weekDay = ["日", "月", "火", "水", "木", "金", "土"];
        var date = new Date;
        return weekDay[date.getDay()];
    }

function set2fig(num) {
   var ret;
   if( num < 10 ) { ret = "0" + num; }
   else { ret = num; }
   return ret;
}
function showClock2() {
   var nowTime = new Date();
   var nowYear = set2fig(nowTime.getFullYear());
   var nowMonth = set2fig(nowTime.getMonth()+1);
   var nowDate = set2fig( nowTime.getDate());
   var nowDay = getWeekDay();
   var nowHour = set2fig( nowTime.getHours() );
   var nowMin  = set2fig( nowTime.getMinutes() );
   var nowSec  = set2fig( nowTime.getSeconds() );
   var msg = nowYear + "年" + nowMonth + "月" +nowDate + "日" + nowDay + "曜日" +nowHour + ":" + nowMin + ":" + nowSec;
   document.getElementById("real_time").innerHTML = msg;
}
setInterval('showClock2()',1000);
