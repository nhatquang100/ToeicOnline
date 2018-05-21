<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<footer>
	<div class="container">

		<div class="copy text-center">
			Copyright 2018 &copy; <a href='#'>Khóa luận tốt nghiệp 2018-TOEIC ONLINE</a>
		</div>

	</div>
</footer>
<script type="text/javascript">
	var password = document.getElementById("password")
	  , confirm_password = document.getElementById("password_confirm");

	function validatePassword(){
	  if(password.value != confirm_password.value) {
	    confirm_password.setCustomValidity("Passwords Don't Match");
	  } else {
	    confirm_password.setCustomValidity('');
	  }
	}

	password.onchange = validatePassword;
	confirm_password.onkeyup = validatePassword;
</script>

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://code.jquery.com/jquery.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script
	src="<%=request.getContextPath()%>/templates/admin/bootstrap/js/bootstrap.min.js"></script>
<script src="<%=request.getContextPath()%>/templates/admin/js/custom.js"></script>
</body>
</html>