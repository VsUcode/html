<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="text/javascript" src="scripts/jquery/jquery-1.7.1.js"></script>
<link href="../css/authority/basic_layout.css" rel="stylesheet" type="text/css">
<link href="../css/authority/common_style.css" rel="stylesheet" type="text/css">
<script src="../js/scripts/authority/commonAll.js"></script>
<script src="../js/fancybox/jquery.fancybox-1.3.4.js"></script>
<script src="../js/fancybox/jquery.fancybox-1.3.4.pack.js"></script>
<link rel="stylesheet" type="text/css" href="../css/authority/jquery.fancybox-1.3.4.css" media="screen"></link>
<script src="../js/artDialog/artDialog.js?skin=default"></script>
<link rel="stylesheet" href="../css/bootstrap.css">
<link rel="stylesheet" href="../css/font-awesome.min.css">
<link rel="stylesheet" href="../css/plugin.css">
<link rel="stylesheet" href="../css/style.css">
<link rel="stylesheet" href="../css/caruser.css">
<!--[if lt IE 9]>
<script src="../js/ie/respond.min.js"></script>
<script src="../js/ie/html5.js"></script>
<![endif]-->
<title>信息管理系统</title>
<#--<script type="text/javascript">-->
	<#--$(document).ready(function(){-->
		<#--/** 新增   **/-->
	    <#--$("#addBtn").fancybox({-->
	    	<#--'href'  : 'house_edit.html',-->
	    	<#--'width' : 733,-->
	        <#--'height' : 530,-->
	        <#--'type' : 'iframe',-->
	        <#--'hideOnOverlayClick' : false,-->
	        <#--'showCloseButton' : false,-->
	        <#--'onClosed' : function() { -->
	        	<#--window.location.href = 'house_list.html';-->
	        <#--}-->
	    <#--});-->
		<#---->
	    <#--/** 导入  **/-->
	    <#--$("#importBtn").fancybox({-->
	    	<#--'href'  : '/xngzf/archives/importFangyuan.action',-->
	    	<#--'width' : 633,-->
	        <#--'height' : 260,-->
	        <#--'type' : 'iframe',-->
	        <#--'hideOnOverlayClick' : false,-->
	        <#--'showCloseButton' : false,-->
	        <#--'onClosed' : function() { -->
	        	<#--window.location.href = 'house_list.html';-->
	        <#--}-->
	    <#--});-->
		<#---->
	    <#--/**编辑   **/-->
	    <#--$("a.edit").fancybox({-->
	    	<#--'width' : 733,-->
	        <#--'height' : 530,-->
	        <#--'type' : 'iframe',-->
	        <#--'hideOnOverlayClick' : false,-->
	        <#--'showCloseButton' : false,-->
	        <#--'onClosed' : function() { -->
	        	<#--window.location.href = 'house_list.html';-->
	        <#--}-->
	    <#--});-->
	<#--});-->
	<#--/** 用户角色   **/-->
	<#--var userRole = '';-->

	<#--/** 模糊查询来电用户  **/-->
	<#--function search(){-->
		<#--$("#submitForm").attr("action", "house_list.html?page=" + 1).submit();-->
	<#--}-->

	<#--/** 新增   **/-->
	<#--function add(){-->
		<#--$("#submitForm").attr("action", "/xngzf/archives/luruFangyuan.action").submit();	-->
	<#--}-->
	 <#---->
	<#--/** Excel导出  **/-->
	<#--function exportExcel(){-->
		<#--if( confirm('您确定要导出吗？') ){-->
			<#--var fyXqCode = $("#fyXq").val();-->
			<#--var fyXqName = $('#fyXq option:selected').text();-->
<#--//	 		alert(fyXqCode);-->
			<#--if(fyXqCode=="" || fyXqCode==null){-->
				<#--$("#fyXqName").val("");-->
			<#--}else{-->
<#--//	 			alert(fyXqCode);-->
				<#--$("#fyXqName").val(fyXqName);-->
			<#--}-->
			<#--$("#submitForm").attr("action", "/xngzf/archives/exportExcelFangyuan.action").submit();	-->
		<#--}-->
	<#--}-->
	<#---->
	<#--/** 删除 **/-->
	<#--function del(fyID){-->
		<#--// 非空判断-->
		<#--if(fyID == '') return;-->
		<#--if(confirm("您确定要删除吗？")){-->
			<#--$("#submitForm").attr("action", "/xngzf/archives/delFangyuan.action?fyID=" + fyID).submit();			-->
		<#--}-->
	<#--}-->
	<#---->
	<#--/** 批量删除 **/-->
	<#--function batchDel(){-->
		<#--if($("input[name='IDCheck']:checked").size()<=0){-->
			<#--art.dialog({icon:'error', title:'友情提示', drag:false, resize:false, content:'至少选择一条', ok:true,});-->
			<#--return;-->
		<#--}-->
		<#--// 1）取出用户选中的checkbox放入字符串传给后台,form提交-->
		<#--var allIDCheck = "";-->
		<#--$("input[name='IDCheck']:checked").each(function(index, domEle){-->
			<#--bjText = $(domEle).parent("td").parent("tr").last().children("td").last().prev().text();-->
<#--// 			alert(bjText);-->
			<#--// 用户选择的checkbox, 过滤掉“已审核”的，记住哦-->
			<#--if($.trim(bjText)=="已审核"){-->
<#--// 				$(domEle).removeAttr("checked");-->
				<#--$(domEle).parent("td").parent("tr").css({color:"red"});-->
				<#--$("#resultInfo").html("已审核的是不允许您删除的，请联系管理员删除！！！");-->
<#--// 				return;-->
			<#--}else{-->
				<#--allIDCheck += $(domEle).val() + ",";-->
			<#--}-->
		<#--});-->
		<#--// 截掉最后一个","-->
		<#--if(allIDCheck.length>0) {-->
			<#--allIDCheck = allIDCheck.substring(0, allIDCheck.length-1);-->
			<#--// 赋给隐藏域-->
			<#--$("#allIDCheck").val(allIDCheck);-->
			<#--if(confirm("您确定要批量删除这些记录吗？")){-->
				<#--// 提交form-->
				<#--$("#submitForm").attr("action", "/xngzf/archives/batchDelFangyuan.action").submit();-->
			<#--}-->
		<#--}-->
	<#--}-->

	<#--/** 普通跳转 **/-->
	<#--function jumpNormalPage(page){-->
		<#--$("#submitForm").attr("action", "house_list.html?page=" + page).submit();-->
	<#--}-->
	<#---->
	<#--/** 输入页跳转 **/-->
	<#--function jumpInputPage(totalPage){-->
		<#--// 如果“跳转页数”不为空-->
		<#--if($("#jumpNumTxt").val() != ''){-->
			<#--var pageNum = parseInt($("#jumpNumTxt").val());-->
			<#--// 如果跳转页数在不合理范围内，则置为1-->
			<#--if(pageNum<1 | pageNum>totalPage){-->
				<#--art.dialog({icon:'error', title:'友情提示', drag:false, resize:false, content:'请输入合适的页数，\n自动为您跳到首页', ok:true,});-->
				<#--pageNum = 1;-->
			<#--}-->
			<#--$("#submitForm").attr("action", "house_list.html?page=" + pageNum).submit();-->
		<#--}else{-->
			<#--// “跳转页数”为空-->
			<#--art.dialog({icon:'error', title:'友情提示', drag:false, resize:false, content:'请输入合适的页数，\n自动为您跳到首页', ok:true,});-->
			<#--$("#submitForm").attr("action", "house_list.html?page=" + 1).submit();-->
		<#--}-->
	<#--}-->
<#--</script>-->
<style>
	.alt td{ background:black !important;}
</style>
</head>
<body>
<div id="container">
    <div class="ui_content">
        <div class="ui_text_indent">
            <div id="box_border">
                <div id="box_top">搜索</div>
                <p>选择日期搜索</p>
                <form class="form-horizontal" name="car_check" method="post" action="check">
                    <div class="m-b row">
                        <div class="col-lg-6">
                            <input name="time" class="input-small form-control datepicker" size="26" type="text" value data-date-format="yyyy-mm-dd">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-lg-9 col-offset-3">
                            <button type="submit" class="btn btn-primary">搜索</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <div class="ui_content">
        <div class="ui_tb">
            <table class="table" cellspacing="0" cellpadding="0" width="100%" align="center" border="0">
                <tr>
                    <#--<th width="30"></th>-->
                    <th>房源</th>
                    <th>房源面积</th>
                    <th>计租面积</th>
                    <th>户型</th>
                    <th>建筑结构</th>
                    <th>租赁性质</th>
                    <th>状态</th>
                    <th>操作</th>
                </tr>
                <tr>
                    <td>瑞景河畔16号楼1-111</td>
                    <td>65.97㎡</td>
                    <td>65.97㎡</td>
                    <td>一室一厅一卫</td>
                    <td>混凝土</td>
                    <td>公租房</td>
                    <td>建成待租</td>
                    <td>
                        <a href="house_edit.html?fyID=14458579642011" class="edit">编辑</a>
                        <a href="javascript:del('14458579642011');">删除</a>
                    </td>
                </tr>

            </table>
        </div>
    </div>
</div>


<!-- / footer -->
<script src="../js/jquery.min.js"></script>
<!-- Bootstrap -->
<script src="../js/bootstrap.js"></script>
<!-- app -->
<script src="../js/app.js"></script>
<script src="../js/app.plugin.js"></script>
<script src="../js/app.data.js"></script>
<!-- fuelux -->
<script src="../js/fuelux/fuelux.js"></script>
<!-- datepicker -->
<script src="../js/datepicker/bootstrap-datepicker.js"></script>
<!-- slider -->
<script src="../js/slider/bootstrap-slider.js"></script>
<!-- file input -->
<script src="../js/file-input/bootstrap.file-input.js"></script>
<!-- combodate -->
<script src="../js/combodate/moment.min.js"></script>
<script src="../js/combodate/combodate.js"></script>
<!-- parsley -->
<script src="../js/parsley/parsley.min.js"></script>

</body>
</html>
