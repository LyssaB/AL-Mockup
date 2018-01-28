$(document).on('turbolinks:load', function(){
	$("#dashview1").click(function(){
		$("#assessmentNotTaken").toggle();
	});

	$("#dashview2").click(function(){
		$("#assessmentTaken").toggle();
	});
});