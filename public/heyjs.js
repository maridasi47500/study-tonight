function clignotement() {
	try{
	  var f = document.getElementById('annonce');
	  setInterval(function() {
		      f.style.visibility = (f.style.visibility == 'hidden' ? '' : 'hidden');
		    }, 1000);
	}catch(e){
		console.log(e);
	}
}
function openNav() {
	  document.getElementById("mySidenav").style.width = "250px";
}

function closeNav() {
	  document.getElementById("mySidenav").style.width = "0";
}
function executecode(){
	$.ajax({
		type:"post",
		url:"/mycode",
                data:{langageid: mylangageid.innerHTML, mycode: mycode.value},
		success:function(data){
			var somecode=data.somecode;
			document.getElementById("myoutputcode").innerHTML = somecode;
		}
	});
return false;
}
