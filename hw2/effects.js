
$(document).ready(function(){
$('.menu-toggle').on('click', function() {

  $('ul').toggleClass('opening');
  $(this).toggleClass('open');

});

});

var context;
var $window = $(window);

// run this right away to set context
if ($window.width() >= 468) {
    context = 'small';
} else if (468 > $window.width() > 970) {
    context = 'medium';
} else {
    context = 'large';
}

// refresh the page only if you're crossing into a context
// that isn't already set
$(window).resize(function() {
    if(($window.width() >= 468) && (context != 'small')) {
        //refresh the page
        location.reload();
    } else if ((468 > $window.width()  > 970) && (context != 'medium')) {
        location.reload();
    } else if (context != 'large') {
        location.reload();
    }
});


function toggleTabs(evt, tabName) {
	
	if ($(window).width() < 480) {
	
  var i, tabcontent, tablinks;
  tabcontent = document.getElementsByClassName("tabcontent");
  for (i = 0; i < tabcontent.length; i++) {
    tabcontent[i].style.display = "none";
  }
  tablinks = document.getElementsByClassName("tablinks");
  for (i = 0; i < tablinks.length; i++) {
    tablinks[i].className = tablinks[i].className.replace(" active", "");
  }
  document.getElementById(tabName).style.display = "block";
  evt.currentTarget.className += " active";
}
	else 
		
  for (i = 0; i < tabcontent.length; i++) {
    tabcontent[i].style.display = "block";
  }
}

// Get the element with id="defaultOpen" and click on it
document.getElementById("defaultOpen").click();
		