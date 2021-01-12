<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <!-- import CSS -->
  <link rel="stylesheet" href="./assets/css/index.css">
  <style>
  .el-header {
    background-color: #11406c;
    border-radius:5px;
    margin-bottom:4px;
    color: #fff;
    text-align: center;
    line-height: 40px;
    height:140px;
  }
  .el-footer {
    background-color: #11406c;
    color: #fff;
    border-radius:5px;
    text-align: center;
    line-height: 80px;
  }
  
  .el-aside {
    border-radius:5px;
    background-color: #409EFF;
    color: #333;
    border-radius:5px;
    text-align: center;
    line-height: 100%;
  }
  
  .el-main {
    color: #333;
    border-radius:5px;
    text-align: center;
    line-height: 800px;
  }
  
  body > .el-container {
    margin-bottom: 10px;
  }
  
  .el-container:nth-child(5) .el-aside,
  .el-container:nth-child(6) .el-aside {
    line-height: 800px;
  }
  
  .el-container:nth-child(7) .el-aside {
    line-height: 800px;
  }
  .logo {
  text-align: left;
  padding: 20px 10px 20px 10px;
  } 
  .nav {
  text-align: right;
  padding: 20px 10px 20px 10px;
  }
  body{
    background-image: url(./assets/img/beijing.jpg);
    background-repeat: repeat;
  }
</style>
</head>
<body style="background-color: #E9EEF3;">
  <div id="app">
	
<el-container>
  <el-header style="height:140px;" >
  <DIV class="logo" style="width:40%">       
  <a href="index.htm" title="" onclick="" target="_blank">                          
  <img src="./assets/img/logo_pic99.png" border="0">
  </a>  
  </DIV>
  <div class="nav" style="width:60%">
		  <el-menu :default-active="activeIndex" class="el-menu-demo" mode="horizontal" @select="handleSelect">
		  <el-menu-item index="1">处理中心</el-menu-item>
		  <el-submenu index="2">
		    <template slot="title">我的工作台</template>
		    <el-menu-item index="2-1">选项1</el-menu-item>
		    <el-menu-item index="2-2">选项2</el-menu-item>
		    <el-menu-item index="2-3">选项3</el-menu-item>
		    <el-submenu index="2-4">
		      <template slot="title">选项4</template>
		      <el-menu-item index="2-4-1">选项1</el-menu-item>
		      <el-menu-item index="2-4-2">选项2</el-menu-item>
		      <el-menu-item index="2-4-3">选项3</el-menu-item>
		    </el-submenu>
		  </el-submenu>
		  <el-menu-item index="3" disabled>消息中心</el-menu-item>
		  <el-menu-item index="4"><a href="https://www.ele.me" target="_blank">订单管理</a></el-menu-item>
		</el-menu>
  </div>
  </el-header>
  <el-container>
    <el-aside width="10%">Aside</el-aside>
    <el-container width="80%">
      <el-main>Main</el-main>
    </el-container>
  </el-container>
    <el-footer>Footer</el-footer>
</el-container>
  </div>
</body>
  <!-- import Vue before Element -->
  <script src="https://unpkg.com/vue/dist/vue.js"></script>
  <!-- import JavaScript -->
  <script src="https://unpkg.com/element-ui/lib/index.js"></script>
  <script>
    new Vue({
      el: '#app',
      data: function() {
        return { visible: false }
      }
    })
  </script>
</html>
