<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="root" value="${pageContext.request.contextPath}" />

<script type="text/javascript">
	function pressEnterkey() {
		if (window.event.keyCode == 13) {
			searchText();
		}
	}
	function searchText() {
		var input, filter, txtValue;

		input = document.getElementById('myInput');
		filter = input.value.toUpperCase();

		var projectName = document.getElementsByClassName('projectName');

		for (var i = 0; i < projectName.length; i++) {
			txtValue = projectName[i].innerText.replace(/\s/gi, "");

			if (txtValue.toUpperCase().indexOf(filter) > -1) {
				document.getElementsByClassName('flip-card')[i].style.display = "block";
			} else {
				document.getElementsByClassName('flip-card')[i].style.display = "none";
			}
		}
	}
</script>

<!-- Top bar -->
<nav
	class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

	<!-- Side bar Toggle (Top bar) -->
	<button id="sidebarToggleTop"
		class="btn btn-link d-md-none rounded-circle mr-3">
		<i class="fa fa-bars"></i>
	</button>

	<!-- Top bar Search -->
	<form
		class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search"
		onsubmit="return false">
		<div class="input-group">
			<input id="myInput" onkeypress="pressEnterkey()" type="text"
				class="form-control bg-light border-0 small"
				placeholder="Search for..." aria-label="Search"
				aria-describedby="basic-addon2">
			<div class="input-group-append">
				<button class="btn btn-primary" type="button" onclick="searchText()">
					<i class="fas fa-search fa-sm"></i>
				</button>
			</div>
		</div>
	</form>

	<!-- Top bar - Nav bar -->
	<ul class="navbar-nav ml-auto">

		<!-- Nav Item - Search Drop down (Visible Only XS) -->
		<li class="nav-item dropdown no-arrow d-sm-none"><a href="#"
			class="nav-link dropdown-toggle" id="searchDropdown" role="button"
			data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				<i class="fas fa-search fa-fw"></i>
		</a> <!-- Drop down - Messages -->
			<div
				class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
				aria-labelledby="searchDropdown">
				<form class="form-inline mr-auto w-100 navbar-search">
					<div class="input-group">
						<input type="text" class="form-control bg-light border-0 small"
							placeholder="Search for..." aria-label="Search"
							aria-describedby="basic-addon2">
						<div class="input-group-append">
							<button class="btn btn-primary" type="button">
								<i class="fas fa-search fa-sm"></i>
							</button>
						</div>
					</div>
				</form>
			</div></li>



		<!-- 보류 기능 - 알림, 쪽지 -->
		<%--

		<!-- Nav Item - Alerts -->
		<li class="nav-item dropdown no-arrow mx-1">
			
			<!-- Button - Alerts -->
			<a href="#" class="nav-link dropdown-toggle"
				id="alertsDropdown" role="button" data-toggle="dropdown" 
				aria-haspopup="true" aria-expanded="false"> 
				
				<!-- Icon - Alerts -->
				<i class="fas fa-bell fa-fw"></i> 
				
				<!-- Counter - Alerts -->
				<span class="badge badge-danger badge-counter">1</span>
			</a> 
		
			<!-- Drop down - Alerts -->
			<div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
				aria-labelledby="alertsDropdown">
				
				<!-- 타이틀 -->
				<h6 class="dropdown-header">Alerts Center</h6>
				
				<!-- 정보 -->
				<a class="dropdown-item d-flex align-items-center" href="#">
					<div class="mr-3">
						<div class="icon-circle bg-primary">
							<i class="fas fa-file-alt text-white"></i>
						</div>
					</div>
					<div>
						<div class="small text-gray-500">August 7, 2020</div>
						<span class="font-weight-bold">팀원 확정이 완료되었습니다.</span>
					</div>
				</a> 
				<a class="dropdown-item d-flex align-items-center" href="#">
					<div class="mr-3">
						<div class="icon-circle bg-primary">
							<i class="fas fa-file-alt text-white"></i>
						</div>
					</div>
					<div>
						<div class="small text-gray-500">August 2, 2020</div>
						<span class="font-weight-bold">새로운 프로젝트가 개설되었습니다.</span>
					</div>
				</a> 
				
				<a class="dropdown-item d-flex align-items-center" href="#">
					<div class="mr-3">
						<div class="icon-circle bg-warning">
							<i class="fas fa-exclamation-triangle text-white"></i>
						</div>
					</div>
					<div>
						<div class="small text-gray-500">August 1, 2020</div>
						김소현님, 회원가입을 축하합니다!
					</div>
				</a>
				<a class="dropdown-item text-center small text-gray-500" href="#">Show All Alerts</a>
			</div>
		</li>

		<!-- Nav Item - Messages -->
		<li class="nav-item dropdown no-arrow mx-1">
		
			<!-- Button - Messages -->
			<a href="#" class="nav-link dropdown-toggle" 
				id="messagesDropdown" role="button" data-toggle="dropdown" 
				aria-haspopup="true" aria-expanded="false"> 
				
				<i class="fas fa-envelope fa-fw"></i> 
				
				<!-- Counter - Messages -->
				<span class="badge badge-danger badge-counter">7</span>
			</a>

			<!-- Drop down - Messages -->
			
		</li>
		--%>

		<!-- 관리자용  top bar -->

		<c:if test="${memberDto.memLevel=='관리자'}">

			<!-- Nav Item - User Information -->
			<li class="nav-item dropdown no-arrow"><a
				class="nav-link dropdown-toggle" href="#" id="userDropdown"
				role="button" data-toggle="dropdown" aria-haspopup="true"
				aria-expanded="false"> <img
					class="mr-2 img-profile rounded-circle"
					src="https://source.unsplash.com/QAB-WJcbgJk/60x60"> <span
					class="d-none d-lg-inline text-gray-600 small">관리자 페이지입니다.</span>
			</a> <!-- Drop down -->
				<div
					class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
					aria-labelledby="alertsDropdown">

					<!-- 타이틀 -->
					<h6 class="dropdown-header">Manager Profile</h6>

					<!-- 정보 -->
					<div class="dropdown-item d-flex align-self-center py-3">
						<label class="small text-gray-500 m-0"
							style="width: 35% !important;">아이디</label> <label
							class="font-weight m-0" style="width: 65% !important;">${memberDto.memId}</label>
					</div>
					<div class="dropdown-item d-flex align-self-center py-3">
						<label class="small text-gray-500 m-0"
							style="width: 35% !important;">등급</label> <label
							class="font-weight m-0" style="width: 65% !important;">${memberDto.memLevel}</label>
					</div>
					<div class="dropdown-item d-flex align-self-center py-3">
						<label class="small text-gray-500 m-0"
							style="width: 35% !important;">이름</label> <label
							class="font-weight m-0" style="width: 65% !important;">${memberDto.memName}</label>
					</div>
					<div class="dropdown-item d-flex align-self-center py-3">
						<label class="small text-gray-500 m-0"
							style="width: 35% !important;">닉네임</label> <label
							class="font-weight m-0" style="width: 65% !important;">${memberDto.memNickname}</label>
					</div>
					<div class="dropdown-item d-flex align-self-center py-3">
						<label class="small text-gray-500 m-0"
							style="width: 35% !important;">휴대폰 번호</label> <label
							class="font-weight m-0" style="width: 65% !important;">${memberDto.memPhone}</label>
					</div>
					<div class="dropdown-item d-flex align-self-center py-3">
						<label class="small text-gray-500 m-0"
							style="width: 35% !important;">이메일 주소</label> <label
							class="font-weight m-0" style="width: 65% !important;">${memberDto.memEmail}</label>
					</div>

					<a href="#"
						class="dropdown-item d-flex justify-content-center align-self-center"
						data-toggle="modal" data-target="#logoutModal"> <i
						class="fas fa-sign-out-alt mt-1 mr-2 text-gray-400"></i> <label
						class="small text-gray-500 m-0">로그아웃</label>
					</a>
				</div></li>

		</c:if>

		<!-- 비회원용 top bar -->


		<!-- 회원용 top bar -->

		<c:if test="${memberDto.memLevel=='팀원' || memberDto.memLevel=='팀장'}">


			<!-- Nav Item - User Information -->
			<li class="nav-item dropdown no-arrow"><a
				class="nav-link dropdown-toggle" href="#" id="userDropdown"
				role="button" data-toggle="dropdown" aria-haspopup="true"
				aria-expanded="false"> <span
					class="mr-2 d-none d-lg-inline text-gray-600 small"><b
						style="font-size: 1rem;">${memberDto.memName}</b> 님 환영합니다!</span> <img
					class="img-profile rounded-circle"
					src="https://source.unsplash.com/QAB-WJcbgJk/60x60">
			</a> <!-- Drop down -->
				<div
					class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
					aria-labelledby="alertsDropdown">

					<!-- 타이틀 -->
					<h6 class="dropdown-header">My Profile</h6>

					<!-- 정보 -->
					<div class="dropdown-item d-flex align-self-center py-3">
						<label class="small text-gray-500 m-0"
							style="width: 35% !important;">아이디</label> <label
							class="font-weight m-0" style="width: 65% !important;">${memberDto.memId}</label>
					</div>
					<div class="dropdown-item d-flex align-self-center py-3">
						<label class="small text-gray-500 m-0"
							style="width: 35% !important;">등급</label> <label
							class="font-weight m-0" style="width: 65% !important;">${memberDto.memLevel}</label>
					</div>
					<div class="dropdown-item d-flex align-self-center py-3">
						<label class="small text-gray-500 m-0"
							style="width: 35% !important;">이름</label> <label
							class="font-weight m-0" style="width: 65% !important;">${memberDto.memName}</label>
					</div>
					<div class="dropdown-item d-flex align-self-center py-3">
						<label class="small text-gray-500 m-0"
							style="width: 35% !important;">닉네임</label> <label
							class="font-weight m-0" style="width: 65% !important;">${memberDto.memNickname}</label>
					</div>
					<div class="dropdown-item d-flex align-self-center py-3">
						<label class="small text-gray-500 m-0"
							style="width: 35% !important;">휴대폰 번호</label> <label
							class="font-weight m-0" style="width: 65% !important;">${memberDto.memPhone}</label>
					</div>
					<div class="dropdown-item d-flex align-self-center py-3">
						<label class="small text-gray-500 m-0"
							style="width: 35% !important;">이메일 주소</label> <label
							class="font-weight m-0" style="width: 65% !important;">${memberDto.memEmail}</label>
					</div>

					<a href="#"
						class="dropdown-item d-flex justify-content-center align-self-center"
						data-toggle="modal" data-target="#logoutModal"> <i
						class="fas fa-sign-out-alt mt-1 mr-2 text-gray-400"></i> <label
						class="small text-gray-500 m-0">로그아웃</label>
					</a>
				</div></li>

		</c:if>

		<!-- 비회원용 top bar -->

		<c:if test="${memberDto==null}">
			<!-- Nav Item - User Information -->

			<li class="nav-item small ml-2"><a
				class="nav-link text-gray-900" href="${root}/member/register.do">회원가입</a>
			</li>

			<li class="nav-item small"><a class="nav-link text-gray-900"
				href="${root}/index.jsp">로그인</a></li>

		</c:if>


	</ul>
</nav>

<!-- Logout Modal-->
<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog"
	aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel">로그아웃 하시겠습니까?</h5>
				<button class="close" type="button" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">×</span>
				</button>
			</div>
			<div class="modal-body">로그아웃을 누르면 정말 로그아웃 됩니다.</div>
			<div class="modal-footer">
				<button class="btn btn-secondary" type="button" data-dismiss="modal">취소</button>
				<a class="btn btn-primary" href="${root}/member/logout.do">로그아웃</a>
			</div>
		</div>
	</div>
</div>
