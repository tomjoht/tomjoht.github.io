$(document).ready(function() {
	$("#signup-form").submit(function(e){
		e.preventDefault(); 
		
		var $form = $(this),
		name = $form.find('input[name="name"]').val(),
		email = $form.find('input[name="email"]').val(),
		url = $form.attr('action');
		
		$.post(url, {name:name, email:email},
		  function(data) {
		      if(data)
		      {
		      	if(data=="Some fields are missing.")
		      	{
			      	$("#status").text("Please fill in your name and email.");
			      	$("#status").css("color", "red");
		      	}
		      	else if(data=="Invalid email address.")
		      	{
			      	$("#status").text("Your email address is invalid.");
			      	$("#status").css("color", "red");
		      	}
		      	else if(data=="Invalid list ID.")
		      	{
			      	$("#status").text("Your list ID is invalid.");
			      	$("#status").css("color", "red");
		      	}
		      	else if(data=="Already subscribed.")
		      	{
			      	$("#status").text("You're already subscribed!");
			      	$("#status").css("color", "red");
		      	}
		      	else
		      	{
			      	$("#status").text("You're subscribed!");
			      	$("#status").css("color", "green");
		      	}
		      }
		      else
		      {
		      	alert("Sorry, unable to subscribe. Please try again later!");
		      }
		  }
		);
	});
	$("#signup-form").keypress(function(e) {
		    if(e.keyCode == 13) {
		    	e.preventDefault(); 
				$(this).submit();
		    }
		});
	$("#submit-btn").click(function(e){
		e.preventDefault(); 
		$("#signup-form").submit();
	});
});