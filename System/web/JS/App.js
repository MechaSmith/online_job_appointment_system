 function saveApp() {
    
    var a = document.getElementById("unm").value;
    var b = document.getElementById("dates").value;
    var c = document.getElementById("times").value;
    if (a === "All" || b === "All" || c === "All") {
        alert("Error Please Select Correct Values.");
    } else {
        var date = b.split("-");
        var Admin = a.split("-");
        var time = c.split("-");
        
        var mg=document.getElementById("des").value;
        var xml = new XMLHttpRequest();
        xml.onreadystatechange = function() {
            if (xml.readyState === 4 && xml.status === 200) {
                alert("Success! We will call you latter");
                window.location="HomeView.jsp";
            }
        };

        xml.open("POST", "saveApp", true);
        xml.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
        xml.send("a=" + Admin[1] + "&d=" + date[1]+"&t="+time[1]+"&mg="+mg);
    }

}


