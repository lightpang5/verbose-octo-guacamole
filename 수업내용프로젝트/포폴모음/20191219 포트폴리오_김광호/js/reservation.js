//<!--회원가입스크립트랑 스타일-->
$(function() {
		  $('#forgot_username_link').tipsy({gravity: 'w'});   
		});

$(document).ready(function() {

				$(".signin").click(function(e) {          
					e.preventDefault();
					$("fieldset#signin_menu").toggle();
					$(".signin").toggleClass("menu-open");
				});
				
				$("fieldset#signin_menu").mouseup(function() {
					return false
				});
				$(document).mouseup(function(e) {
					if($(e.target).parent("a.signin").length==0) {
						$(".signin").removeClass("menu-open");
						$("fieldset#signin_menu").hide();
					}
				});			
				
		});

$(window).load(function() {
	$('#featured').orbit();
	});
	</script>
    <script>
  	$(function(){
    var shrinkHeader = 30;
    $(window).scroll(function() {
    var scroll = getCurrentScroll();
    if ( scroll >= shrinkHeader ) {
    $('#navtop').addClass('shrink');	   
    }else {
    $('#navtop').removeClass('shrink');	
    }
});
    function getCurrentScroll() {
    return window.pageYOffset || document.documentElement.scrollTop;
    }
});

$(function(){
		 var shrinkHeader = 30;
		 var shrinkhollow = 465;
		  $(window).scroll(function() {
			var scroll = getCurrentScroll();
			  if ( scroll >= shrinkHeader ) {
				   $('#navtop').addClass('shrink');  
				}
				else {
					$('#navtop').removeClass('shrink');	
				}
			   if(scroll>= shrinkhollow ){
					$('#navtop').addClass('shrinkhollow');  
				}
				else {
					$('#navtop').removeClass('shrinkhollow');	
				}
	});
	function getCurrentScroll() {
		return window.pageYOffset || document.documentElement.scrollTop;
		}
	});