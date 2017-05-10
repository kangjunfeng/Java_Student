window.onload = function () {
     // var leftClass =document.getElementsByClassName("contentLeft");
     // leftClass.style.height =window.screen.height-200;
     //
	 var rightClass =document.getElementsByClassName("contentRight");
	 rightClass.height =window.screen.height-"200px";

//	 var iframeClass =document.getElementsByClassName("contentIFrame");
//	 iframeClass.height =window.screen.height-"200px";

	 
}

function  showOrHiddenNav(controlID) {
	var secNav = document.getElementById(controlID);
	if(secNav.style.display =="none"){
	secNav.style.display ="block";
	}else {
	secNav.style.display ="none";
	}
}
