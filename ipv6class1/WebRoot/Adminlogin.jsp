<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String username = session.getAttribute("LoginName").toString();
%>


<!doctype html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">

<head>
	<title>XJTU_Class | 主页</title>
	<meta charset="utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />
	<!-- VENDOR CSS -->
	<link rel="stylesheet" href="assets/vendor/bootstrap/css/bootstrap.min.css" />
	<link rel="stylesheet" href="assets/vendor/font-awesome/css/font-awesome.min.css" />
	<link rel="stylesheet" href="assets/vendor/linearicons/style.css" />
	<!-- MAIN CSS -->
	<link rel="stylesheet" href="assets/css/main.css" />
	<!-- FOR DEMO PURPOSES ONLY. You should remove this in your project -->
	<link rel="stylesheet" href="assets/css/demo.css" />
	<!-- GOOGLE FONTS -->
	<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700" rel="stylesheet" />
	<!-- ICONS -->
	<link rel="apple-touch-icon" sizes="76x76" href="admin/images/logo7.png" />
	<link rel="icon" type="image/png" sizes="96x96" href="admin/images/logo7.png" />
</head>

<body>
	<!-- WRAPPER -->
	<div id="wrapper">
		<!-- NAVBAR -->
		<nav class="navbar navbar-default navbar-fixed-top" >
            <div class="brand" >
                <a href="index.jsp" >
                <img src="assets/img/logonew31.png" alt="Klorofil Logo" class="img-responsive logo" style="padding:0 0 0 0;margin:0 0 0 0" />
               </a>
            </div>
            <div class="container-fluid">
                <div class="navbar-btn navbar-btn-right">
                    <a class="btn btn-success update-pro" href="http://nic.xjtu.edu.cn" title="Upgrade to Pro" target="_blank"><i class="fa fa-rocket"></i> <span>网络中心</span></a>
                </div>
                <div id="navbar-menu">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="index.jsp" class="active"><i class="lnr lnr-home"></i> <span>主页</span></a></li>
                        <li><a href="Classtable.jsp" class=""><i class="lnr lnr-pencil"></i><span>课程</span></a></li>
                         <li><a href="Class.jsp" class=""><i class="lnr lnr-list"></i><span>课表</span></a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="lnr lnr-user"></i> <span><%=username %></span> <i class="icon-submenu lnr lnr-chevron-down"></i></a>
                            <ul class="dropdown-menu">
                            
                                <li>
                                <a href="<%=path%>/servlet/LogoutServlet"><i class="lnr lnr-exit"></i> <span>退出登录</span></a>                             
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
		<!-- END NAVBAR -->
		
		<!-- MAIN -->
		<div class="main" style="margin-top:50px">
			<!-- MAIN CONTENT -->
			<div class="main-content" >
				<div class="container-fluid" >
					<div class="panel panel-profile" >
						<div class="clearfix">
							<!-- LEFT COLUMN -->
							<div class="profile-left" style="width:20%" >
								<!-- PROFILE HEADER -->
								<div class="profile-header"  >
									<div class="overlay"></div>
									<div class="profile-main">
										<img src="assets/img/headtwo.jpg"  class="img-circle" alt="课程查看" />
										<h3 class="name" id="NameId" th:text="${user.username}"></h3>
									</div>
									<div class="profile-stat">
										<div class="row">
											<div class="col-md-6 stat-item" id="NETID">
												<span th:text="${user.userno}"><%=username %></span>
											</div>
											<div class="col-md-6 stat-item" id="Rolw">
												<span>管理员</span>
											</div>
										</div>
									</div>
								</div>
								<!-- END PROFILE HEADER -->
								<!-- PROFILE DETAIL -->
								<div class="profile-detail">
									<div class="profile-info">
										<h4 class="heading">基础信息</h4>
										<ul class="list-unstyled list-justify">
											<li>学生  <span th:text="${user.collenge}">信息列表</span></li>
											<li>课程<span th:text="${user.major}"> 课程列表</span></li>
											<li>电话<span th:text="${user.phone}">15928619058</span></li>
											<li>Email<span th:text="${user.email}">zhzh@stu.xjtu.edu.cn</span></li>
										</ul>
									</div>
								</div>
								<!-- END PROFILE DETAIL -->
							</div>
							<!-- END LEFT COLUMN -->
							<!-- RIGHT COLUMN -->
							<div class="profile-right" style="width:80%">
								<h4 class="heading">上次看到这里</h4>
								<!-- AWARDS -->
								<div class="mod_bd">
									
								</div>
								<!-- END AWARDS -->
								<!-- TABBED CONTENT -->
							
								<!-- END TABBED CONTENT -->
							</div>
							<!-- END RIGHT COLUMN -->
						</div>
					</div>
				</div>
			</div>
			<!-- END MAIN CONTENT -->
		</div>
		<!-- END MAIN -->
		<div class="clearfix"></div>
		
			<div class="container-fluid" style="width:100%;text-align:center">
				<p class="copyright" style="width:100%;text-align:center">&copy; 2017 版权所有：西安交通大学 站点建设与维护： 网络信息中心 陕ICP备06008037号</p>
			</div>
		
	</div>
	<!-- END WRAPPER -->
	<!-- Javascript -->
	<script src="assets/vendor/jquery/jquery.min.js"></script>
	<script src="assets/vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="assets/vendor/jquery-slimscroll/jquery.slimscroll.min.js"></script>
	<script src="assets/scripts/klorofil-common.js"></script>
</body>

</html>
