<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String username = session.getAttribute("LoginName").toString();
%>
<!doctype html>
<html lang="en">

<head>
    <title>XJTU_Class | 课表</title>
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
        
		<div class="main" style="padding:0 0 0 0">
            <!-- MAIN CONTENT -->
            <div class="main-content" style="padding:0 0 0 0">
               
                <!-- END 课程信息 -->
                <!-- video -->
                <div class="container-fluid" style="padding:0 0 0 0">
                	<div class="panel panel-headline  ">
                    <div class="panel-heading">
                        <h2 class="panel-title"  style="text-align:center" a href="#"> 2017-2018 第一学期 </h2>

                    </div>
                    <div class="class-box">
                        <table class="nr_table">
                            <td valign="top">
                                <table width="100%">
                                    <tr height="46px">
                                        <th> </th>
                                        <th>星期一</th>
                                        <th>星期二</th>
                                        <th>星期三</th>
                                        <th>星期四</th>
                                        <th>星期五</th>
                                    </tr>
                                    <tr class="kc" height="30px">
                                        <td class="#none">8:00~8:50</td>
                                        <td>
                                            <a href="#none"></a>
                                        </td>
                                        
	                                        <td>
	                                            <a href="<%=path%>/servlet/sendURLMessageServlet?classname=离散数学">离散数学</a>
	                                        </td>
		                                        <td>
		                                            <a href="<%=path%>/servlet/sendURLMessageServlet?classname=工科数学分析">工科数学分析</a>
		                                        </td>
			                                        <td>
			                                            <a href="<%=path%>/servlet/sendURLMessageServlet?classname=离散数学">离散数学</a>
			                                        </td>
				                                        <td>
				                                            <a href="<%=path%>/servlet/sendURLMessageServlet?classname=大学物理">大学物理</a>
				                                        </td>
					                                       
                                    </tr>
                                    <tr class="kc" height="30px">
                                        <td>9:00~9:50</td>
                                        <td>
                                            <a href="#none"></a>
                                        </td>
                                        <td>
                                            <a href="<%=path%>/servlet/sendURLMessageServlet?classname=离散数学">离散数学</a>
                                        </td>
                                        <td>
                                            <a href="<%=path%>/servlet/sendURLMessageServlet?classname=工科数学分析">工科数学分析</a>
                                        </td>
                                        <td>
                                            <a href="<%=path%>/servlet/sendURLMessageServlet?classname=离散数学">离散数学</a>
                                        </td>
                                        <td>
                                            <a href="<%=path%>/servlet/sendURLMessageServlet?classname=大学物理">大学物理</a>
                                        </td>
                                    </tr>
                                    <tr class="kc" height="30px">
                                        <td>10:10~11:00</td>
                                        <td>
                                            <a href="<%=path%>/servlet/sendURLMessageServlet?classname=工科数学分析">工科数学分析</a>
                                        </td>
                                        <td>
                                            <a href="<%=path%>/servlet/sendURLMessageServlet?classname=程序设计与C语言">程序设计与C语言</a>
                                        </td>
                                        <td>
                                            <a href="#none"></a>
                                        </td>
                                        <td>
                                            <a href="#none"></a>
                                        </td>
                                        <td>
                                            <a href="#none">体育</a>
                                        </td>
                                        
                                    </tr>
                                    <tr class="kc" height="30px">
                                        <td>11:10~12:00</td>
                                        <td>
                                            <a href="<%=path%>/servlet/sendURLMessageServlet?classname=工科数学分析">工科数学分析</a>
                                        </td>
                                        <td>
                                            <a href="<%=path%>/servlet/sendURLMessageServlet?classname=程序设计与C语言">程序设计与C语言</a>
                                        </td>
                                        <td>
                                            <a href="#none"></a>
                                        </td>
                                        <td>
                                            <a href="#none"></a>
                                        </td>
                                        <td>
                                            <a href="#none">体育</a>
                                        </td>
                                        
                                    </tr>
                                    
                                    <tr class="kc" height="30px">
                                        <td colspan="8"></td>
                                    </tr>
                                    <tr class="kc" height="30px">
                                        <td>14:00~14:50</td>
                                        <td>
                                            <a href="<%=path%>/servlet/sendURLMessageServlet?classname=英语听说">英语听说</a>
                                        </td>
                                        <td>
                                            <a href="#none"></a>
                                        </td>
                                        <td>
                                            <a href="<%=path%>/servlet/sendURLMessageServlet?classname=英语听说">英语听说</a>
                                        </td>
                                        <td>
                                            <a href="<%=path%>/servlet/sendURLMessageServlet?classname=程序设计与C语言">程序设计与C语言</a>
                                        </td>
                                        <td>
                                            <a href="#none"></a>
                                        </td>
                                        
                                    </tr>
                                    <tr class="kc" height="30px">
                                        <td>15:00~15:50</td>
                                        <td>
                                            <a href="<%=path%>/servlet/sendURLMessageServlet?classname=英语听说">英语听说</a>
                                        </td>
                                        <td>
                                            <a href="#none"></a>
                                        </td>
                                        <td>
                                            <a href="<%=path%>/servlet/sendURLMessageServlet?classname=英语听说">英语听说</a>
                                        </td>
                                        <td>
                                            <a href="<%=path%>/servlet/sendURLMessageServlet?classname=程序设计与C语言">程序设计与C语言</a>
                                        </td>
                                        <td>
                                            <a href="#none"></a>
                                        </td>
                                       
                                    </tr>
                                    <tr class="kc" height="30px">
                                        <td>16:10~17:00</td>
                                        <td>
                                            <a href="#none"></a>
                                        </td>
                                        <td>
                                            <a href="<%=path%>/servlet/sendURLMessageServlet?classname=思修与法律基础">思修与法律基础</a>
                                        </td>
                                        <td>
                                            <a href="<%=path%>/servlet/sendURLMessageServlet?classname=大学物理">大学物理</a>
                                        </td>
                                        <td>
                                            <a href="#none"></a>
                                        </td>
                                        <td>
                                            <a href="#none"></a>
                                        </td>
                                        
                                    </tr>
                                    <tr class="kc" height="30px">
                                        <td>17:10~18:00</td>
                                        <td>
                                            <a href="#none"></a>
                                        </td>
                                        <td>
                                            <a href="<%=path%>/servlet/sendURLMessageServlet?classname=思修与法律基础">思修与法律基础</a>
                                        </td>
                                        <td>
                                            <a href="<%=path%>/servlet/sendURLMessageServlet?classname=大学物理">大学物理</a>
                                        </td>
                                        <td>
                                            <a href="#none"></a>
                                        </td>
                                        <td>
                                            <a href="#none"></a>
                                        </td>
                                       
                                    </tr>
                                    <tr class="kc" height="30px">
                                        <td colspan="8"></td>
                                    </tr>
                                    <tr class="kc" height="30px">
                                        <td>19:10~20:00</td>
                                        <td>
                                            <a href="<%=path%>/servlet/sendURLMessageServlet?classname=生命科学导论">生命科学导论</a>
                                        </td>
                                        <td>
                                            <a href="#none"></a>
                                        </td>
                                        <td>
                                            <a href="#none"></a>
                                        </td>
                                        <td>
                                            <a href="<%=path%>/servlet/sendURLMessageServlet?classname=思修与法律基础">思修与法律基础</a>
                                        </td>
                                        <td>
                                            <a href="#none"></a>
                                        </td>
                                       
                                    </tr>
                                    <tr class="kc" height="30px">
                                        <td>20:10~21:00</td>
                                        <td>
                                            <a href="<%=path%>/servlet/sendURLMessageServlet?classname=生命科学导论">生命科学导论</a>
                                        </td>
                                        <td>
                                            <a href="#none"></a>
                                        </td>
                                        <td>
                                            <a href="#none"></a>
                                        </td>
                                        <td>
                                            <a href="<%=path%>/servlet/sendURLMessageServlet?classname=思修与法律基础">思修与法律基础</a>
                                        </td>
                                        <td>
                                            <a href="#none"></a>
                                        </td>
                                        
                                    </tr>
                                </table>
                            </td>
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
    $(function() {

    });
    </script>
</body>

</html>
