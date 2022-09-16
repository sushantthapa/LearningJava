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
<script src="https://code.iconify.design/iconify-icon/1.0.0/iconify-icon.min.js"></script>
<script src="https://code.iconify.design/iconify-icon/1.0.0/iconify-icon.min.js"></script>
</head>
<body>

	<center>
		
		<div class="wrapper">
			<div class="select-btn">
				<span>Select Country</span> <iconify-icon id="angledown"  icon="uil:angle-down"></iconify-icon>
			</div>
			<div class="content">
				<div class="search">
					<iconify-icon id="searchicon" icon="uil:search"></iconify-icon> 
					<input type="text"placeholder="Search">

				</div>
				<ul class="options">
				<% 	for (int i = 0; i < ll.size(); i++)
					{
					%>
					<li><%=ll.get(i)%></li>
					<% } %>				
				</ul>

			</div>


		</div>


	<a href="form.jsp">form>></a>




	</center>

<style>
	body{
		background:#90ee90;
	}
	.wrapper{
	width:370px;
	margin:130px auto 0;
	}
	.select-btn{
		height:65px;
		font-size:22px;
		display:flex;
		cursor:pointer;
		align-items:center;
		padding:0 20px;
		border-radius:7px;
		background:#fff;
		justify-content:space-between;
	}
	.select-btn #angledown{
		font-size:31px;
		transition:transform 0.3s linear;
		
		
	}
	
	.wrapper.active .select-btn #angledown{
		transform:rotate(-180deg);
	}
	
	
	
	
	
	
	.content{
	display:none;
	padding:20px;
	margin-top:15px;
	border-radius:7px;
	background:#fff;
	}
	
	.wrapper.active .content{
		display:block;
	}
	
	
	
	.content .search{
		position:relative;
		margin-right:60px;
	}
	
	.content .search #searchicon{
		margin-top:12px;
		left:15px;
		color:#999;
		font-size:27px;
		line-height:53px;
		position:absolute;
	}
	
	.search input{
		height:53px;
		width:100%;
		outline:none;
		font-size:17px;
		border-radius:5px;
		padding:0 15px 0 43px;
		border:1px solid #b3b3b3;
		
	
	}
	
	.content .options{
	margin-top:10px;
	max-height:250px;
	overflow-y:auto;
	}
	
	.options::webkit-scrollbar{
		width:7px;
	}
	
	.options::webkit-scrollbar-track{
	background:#f1f1f1;
	border-radius:25px;
	
	}
	.options::webkit-scrollbar-thumb{
	background:#ccc;
	border-radius:25px;
	}
	
	
	
	.options li{
	height:50px;
	padding:4px 13px;
	
	font-size:21px;
	border-radius:5px;
	list-style:none;
	margin-right:40px;
	
	
	}
	.options li:hover{
	background:#f2f2f2;
	}
	
	
</style>


</body>
<script type="text/javascript">



	const wrapper = document.querySelector(".wrapper"),
	selectBtn = wrapper.querySelector(".select-btn");
	
	selectBtn.addEventListener("click", () => {
		wrapper.classList.toggle("active");
	})
	
	




</script>





</html>