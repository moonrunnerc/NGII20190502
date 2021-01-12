<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String username = session.getAttribute("LoginName").toString();
%>
<!doctype html>
<html lang="en">
<head>
    <title>XJTU_Class | 课程</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <!-- VENDOR CSS -->
    <link rel="stylesheet" href="assets/vendor/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/vendor/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="assets/vendor/linearicons/style.css">
    <link rel="stylesheet" href="assets/vendor/chartist/css/chartist-custom.css">
    <link rel="stylesheet" href="assets/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="assets/font-awesome/css/bootstrap-select.css">
    <!-- MAIN CSS -->
    <link rel="stylesheet" href="assets/css/main.css">
    <!-- FOR DEMO PURPOSES ONLY. You should remove this in your project -->
    <link rel="stylesheet" href="assets/css/demo.css">
    <link rel="stylesheet" href="assets/css/xjtu_table.css">
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
	  
    /*鼠标悬停样式*/
 .table-hover > tbody > tr:hover > td,
.table-hover > tbody > tr:hover > th {
  background-color: #f5f5f5;
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
        <!-- LEFT SIDEBAR -->
        <!-- END LEFT SIDEBAR -->
        <!-- MAIN -->
        
		<div class="main" style="padding:0 0 0 0;" >
            <!-- MAIN CONTENT -->
            <div class="main-content" style="padding:0 0 0 0;">

                <!-- video -->
                <div class="container-fluid" style="padding:0 0 0 0">
                	<div class="panel panel-headline">
                        <div class="panel-heading">
                            <h2 class="panel-title" a href="#"> 已选课程</h2>

                        </div>
                        <div class="class-box" style="padding:0 15px 0 15px">
                            <table width="100%" class="table table-hover">
                                <tbody  >
                                   
                                    <tr  height="50px"  >
                                        <td width="20%"   align="left" onclick="test('大学物理')">
                                            <div height="50px" width="50px">
                                                <img src="./assets/img/physics.jpg" alt="" width="50%" height="50%">
                                            </div>
                                        </td>
                                        <td width="30%" onclick="test('大学物理')" >
                                            <div class="class-name" align="left">大学物理</div>
                                            <div class="class-content" align="left">计算机科学与技术系</div>
                                            <div class="class-teacher" align="left">任  韧</div>
                                            <div class="class-right" align="right">2017-2018 第一学期</div>
                                        </td> 
                                        <td  width="20%"  align="left" onclick="test('工科数学分析基础')">
                                            <div  height="50px" width="50px">
                                                <img src="./assets/img/math.jpg" alt="" width="50%" height="50%">
                                            </div>
                                        </td>
                                        <td width="30%"  onclick="test('工科数学分析基础')">
                                            <div class="class-name" align="left"  >工科数学分析基础</div>
                                            <div class="class-content" align="left">数学系</div>
                                            <div class="class-teacher" align="left">葛照强</div>
                                            <div class="class-right" align="right">2017-2018 第一学期</div>
                                        </td>
                                    </tr> 
                                    <tr height="50px"   >
                                        <td width="20%"   align="left" onclick="test('C程序设计')">
	                                            <div height="50px" width="50px">
	                                                <img src="./assets/img/C.jpg" alt="" width="50%" height="50%">
	                                            </div>
                                            </td>
                                            <td width="30%" onclick="test('C程序设计')">
                                                <div class="class-name" align="left">C程序设计</div>
                                                <div class="class-content" align="left">计算机科学与技术系</div>
                                                <div class="class-teacher" align="left">梁力</div>
                                                <div class="class-right" align="right">2017-2018 第一学期</div>
                                            </td>
                                            <td width="20%"   align="left" onclick="test('离散数学')">
	                                            <div height="50px" width="50px">
	                                                <img src="./assets/img/discretemath.jpg" alt="" width="50%" height="50%">
	                                            </div>
                                            </td>
                                            
                                            <td width="80%"  onclick="test('离散数学')">
                                                <div class="class-name" align="left">离散数学</div>
                                                <div class="class-content" align="left">计算机科学与技术系</div>
                                                <div class="class-teacher" align="left">刘国荣</div>
                                                <div class="class-right" align="right">2017-2018 第一学期</div>
                                            </td>
                                    </tr> 
                                    <tr  height="50px"  >
                                             <td width="20%"   align="left" onclick="test('思想道德修养与法律基础')" >
	                                            <div height="50px" width="50px">
	                                                <img src="./assets/img/sixiu.jpg" alt="" width="50%" height="50%">
	                                            </div>
                                            </td>
                                           
                                            <td width="30%" onclick="test('思想道德修养与法律基础')"  >
                                                <div class="class-name" align="left">思想道德修养与法律基础</div>
                                                <div class="class-content" align="left">计算机科学与技术系</div>
                                                <div class="class-teacher" align="left"> 卢黎歌 </div>
                                                <div class="class-right" align="right">2017-2018 第一学期</div>
                                            </td>
                                             <td width="20%"   align="left" onclick="test('英语听说')">
	                                            <div height="50px" width="50px">
	                                                <img src="./assets/img/daxueyingyu.jpg" alt="" width="50%" height="50%">
	                                            </div>
                                            </td>
                                           
                                            <td width="30%"  onclick="test('英语听说')">
                                                <div class="class-name" align="left">英语听说</div>
                                                <div class="class-content" align="left">英语系</div>
                                                <div class="class-teacher" align="left"> 司选海 </div>
                                                <div class="class-right" align="right">2017-2018 第一学期</div>
                                            </td>
                                    </tr> 
                                    
                                    <tr  height="50px" >
                                            <td width="20%"   align="left" onclick="test('生命科学导论')" >
	                                            <div height="50px" width="50px">
	                                                <img src="./assets/img/shengminghexuedaolun.jpg" alt="" width="50%" height="50%">
	                                            </div>
                                            </td>
                                           
                                            <td width="30%"  onclick="test('生命科学导论')" >
                                                <div class="class-name" align="left">生命科学导论</div>
                                                <div class="class-content" align="left">生物医学工程</div>
                                                <div class="class-teacher" align="left"> 郭莉 </div>
                                                <div class="class-right" align="right">2017-2018 第一学期</div>
                                            </td>
                                    </tr> 
                                   
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <!-- END video -->
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
    <script src="assets/vendor/jquery.easy-pie-chart/jquery.easypiechart.min.js"></script>
    <script src="assets/vendor/chartist/js/chartist.min.js"></script>
    <script src="assets/scripts/klorofil-common.js"></script>
    <script src="assets/scripts/video-xjtu.js"></script>

    <script>
      //实现页面的跳转
    function test(s){
           window.location.href="<%=path%>/servlet/sendURLMessageServlet?classname="+s;
          }
    $(".table tr").hover( //$(".table_list tr")选择table的class为table_list下的tr绑定事件
    function () { 
        $(this).addClass("hover"); //鼠标悬停时，改变li的class样式
    }, 
    function () { 
        $(this).removeClass("hover"); //鼠标离开时，取消tr的class样式
    } 
);
    </script>
</body>

</html>
