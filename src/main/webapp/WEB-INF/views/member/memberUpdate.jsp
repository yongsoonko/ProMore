<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<c:set var="root" value="${pageContext.request.contextPath}" />
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>회원 정보 수정</title>

<!-- Custom fonts for this template-->
<link href="${root}/resources/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template-->
<link href="${root}/resources/css/sb-admin-2.min.css" rel="stylesheet">

</head>
<body id="page-top">

	<!-- Page Wrapper -->
	<div id="wrapper">

		<!-- Sidebar -->
		<jsp:include page="/WEB-INF/template/sidebar.jsp" />

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">

			<!-- Main Content -->
			<div id="content">

				<!-- Topbar -->
				<jsp:include page="/WEB-INF/template/topbar.jsp" />

				<!-- Begin Page Content -->
				<div class="container-fluid">

					<!-- Page Heading -->
					<div
						class="d-sm-flex align-items-center justify-content-between mb-4">
						<h1 class="h3 mb-0 text-gray-800">회원 정보 수정</h1>
					</div>

					<!-- 여기에 코드를 넣어주세요!! -->

					<!-- 회원 정보 수정 -->
					<div
						class="d-sm-flex align-items-center justify-content-center mb-4">
						<div class="col-lg-8">
							<div class="card shadow-lg my-5">

								<!-- Card Header -->
								<div class="card-header">
									<div style="text-align: center; align-content: center;">
										<a href="${root}/customer/notice.do" class="btn btn-lg"
											style="float: left; margin-left: 0px; padding-left: 0px;">
											<span class="icon"> <i class="fas fa-arrow-left"></i>
										</span>
										</a>
										<h4 class="m-0 font-weight-bold text-primary p-2">회원 정보
											수정</h4>
									</div>
								</div>

								<!-- Card Body -->
								<div class="card-body">
									<form name="updateForm" action="${root}/member/memberUpdateOk.do" method="post" onsubmit="return memberUpdateCheck(this, '${memberDto.memPassword}');">
									
										<input type="hidden" name = "memNum" value="${memberDto.memNum}" />
									
										<!-- 아이디 -->
										<div class="form-group row">
											<label for="staticId" class="col-sm-3 col-form-label">아이디</label>
											<div class="col-sm-9">
												<input type="text" readonly class="form-control-plaintext" name="memId"
													id="staticId" value="${memberDto.memId}">
											</div>
										</div>

										<!-- 이름 -->
										<div class="form-group row">
											<label for="staticName" class="col-sm-3 col-form-label">이름</label>
											<div class="col-sm-9">
												<input type="text" readonly class="form-control-plaintext" name="memName"
													id="staticName" value="${memberDto.memName}">
											</div>
										</div>

										<!-- 닉네임 -->
										<div class="form-group row">
											<label for="changeNickName" class="col-sm-3 col-form-label">닉네임</label>
											<div class="col-sm-9">
												<input type="text" class="form-control" id="changeNickName" name="memNickname"
													value="${memberDto.memNickname}">
											</div>
										</div>

										<!-- 비밀번호 -->
										<div class="form-group row">
											<label for="inputPassword3" class="col-sm-3 col-form-label">비밀번호</label>
											<div class="col-sm-9">
												<input type="password" class="form-control"
													id="inputPassword3" placeholder="비밀번호를 입력하세요." name="password">
											</div>
										</div>

										<!-- 비밀번호 확인 -->
										<div class="form-group row">
											<label for="inputPassword4" class="col-sm-3 col-form-label">비밀번호
												확인</label>
											<div class="col-sm-9">
												<input type="password" class="form-control"
													id="inputPassword4" placeholder="비밀번호를 다시 한 번 입력하세요." name="passwordCheck">
											</div>
										</div>

										<!-- 등급 -->
										<div class="form-group row">
											<label for="staticLevel" class="col-sm-3 col-form-label">등급</label>
											<div class="col-sm-9">
												<input type="text" readonly class="form-control-plaintext" name="memLevel"
													id="staticLevel" value="${memberDto.memLevel}">
											</div>
										</div>

										<!-- 휴대폰 번호 -->
										<div class="form-group row">
											<label for="changePhone" class="col-sm-3 col-form-label">휴대폰
												번호</label>
											<div class="col-sm-9">
												<input type="phone" class="form-control" id="changePhone" name="memPhone"
													value="${memberDto.memPhone}"> <span
													class="m-0 pl-2">('-'을 제외한 숫자만 입력해주세요. ex :
													01012345678)</span>
											</div>
										</div>

										<!-- 이메일 -->
										<div class="form-group row">
											<label for="changeEmail" class="col-sm-3 col-form-label">이메일</label>
											<div class="col-sm-9">
												<input type="email" class="form-control" id="changeEmail" name="memEmail"
													value="${memberDto.memEmail}">
											</div>
										</div>

										<!-- 메일 수신 -->
										<div class="form-group row">
											<label class="col-sm-3 col-form-label">이메일 수신 여부</label>
											<div class="col-sm-9">
												<div class="form-check-inline">
													<label class="form-check-label"> <input
														type="radio" class="form-check-input" id="yes" name="memMailing"
														value="1">수신
													</label>
												</div>
												<div class="form-check-inline">
													<label class="form-check-label"> <input
														type="radio" class="form-check-input" id="no" name="memMailing"
														value="0">수신 안함
													</label>
												</div>

												<script type="text/javascript">
													for (var i = 0; i < updateForm.memMailing.length; i++) {
														if (updateForm.memMailing[i].value == "${memberDto.memMailing}") {
															updateForm.memMailing[i].checked = true;
														}
													}
												</script>
											</div>
										</div>

										<!-- 보유 기술 (사용 스킬) -->
										<div class="form-group row">
											<label for="comment" class="col-sm-3 col-form-label">보유기술</label>
											<div class="col-sm-9">
												<textarea class="form-control" rows="5" id="comment" name="memSkills">${memberDto.memSkills}</textarea>
											</div>
										</div>

										<!-- 초기화 -->
										<button type="reset" class="btn btn-secondary mb-2 col-sm-12">
											<span class="text">초기화</span>
										</button>
										<br />

										<!-- 수정 완료 -->
										<button type="submit" class="btn btn-primary col-sm-12">
											<span class="text">수정 완료</span>
										</button>

									</form>
								</div>
							</div>
						</div>
					</div>


				</div>
				<!-- /.container-fluid -->

			</div>
			<!-- End of Main Content -->

			<!-- Footer -->

			<!-- End of Footer -->

		</div>
		<!-- End of Content Wrapper -->

	</div>
	<!-- End of Page Wrapper -->

	<!-- Scroll to Top Button-->
	<a class="scroll-to-top rounded" href="#page-top"> <i
		class="fas fa-angle-up"></i>
	</a>
	
	<!-- Member Update Model -->
	<div class="modal fade" id="memberUpdateModal" tabindex="-1" role="dialog" >
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-body">
					<h5 class="modal-title">수정을 완료하시겠습니까?</h5>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
					<button type="button" class="btn btn-primary" onclick="memberUpdateOk('${root}');">확인</button>
				</div>
			</div>
		</div>
	</div>

	<!-- Bootstrap core JavaScript-->
	<script src="${root}/resources/vendor/jquery/jquery.min.js"></script>
	<script
		src="${root}/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Core plugin JavaScript-->
	<script
		src="${root}/resources/vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Custom scripts for all pages-->
	<script src="${root}/resources/js/sb-admin-2.min.js"></script>
	
	<!-- Member JavaScript-->
	<script src="${root}/resources/js/member/member.js"></script>
	
</body>
</html>