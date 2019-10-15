<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

	<title>时间轴</title>
	<link rel="stylesheet" type="text/css" href="plug-in/jquery-time-11/css/history.css">
	<script type="text/javascript" src="plug-in/jquery-time-11/js/jquery.js"></script>
	<script type="text/javascript" src="plug-in/jquery-time-11/js/jquery.mousewheel.js"></script>
	<script type="text/javascript" src="plug-in/jquery-time-11/js/jquery.easing.js"></script>
	<script type="text/javascript" src="plug-in/jquery-time-11/js/history.js"></script>


</head>

<body>

<div id="arrow">
	<ul>
		<li class="arrowup"></li>
		<li class="arrowdown"></li>
	</ul>
</div>

<div id="history" style="margin-top: 5px;margin-left:-50px;">

	<div id="content">

		<ul class="list">
			<%--<c:forEach items="${taskList}" var="task" varStatus="status">
				<li>
					<div class="liwrap">
						<div class="lileft">
							<div class="date">
								<span class="year">${task.startTime}</span>
							</div>
						</div>
						<div class="point"><b></b></div>
						<div class="liright">
							<div class="histt"><a style="font-size: 14px;">${task.NAME_}</a></div>
							<div class="histt"><a style="font-size: 12px;"><c:if test="${task.TASK_DEF_KEY_ eq 'materialTask'}">【${task.workname}】发起原料面料需求开发单，单号：${emkMaterial.materialNo}</c:if>
								<c:if test="${task.TASK_DEF_KEY_ eq 'checkTask'}">审核人【${emkMaterial.leader}】,处理意见：${emkMaterial.leadAdvice}</c:if>
							</a></div>
						</div>
					</div>
				</li>
			</c:forEach>--%>

				<li>
					<div class="liwrap">
						<div class="lileft">
							<div class="date">
								<span class="year">${createDate}</span>
							</div>
						</div>
						<div class="point"><b></b></div>
						<div class="liright">
							<div class="histt"><a style="font-size: 14px;">样品材料采购单</a></div>
							<div class="histt"><a style="font-size: 12px;">【${approvalEntity.createName}】发起样品材料采购单，单号：${approvalEntity.workNum}
							</a></div>
						</div>
					</div>
				</li>
				<c:forEach items="${approvalDetailEntityList}" var="task" varStatus="status">
					<li>
						<div class="liwrap">
							<div class="lileft">
								<div class="date">
									<span class="year">${task.approveDate}</span>
								</div>
							</div>
							<div class="point"><b></b></div>
							<div class="liright">
								<div class="histt"><a style="font-size: 14px;">${task.bpmName}</a></div>
								<div class="histt"><a style="font-size: 12px;">
									审核人【${task.createName}】，处理意见：${task.approveAdvice}
								</div>
							</div>
						</div>
					</li>

				</c:forEach>
		</ul>

	</div>

</div>


</body>

</html>