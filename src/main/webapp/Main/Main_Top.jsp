<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>MainTop</title>
<link rel="stylesheet" href="../style/style_HeaderFooter.css">
</head>
<body>

<% // 메인 페이지로 이동했을 때 세션에 값이 담겨있는지 체크 
    String uID = null;
    if(session.getAttribute("uID") != null){
    	uID = (String)session.getAttribute("uID"); 
    	} 
    String authority = null;
    if(session.getAttribute("authority") != null){ 
    	authority = (String)session.getAttribute("authority"); 
    	}
    %> 
    <div id="wrap">
    
    <!-- HTML템플릿(Template, Templet) 헤더 시작 -->

        <header id="header" class="flex-container">
        
            
            <div id="logo">
                <a href="index.html"><img src="../Logo.png" alt=""></a>

            </div>
            <nav id="nav1" class="flex-container">
                <ul id="goods" class="nav1List"><a href="#">shop</a>
                    <li class="goods1"><a href="#">품목1</a></li>
                    <li class="goods1"><a href="#">품목2</a></li>
                    <li class="goods1"><a href="#">품목3</a></li>
                    <li class="goods1"><a href="#">품목4</a></li>
                    <li class="goods1"><a href="#">품목5</a></li>
                </ul>
                <ul class="nav1List"><a href="#">LookBook</a></ul>
                <ul class="nav1List"><a href="#">About</a></ul>
                <ul id="board1" class="nav1List"><a href="#">Board</a>
                    <li class="board"><a href="../Notice/NoticeList.jsp">Notice</a></li>
                    <li class="board"><a href="../Q&A/QnAList.jsp">Q&A</a></li>
                    <li class="board"><a href="../Review/ReviewList.jsp">Review</a></li>
                </ul>
            </nav>
             
            <nav id="nav2" class="flex-container">
            <% if(uID == null){ /* 로그인 안되있을때 */ %>
                <ul class="nav2List"><a href="../Account/Login.jsp">Login</a></ul>
                <ul class="nav2List"><a href="../Account/Join.jsp">Account</a></ul>
			<%  }
            
            else if(uID !=null && authority.equals("user")){ %> <!-- 로그인이 되있을때 -->
				<ul class="nav2List"><a href="../Account/LogoutAction.jsp">LogOut</a></ul>
                <ul class="nav2List"><a href="../GoodsUpload/MyBasket.jsp">Cart</a></ul>
                <ul class="nav2List"><a href="../Account/Mypage.jsp">MyPage</a></ul>
			<% } 
            else if(uID !=null && authority.equals("admin")){
			%>
			<p>안녕하세요 <%=uID %>님! 관리자 권한입니다!</p>
				<ul><a href="../Account/LogoutAction.jsp">LogOut</a></ul>
				<ul><a href="../GoodsUpload/GoodsUpload.jsp">GoodsUpload</a></ul>
			<% } %>
                <ul id="search1"><a href="#">Search</a>
                    <li class="search2"><input type="text" placeholder="검색어를 입력해주세요"><a href="#" id="searcha">검색</a></li>
                </ul>
                
            </nav>
            

        </header>
        </div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="../script/script_Review.js"></script>
</body>
</html>
