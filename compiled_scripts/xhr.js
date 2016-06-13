"use strict";

//
// xhr.js
//

// used to do ajax queries

function getAjax() {
	//Browser Support Code
	var ajaxRequest; // The variable that makes Ajax possible!
	try {
		// Opera 8.0+, Firefox, Safari
		ajaxRequest = new XMLHttpRequest();
	} catch (e) {
		// Internet Explorer Browsers
		try {
			ajaxRequest = new ActiveXObject("Msxml2.XMLHTTP");
		} catch (e) {
			try {
				ajaxRequest = new ActiveXObject("Microsoft.XMLHTTP");
			} catch (e) {
				// Something went wrong
				alert("Your browser broke!");
			}
		}
	}
	return ajaxRequest;
}

/* Example:

var ajaxRequest = getAjax();

ajaxRequest.open("POST", "results.php", true);
ajaxRequest.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
ajaxRequest.send(
	"search="+JSON.stringify(obj)
);
ajaxRequest.onreadystatechange = function(){
	if(ajaxRequest.readyState == 4){
		var r = ajaxRequest.responseText;
		console.log(r);
		if (r==0) {
		}
		else {
			document.write(r);
		}
	}
}

*/