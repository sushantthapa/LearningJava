<%@page import="java.util.HashMap"%>
<%@page import="com.techmind.dropdown.DropDown"%>
<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<%
DropDown dd = new DropDown();
List ll = dd.getDropDownList();
%>





<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://code.iconify.design/iconify-icon/1.0.0/iconify-icon.min.js"></script>
<script
	src="https://code.iconify.design/iconify-icon/1.0.0/iconify-icon.min.js"></script>

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<link
	href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css"
	rel="stylesheet" />
<script
	src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>


</head>
<body>

	<center>

		<div class="wrapper">
			<div class="select-btn">
				<span>Select Bank Name</span>
				<iconify-icon id="angledown" icon="uil:angle-down"></iconify-icon>
			</div>
			<div class="content">
				<div class="search">
					<iconify-icon id="searchicon" icon="uil:search"></iconify-icon>
					<input id="wtf" class="nvm" type="text" placeholder="Search">

				</div>
		<ul id="originallists" class="options">
					<%
					for (int i = 0; i < ll.size(); i++) {
					%>
					<li id="itemslist" onclick="updateName(this)"><%=ll.get(i)%></li>
					<%
					}
					%>
				</ul> 
				
				<ul id="options1" class="options">
				
				</ul>
				
				
				

			</div>


		</div>


		<a href="form.jsp">form>></a>

<select>
<% 
for (int i = 0; i < ll.size(); i++) {
					%>
					<option><%=ll.get(i)%></option>
					<%
					}
					%>
	<option></option>
	
</select>



	</center>
	
                

	<style>
body {
	background: #90ee90;
}

.wrapper {
	width: 370px;
	margin: 130px auto 0;
}

.select-btn {
    width: 360px;
	height: 65px;
	font-size: 22px;
	display: flex;
	cursor: pointer;
	align-items: center;
	padding: 0 20px;
	border-radius: 7px;
	background: #fff;
	justify-content: space-between;
}

.select-btn #angledown {
	font-size: 31px;
	transition: transform 0.3s linear;
}

.wrapper.active .select-btn #angledown {
	transform: rotate(-180deg);
}

.content {
	display: none;
	padding: 20px;
	margin-top: 15px;
	border-radius: 7px;
	background: #fff;
	position:absolute;
	width: 360px;
}

.wrapper.active .content {
	display: block;
}

.content .search {
	position: relative;
	margin-right: 60px;
}

.content .search #searchicon {
	margin-top: 12px;
	left: 15px;
	color: #999;
	font-size: 27px;
	line-height: 53px;
	position: absolute;
}

.search input {
	height: 53px;
	width: 100%;
	outline: none;
	font-size: 17px;
	border-radius: 5px;
	padding: 0 15px 0 43px;
	border: 1px solid #b3b3b3;
}

.content .options {
	margin-top: 10px;
	max-height: 250px;
	overflow-y: auto;
}

.options::webkit-scrollbar {
	width: 7px;
}

.options::webkit-scrollbar-track {
	background: #f1f1f1;
	border-radius: 25px;
}

.options::webkit-scrollbar-thumb {
	background: #ccc;
	border-radius: 25px;
}

.options li {
	height: 50px;
	padding: 4px 13px;
	font-size: 21px;
	border-radius: 5px;
	list-style: none;
	margin-right: 40px;
	
}

.options li:hover {
	background: #f2f2f2;
}
</style>


</body>

<script type="text/javascript">


const wrapper = document.querySelector(".wrapper"),
searchInp = wrapper.querySelector(".nvm"),
selectBtn = wrapper.querySelector(".select-btn");

selectBtn.addEventListener("click", () => {
	wrapper.classList.toggle("active");
});




</script>

<script type="text/javascript">
/* if(inputvalue.length >0)
{
	$("#originallists").hide();
} */
$(document).on('keydown','.nvm',function(){
	
	console.log("Testinnnnnnnnnnnnnnnnnnnnnnnnng.....");
	
	

	$('#wtf').autocomplete({
		source: function(request,response)
	{
			$.ajax({
				url:"getDropdownlist.jsp",
				type:'post',
				dataType:"json",
				data:{
					keyword:request.term
				},
			success:function(data)
			{
				 var content = '';
			$.each(data, function(i,namelis){
				
				content += '<li onclick="updateName(this)">' +  namelis.name + "</li>";
				
				
			});		
		
			/* $(content).appendTo("#options1"); */
			$("#options1").html(content);
			
			var inputval = document.getElementById("wtf").value;
			console.log(inputval.length);
			if(inputval.length > 0)
				{
				 $("#originallists").hide(); 
				
				}
			
			
			
			
			}
				
			});
	},
	
	
	});



});

/* sets the value in dropdown */

function updateName(selectedLi){
	wrapper.classList.remove("active");
	console.log(selectedLi.innerText);
	selectBtn.firstElementChild.innerText = selectedLi.innerText;
	
}




</script>




</html>