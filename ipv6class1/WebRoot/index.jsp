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
	<style>
	 .brand1{
		float: left;
		padding: 30px 59px;
      }
     
    .container-fluid1 {
	    padding-right: 205px;
	    padding-left: 15px;
	    padding-top: 35px;
	    margin-right: auto;
	    margin-left: auto;
	 }
	 .navbar-default .navbar-nav>li>a {
		    color: #fff;
     }
	 ul li a:hover >span
	  { 
		
		color:#fff;
	  }
	  ul li a:hover >i
	  { 
		color:#fff;
	  }
	  .img-circle1{
	    border-radius:50%;
	    width:120px;
	    height:120px;
	  }
	  .dropdown .open{
	  background-color: #11406c;
	  }
	</style>
</head>

<body style="padding-left: 200px;padding-right:200px">
	<!-- WRAPPER -->
	<div id="wrapper">
		<!-- NAVBAR -->
		<nav class="navbar navbar-default navbar-fixed-top" style="height:130px; background-color: #11406c;border-radius:5px;position: relative;" >
            <div class="brand1" >
                 <DIV class="logo" style="width:40%">       
				  <a href="index.htm" title="" onclick="" target="_blank">                          
				  <img src="./assets/img/logo_pic99.png" border="0">
				  </a>  
				 </DIV>
            </div>
            <div class="container-fluid1">
                <div class="navbar-btn navbar-btn-right">
                    <a class="btn btn-success update-pro" href="http://nic.xjtu.edu.cn" title="Upgrade to Pro" target="_blank"><i class="fa fa-rocket"></i> <span>网络中心</span></a>
                </div>
                <div id="navbar-menu">
                    <ul class="nav navbar-nav navbar-right"   style="font-color:#fff;float: left;list-style: none;display：block">
                        <li><a href="index.jsp" class="active" style=""><i class="lnr lnr-home"></i> <span>主页</span></a></li>
                        <li><a href="Classtable.jsp" class=""><i class="lnr lnr-pencil"></i><span>课程</span></a></li>
                         <li><a href="Class.jsp" class=""><i class="lnr lnr-list"></i><span>课表</span></a></li>
                        <li class="dropdown" style="background-color: #11406c;">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="lnr lnr-user"></i> <span><%=username %></span> <i class="icon-submenu lnr lnr-chevron-down"></i></a>
                            <ul class="dropdown-menu" style="font-color:#fff;">
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
		<div class="main" style="padding:0 0 0 0;height:700px" >
			<!-- MAIN CONTENT -->
			<div class="main-content" style="padding:0 0 0 0">
				<div class="container-fluid" style="margin-right: auto;margin-left: auto;padding:0  0 0 0" >
					<div class="panel panel-profile" >
						<div class="clearfix">
							<!-- LEFT COLUMN -->
							<div class="profile-left" style="width:230px;border-radius:15px;" >
								<!-- PROFILE HEADER -->
								<div class="profile-header"  >
									<div class="overlay"></div>
									<div class="profile-main">
										<img src="assets/img/headtwo.jpg"  class="img-circle1" alt="课程查看" />
										<h3 class="name" id="NameId" th:text="${user.username}"></h3>
									</div>
									<div class="profile-stat">
										<div class="row">
											<div class="col-md-6 stat-item" id="NETID">
												<span th:text="${user.userno}"><%=username %></span>
											</div>
											<div class="col-md-6 stat-item" id="Rolw">
												<span>学生</span>
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
											<li>学院  <span th:text="${user.collenge}">电信学院</span></li>
											<li>专业<span th:text="${user.major}"> 计算机科学与技术</span></li>
											<li>班级 <span th:text="${user.clazz}">计算机52</span></li>
											<li>电话<span th:text="${user.phone}">15928619058</span></li>
											<li>Email<span th:text="${user.email}">zhzh@stu.xjtu.edu.cn</span></li>
										</ul>
									</div>
								</div>
								<!-- END PROFILE DETAIL -->
							</div>
							<!-- END LEFT COLUMN -->
							<!-- RIGHT COLUMN -->
							<div class="profile-right" style="width:600px;margin-left:400px;float:left;border-radius:5px;text-align:center">
								<h4 class="heading">上次看到这里</h4>
								<!-- AWARDS -->
								<div class="mod_bd">
									<div class="figure_scroll figure_scroll_h_default _pager" data-type="h">
										<div class="mod_figure mod_figure_h mod_figure_h_default _quickopen">
											<ul class="figure_list">
												<li class="list_item">
													<a href="<%=path%>/servlet/sendURLMessageServlet?classname=大学物理" target="_blank" class="figure" style="width:100%;height:100%" tabindex="-1" __wind="" data-float="k0559hjg6rn" _stat="new_vs_activity:img" data-qpvid="k0559hjg6rn" data-qpcid="az24zfxwp076nn6">
														<img class="figure_pic" src="assets/img/phyclass.png" alt="计算机网络" onerror="picerr(this,'h')" />
														<span class="mark_quickplay"></span></a>
													<div class="figure_detail figure_detail_genius figure_detail_two_row">
														<strong class="figure_title figure_title_two_row">
															<a target="_blank" href="/playVideo" title="计算机网络" __wind="" _stat="new_vs_activity:title">
																大学物理
															</a>
														</strong>
																00:15:32
													</div>
												</li>
											</ul>
										</div>

									</div>
								</div>
								<!-- END AWARDS -->
								<!-- TABBED CONTENT -->
								<div class="custom-tabs-line tabs-line-bottom left-aligned">
									<ul class="nav" role="tablist">
										<li class="active"><a href="#tab-bottom-left1" role="tab" data-toggle="tab">最新课程</a></li>
										<li><a href="#tab-bottom-left2" role="tab" data-toggle="tab">已学习课程 <span class="badge" th:text="${studyes.size()}"></span></a></li>
									</ul>
								</div>
								<div class="tab-content">
									<div class="tab-pane fade in active" id="tab-bottom-left1">
										<ul class="list-unstyled activity-timeline" th:each="study:${studyes}">
												<li>
													<i class="fa fa-comment activity-icon">数</i>
													<p th:text="${study.coursename}">高等数学<a href="<%=path%>/servlet/sendURLMessageServlet?classname=高等数学">进入课程</a> <span class="timestamp">2017/10/15 16:00:00</span></p>
												</li>
												<li>
													<i class="fa fa-comment activity-icon">物</i>
													<p th:text="${study.coursename}">大学物理<a href="<%=path%>/servlet/sendURLMessageServlet?classname=大学物理">进入课程</a> <span class="timestamp">2017/10/16 8:00:00</span></p>
												</li>
										</ul>
										<div class="margin-top-30 text-center"><a href="Classtable.jsp" class="btn btn-default">查看所有课程</a></div>
									</div>
									<div class="tab-pane fade" id="tab-bottom-left2">
										<div class="table-responsive">
											<ul class="list-unstyled activity-timeline" th:each="unstudy:${unstudyes}">
												<li>
													<i class="fa fa-comment activity-icon">英</i>
														<p th:text="${study.coursename}">英语听说<a href="<%=path%>/servlet/sendURLMessageServlet?classname=英语听说">进入课程录像</a> <span class="timestamp">2017/10/8 10:10:00</span></p>
												</li>
											</ul>
										</div>
									</div>
								</div>
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
