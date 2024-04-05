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
