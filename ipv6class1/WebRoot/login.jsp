<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head lang="en">

	<link rel="apple-touch-icon" sizes="76x76" href="admin/images/logo7.png" />
	<link rel="icon" type="image/png" sizes="96x96" href="admin/images/logo7.png" />
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width,initial-scale=1"/>
    <link rel="shortcut icon" href="/admin/images/favicon.png"/>
    <title>XJTU Class</title>
    <link href="http://cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"/>
    <link href="http://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <link href="admin/css/style.min.css" rel="stylesheet" type="text/css"/>
    <link href="http://cdn.bootcss.com/limonte-sweetalert2/6.4.1/sweetalert2.min.css" rel="stylesheet"/>
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
    <style type="text/css">
        .panel-shadow {
            -moz-box-shadow: 0px 0px 10px 0px rgba(39, 49, 65, 0.1);
            -webkit-box-shadow: 0px 0px 10px 0px rgba(39, 49, 65, 0.1);
            box-shadow: 0px 0px 10px 0px rgba(39, 49, 65, 0.1);
        }
        .bg-overlay {
            -moz-border-radius: 6px 6px 0 0;
            -webkit-border-radius: 6px 6px 0 0;
            background-color: rgba(47, 51, 62, 0.3);
            border-radius: 6px 6px 0 0;
            height: 100%;
            left: 0;
            position: absolute;
            top: 0;
            width: 100%;
        }
        .input-border {
            font-size: 14px;
            width: 100%;
            height: 40px;
            border-radius: 0;
            border: none;
            border-bottom: 1px solid #dadada;
        }

        .bg-img > h3 {
            text-shadow: 0px 2px 3px #555;
            color: #cac9c8;
        }
        .bg-all{

            background:url('https://www.seniverse.com/images/art/mountain-day.svg');
            background-repeat: no-repeat;
            background-position: bottom center;
        }
    </style>
</head>
<body >
<div style="margin: 0 auto; padding-bottom: 0%; padding-top: 6.5%; width: 380px;">
    <div class="panel panel-color panel-danger panel-pages panel-shadow">
        <div class="panel-heading bg-img">
            <div class="bg-overlay"></div>
            <h3 class="text-center m-t-10"> XJTU Class</h3>
        </div>
        <div class="panel-body">
            <form  class="form-signin"name="form1" method="get" action="<%=path%>/servlet/LoginServlet" onsubmit="return checkForm()">
		     		
                <div class="form-group">
                    <div class="col-xs-12">
                        <input class=" input-lg input-border" name="username" type="text" required="" id="uname"
                               placeholder="账号:"/>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-xs-12">
                        <input class=" input-lg input-border" name="password" type="password" required="" id="pwd"
                               placeholder="密码:"/>
                    </div>
                </div>

                <div class="form-group">
                    
                    <div class="col-xs-3">
                        <div class="radio  checkbox-danger">
                            <input id="checkbox-signup" name="remeber_me" value="student" type="radio" checked />
                            <label for="checkbox-signup">学生</label>
                        </div>
                    </div>

                    <div class="col-xs-4">
                        <div class="radio checkbox-danger">
                            <input id="checkbox-manager-signup" name="remeber_me" value="admin" type="radio"/>
                            <label for="checkbox-manager-signup">管理员</label>
                        </div>
                    </div>
                </div>
                
                <div class="form-group text-center m-t-40">
                    <div class="col-xs-12">
                        <button class="btn btn-danger btn-lg btn-rounded btn-block w-lg waves-effect waves-light" style="box-shadow: 0px 0px 4px #868282;" type="submit">登&nbsp;录
                        </button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
<!-- Main  -->
<script src="http://cdn.bootcss.com/jquery/2.2.3/jquery.min.js"></script>
<script src="http://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="http://cdn.bootcss.com/limonte-sweetalert2/6.4.1/sweetalert2.min.js"></script>
<script src="admin/js/base.js"></script>
<script type="text/javascript">
    /*<![CDATA[*/
    function checkForm() {
       var username = document.getElementById("uname").value;
	   var password = document.getElementById("pwd").value;
	    if(username==""||username==null)
	    {
	        alert("请输入用户名!");
	     	return false;
	    }
	    if(password==""||password==null)
	    {
	        alert("请输入密码!");
	        return false;
	    }
	      return true;
        return false;
    }
    /*]]>*/
</script>
</body>
</html>