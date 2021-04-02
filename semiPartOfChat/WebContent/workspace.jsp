<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% request.setCharacterEncoding("UTF-8"); %>
<% response.setContentType("text/html; charset=UTF-8"); %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>CHANNEL / Workspace / ${loginDto.member_name }</title>
<!-- 부트스트랩, JQUERY -->
<script type="text/javascript" src="resources/js/jquery-3.6.0.min.js"></script>
<script src="resources/js/bootstrap.min.js"></script>
<script type="text/javascript" src="resources/js/workspace.js"></script>
<link href="resources/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<%@include file="common.jsp" %>
<input type="hidden" id="member_num" value="24"> <!-- 임시 맴버 넘버 값 -->
<div id="workspaceArea">
	워크스페이스 테스트 영역<br>
	<button type="button" class="btn btn-default btn-lg btn-block"
	data-toggle="modal" data-target="#addWorkSpaceForm" >새 워크스페이스 생성</button>
	<div class="modal fade" id="addWorkSpaceForm" tabindex="-1" role="dialog" aria-labelledby="addChannelLable" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h3 class="modal-title" id="addChannelLable">새 워크스페이스 추가</h3>
				</div>
				<div class="modal-body">
					<form action="WorkSpaceController" method="post" id="workspaceAddSubmit">
						<div id="workspaceCommand">
							<input type="hidden" name="command" value="addWorkSpace">
						</div>
						
						<div class="form-group">
							<label for="recipient-name" class="control-label">회사명을 입력해주세요.</label>
							<input type="text" class="form-control" name="workspace_name">
						</div>
						<div class="form-group">
							<label for="message-text" class="control-label">무슨 일을 하는 회사인가요? 회사정보입력</label>
							<textarea class="form-control" name="workspace_information"></textarea>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
					<button type="submit" class="btn btn-primary" form="workspaceAddSubmit">생성하기</button>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>