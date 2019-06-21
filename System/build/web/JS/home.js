 function jobLoads(c) {
    var xml = new XMLHttpRequest();
    xml.onreadystatechange = function() {

        if (xml.readyState === 4 && xml.status === 200) {
            var x = xml.responseText;
            var y = JSON.parse(x);
            document.getElementById("jobs").innerHTML = y.a;
            document.getElementById("jobBtn").innerHTML = y.b;
        }
    };

    xml.open("POST", "jobLoad", true);
    xml.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    xml.send("m=" + c);
}
function viewJob(id) {
    window.location = "jobView.jsp?id=" + id;
}
function searching(qt) {
  
   var a = document.getElementById("search").value;
   var xml = new XMLHttpRequest();
    xml.onreadystatechange = function() {

        if (xml.readyState === 4 && xml.status === 200) {
            var x = xml.responseText;
            var y = JSON.parse(x);
            document.getElementById("jobs").innerHTML = y.a;
            document.getElementById("jobBtn").innerHTML = y.b;
        }
    };

    xml.open("POST", "search", true);
    xml.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    xml.send("nm=" + a+"&qt="+qt);
}


$('#bycntry').change(function(){
    var c=document.getElementById("bycntry").value;
      window.location = "byCountry.jsp?country=" + c;
});
$('#byjob').change(function(){
    var c=document.getElementById("byjob").value;
      window.location = "byJob.jsp?job=" + c;
});



