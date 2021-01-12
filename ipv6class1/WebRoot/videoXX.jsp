<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String username = session.getAttribute("LoginName").toString();
Object oclassname = session.getAttribute("classname");
String sclassname = "";
if(oclassname!=null)
{
	sclassname = oclassname.toString();
}
%>
<!doctype html>
<html lang="en">

<head>
    <title>XJTU_Class | 视频</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <!-- VENDOR CSS -->
    <link rel="stylesheet" href="assets/vendor/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/vendor/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="assets/vendor/linearicons/style.css">
    <link rel="stylesheet" href="assets/vendor/chartist/css/chartist-custom.css">
    <link rel="stylesheet" href="assets/font-awesome/css/font-awesome.min.css">
    <!-- MAIN CSS -->
    <link rel="stylesheet" href="assets/css/main.css">
    <!-- FOR DEMO PURPOSES ONLY. You should remove this in your project -->
    <link rel="stylesheet" href="assets/css/demo.css">
    <link rel="stylesheet" href="assets/css/xjtu.css">
    <link rel="stylesheet" href="assets/css/xjtu_table.css">
    <!-- ICONS -->
	<link rel="apple-touch-icon" sizes="76x76" href="admin/images/logo7.png" />


</head>

<body>
    <!-- WRAPPER -->
  
    <div id="wrapper" >
        <!-- NAVBAR -->
        <nav class="navbar navbar-default navbar-fixed-top">
            <div class="brand" >
                <a href="index.jsp" >
                <img src="assets/img/logonew31.png" alt="Klorofil Logo" class="img-responsive logo" style="padding:0 0 0 0;margin:0 0 0 0" />
               </a>
            </div>
            <div class="container-fluid">
                <div class="navbar-btn">
                    <button type="button" class="btn-toggle-fullwidth"><i class="lnr lnr-arrow-left-circle"></i></button>
                </div>
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
        <!-- LEFT SIDEBAR -->
        <div id="sidebar-nav" class="sidebar">
            <div class="sidebar-scroll">
                <nav style="margin-top:100px">
                    <ul class="nav" id="left-menu">
                        <li><a href="videoclass201707011300.html" class=""><i class="lnr lnr-chart-bars"></i> <span>课程1</span></a></li>
                        <li><a href="index.jsp" class="active"><i class="lnr lnr-chart-bars"></i> <span>课程2</span></a></li>
                        <li><a href="videoclass201707011300.html" class=""><i class="lnr lnr-chart-bars"></i> <span>课程3</span></a></li>
                        <li><a href="videoclass201707011300.html" class=""><i class="lnr lnr-chart-bars"></i> <span>课程4</span></a></li>
                        <li><a href="" class=""><i class="lnr lnr-chart-bars"></i> <span>课程…………</span></a></li>
                        <li><a href=" " class=""><i class="lnr lnr-chart-bars"></i> <span>课程…………</span></a></li>
                        <li><a href=" " class=""><i class="lnr lnr-chart-bars"></i> <span>课程…………</span></a></li>
                        <li><a href=" " class=""><i class="lnr lnr-chart-bars"></i> <span>课程…………</span></a></li>
                        <li><a href=" " class=""><i class="lnr lnr-chart-bars"></i> <span>课程…………</span></a></li>
                        <li><a href=" " class=""><i class="lnr lnr-chart-bars"></i> <span>课程…………</span></a></li>
                        <li><a href=" " class=""><i class="lnr lnr-chart-bars"></i> <span>课程…………</span></a></li>
                        <li><a href=" " class=""><i class="lnr lnr-chart-bars"></i> <span>课程…………</span></a></li>
                        <li><a href=" " class=""><i class="lnr lnr-chart-bars"></i> <span>课程…………</span></a></li>
                    </ul>
                </nav>
            </div>
        </div>
        <!-- END LEFT SIDEBAR -->
        <!-- MAIN -->
        <div class="main"  >
            <!-- MAIN CONTENT -->
            <div class="main-content"  >
                <div class="container-fluid" >
                <div class="video-box" style="margin-top:20px">
                           <h1 style="text-align:center"><%=sclassname %></h1>
                <div>
                </div>
                    <!-- video -->
                    <div class="panel panel-headline" >
                         
                        <div class="video-box">
                            <div class="video-box-child" id="video-box-child">
                                <div id="video_div_1" class="video_div video_main">
                                    <video id="my_video_1" class="video-box1 " preload="auto" width="800px" height="640px">
                                       <source id="my_video_so_1" src="/files1/0-12209-201905210800-201905210900(00h00m00s-00h02m00s).mp4" type="video/mp4">
                                    </video>
                                </div>
                                <div id="video_div_2" class="video_div video_right1">
                                    <video id="my_video_2" class="video-box2 " preload="auto" muted>
                                        <source id="my_video_so_2" src="/files2/0-12209-201905210800-201905210900(00h00m00s-00h02m00s).mp4" type="video/mp4">
                                    </video>
                                </div>
                                <div id="video_div_3" class="video_div video_right2">
                                    <video id="my_video_3" class="video-box3 " preload="auto" muted>
                                        <source id="my_video_so_3"src="/files3/0-12209-201905210800-201905210900(00h00m00s-00h02m00s).mp4" type='video/mp4' />
                                    </video>
                                </div>
                                <div class="video-mask" id="video-mask">
                                    <div class="mask-ico">
                                        <i class="fa fa-play tools-btn" id="tools-play"></i>
                                        <i class="fa fa-pause " style="display: none;"></i>
                                    </div>
                                </div>

                                <div class="video-toolbar-all">
                                    <!-- 时间播放轴 -->
                                    <div class="video-progress">
                                        <div class="video-seekar" style="cursor:pointer;">
                                            <div class="video-playbar"></div>
                                        </div>
                                    </div>
                                    <!-- 播放控制 开始 暂停 声音 -->
                                    <div class="video-controls-tools">
                                        <!-- 开始 暂停 -->
                                        <div class="video-bar-tools">
                                            <i class="fa fa-play tools-btn " id="tools-start"></i>
                                            <i class="fa fa-pause tools-btn  tools-pause" id="tools-pause"></i>
                                        </div>
                                        <!-- 声音大小 -->
                                        <div class="volume-controls-tools">
                                            <i class="fa fa-volume-down tools-volume-btn tools-down" id=" volume-down"></i>
                                            <div class="video-volume-bar">
                                                <div class="video-volume-bar-value"></div>
                                            </div>
                                            <i class="fa fa-volume-up tools-volume-btn tools-up" id=" volume-up"></i>
                                        </div>
                                        <!-- 通道选择 -->
                                        <div class="btn-select">
                                            <button class="btn btn-default btn-sm video-btn-select video-btn-select-selected" id="btn-fs-1" href="#" data-selection="1">1</button>
                                            <button class="btn btn-default btn-sm video-btn-select video-btn-select-selected" id="btn-fs-2" href="#" data-selection="2">2</button>
                                            <button class="btn btn-default btn-sm video-btn-select video-btn-select-selected" id="btn-fs-3" href="#" data-selection="3">3</button>
                                        </div>
                                        <!-- 播放时间 -->
                                        <div class="videotime">
                                            <!-- 开始时间 -->
                                            <div id="video-currenttime" class="video-tools-currenttime" role="timer" aria-label="time">&nbsp;</div>
                                            <div class="video-tools-text">/</div>
                                            <!-- 剩余时间 -->
                                            <div id="video-duration" class="video-tools-duration">&nbsp;</div>
                                        </div>
                                    </div>
                                </div>
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
            // var JSONObject = {
            //     "video1": "http://10.220.17.210/inbound/13201/20160612/143000-153000/camera_1_teacher.mp4",
            //     "video2": "http://10.220.17.210/inbound/13201/20160612/143000-153000/camera_2_students.mp4",
            //     "video3": "http://10.220.17.210/inbound/13201/20160612/143000-153000/camera_3_blackboard.mp4",
            //     "name": "张三丰"
            // };

            // document.getElementById("my_video_1").setAttribute("src", JSONObject.video1);
            // document.getElementById("my_video_2").setAttribute("src", JSONObject.video2);
            // document.getElementById("my_video_3").setAttribute("src", JSONObject.video3);
            // document.getElementById("jname").innerHTML = JSONObject.name;

            // console.log(1);

            var fn = function(data) {
                document.getElementById("my_video_1").setAttribute("src", data.video1);
                document.getElementById("my_video_2").setAttribute("src", data.video2);
                document.getElementById("my_video_3").setAttribute("src", data.video3);
                document.getElementById("jname").innerHTML = data.name;
            };

            var url = "assets/part1-2d/0-12209-201905210800-201905210900(00h00m00s-00h02m00s).mp4";
            $.getJSON(url, function(result) {
                console.log('getJSON');
                fn(result);
                window.list = result;
            }, 'JSON');

            console.log('2');


           //左边课程表
            var list = [{
                id: "key1",
                name: "20171115 星期四",
                href1: "http://[2001:da8:270:2018:f816:3eff:fede:1f58]/0-53205-201711301400-201711301500.mp4",
                href2: "http://[2001:da8:270:2018:f816:3eff:fede:1f58]/1-53205-201711301400-201711301500.mp4",
                href3: "http://[2001:da8:270:2018:f816:3eff:fede:1f58]/2-53205-201711301400-201711301500.mp4"
            }, {
                id: "key2",
                name: "20171120 星期二",
                href1: "http://[2001:da8:270:2018:f816:3eff:fede:1f58]/0-53205-201711301400-201711301500.mp4",
                href2: "http://[2001:da8:270:2018:f816:3eff:fede:1f58]/1-53205-201711301400-201711301500.mp4",
                href3: "http://[2001:da8:270:2018:f816:3eff:fede:1f58]/2-53205-201711301400-201711301500.mp4"
            },{
                id: "key3",
                name: "20171122 星期四",

                href1: "http://[2001:da8:270:2018:f816:3eff:fede:1f58]/0-53205-201711301400-201711301500.mp4",
                href2: "http://[2001:da8:270:2018:f816:3eff:fede:1f58]/1-53205-201711301400-201711301500.mp4",
                href3: "http://[2001:da8:270:2018:f816:3eff:fede:1f58]/2-53205-201711301400-201711301500.mp4"
            },{
                id: "key4",
                name: "20171127 星期二",
                href1: "http://[2001:da8:270:2018:f816:3eff:fede:1f58]/0-53205-201711301400-201711301500.mp4",
                href2: "http://[2001:da8:270:2018:f816:3eff:fede:1f58]/1-53205-201711301400-201711301500.mp4",
                href3: "http://[2001:da8:270:2018:f816:3eff:fede:1f58]/2-53205-201711301400-201711301500.mp4"
            }
            ];

            var $leftMenu = $("#left-menu");
            var $v1 = $("#my_video_1");
            var $v2 = $("#my_video_2");
            var $v3 = $("#my_video_3");
            var createLeftMenu = function(data) {

                var str = "";
                for (var i = 0; i < data.length; i++) {
                    str += "<li class='left-menu-li' video-id=" + data[i].id + "><a href='Javascript:;'  ><i class='lnr lnr-chart-bars'></i><span>" + data[i].name + "</span></li>";
                }

                $(str).appendTo($leftMenu.empty());
            };

            createLeftMenu(list);

            var getVideoById = function(id) {
                for (var i = 0; i < list.length; i++) {
                    if (list[i].id === id) {
                        return list[i];
                    }
                }
            };
            console.log('3');

            $leftMenu.on("click", ".left-menu-li", function() {
                var o = getVideoById(this.getAttribute('video-id'));
                $v1.attr("src", o.href1);
                $v2.attr("src", o.href2);
                $v3.attr("src", o.href3);
            });
            console.log('4');
        </script>
</body>

</html>