$(document).ready(function () {
	$(".hint").css("display","none");
    console.log("Hey There!");
	$("#submit_login").on("click",function(){
		var user = $("#user").val();
		var pass = $("#pass").val();
		$.ajax({
			type:"POST",
			url: "login.php",
			data:{user:user,pass:pass},
			success: function(result){
				console.log(result);
				// result = JSON.parse(result);
				if (result == 1) {
					window.location = "index.php";
					$(".hint").css("display","none");
				}
				else{
					$(".hint").css("display","block");
				}
		    },
		    error:function(e){
		    	console.log(e);
		    }
		});
	});
});