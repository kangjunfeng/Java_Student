
window.onload = function () {
    var left =document.getElementsByClassName("contentLeft");
    left.height =window.height-200;
}

function  showOrHiddenNav(controlID) {
	var secNav = document.getElementById(controlID);
	if(secNav.style.display =="none"){
	secNav.style.display ="block";
	}else {
	secNav.style.display ="none";
	}
}
