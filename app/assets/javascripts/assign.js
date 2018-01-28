$(document).on('turbolinks:load', function(){
	$("#CNA-assign").click(function(){
		$("#assign").show();
	});

	$("#dashview1").click(function(){
		$("#assessmentNotTaken").toggle();
	});

	$("#dashview2").click(function(){
		$("#assessmentTaken").toggle();
	});

	$("#assessmentSubmit").click(function(){
		$("#courseReport").show();
		$("#course").hide();
	});
});