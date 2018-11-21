
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>订车系统</title>
    <meta name="description" content="mobile first, app, web app, responsive, admin dashboard, flat, flat ui">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="../css/bootstrap.css">
    <link rel="stylesheet" href="../css/font-awesome.min.css">
    <link rel="stylesheet" href="../css/plugin.css">
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="../css/caruser.css">
    <!--[if lt IE 9]>
    <script src="../js/ie/respond.min.js"></script>
    <script src="../js/ie/html5.js"></script>
    <![endif]-->
</head>
<body>
<section id="content">
    <section class="main padder">
        <#--<div class="clearfix">-->
            <#--<h3>订车系统</h3>-->
        <#--</div>-->
        <div class="row" id="car-book">
            <div class="col-lg-6">
                <section class="panel">
                    <form class="form-horizontal" name="car_book" method="post" action="book">
                        <div class="form-group">
                            <label class="col-lg-3 control-label">使用人</label>
                            <div class="col-lg-8">
                                <input type="text" name="username" placeholder="使用人姓名" data-required="true" class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-3 control-label">使用人电话</label>
                            <div class="col-lg-8">
                                <input type="text" name="userphone" placeholder="使用人电话" data-required="true" class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-3 control-label">开始地点</label>
                            <div class="col-lg-8">
                                <input type="text" name="startsite" placeholder="开始地点" data-required="true" class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-3 control-label">结束地点</label>
                            <div class="col-lg-8">
                                <input type="text" name="endsite" placeholder="结束地点" data-required="true" class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-3 control-label">开始时间</label>
                            <div class="col-lg-9">
                                <input type="text" id="starttime" class="combodate form-control" data-format="YYYY-MM-DD HH:mm:SS" data-template="YYYY MM DD HH mm ss" name="starttime" value>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-3 control-label">结束时间</label>
                            <div class="col-lg-9">
                                <input type="text" id="endtime" class="combodate form-control" data-format="YYYY-MM-DD HH:mm:SS" data-template="YYYY MM DD HH mm ss" name="endtime" value>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-3 control-label">备注</label>
                            <div class="col-lg-8">
                                <input type="text" name="remark" placeholder="接送机航班号、周四限行说明、其他" data-required="false" class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-lg-9 col-offset-3">
                                <button type="submit" class="btn btn-white">取消</button>
                                <button type="submit" class="btn btn-primary">确认</button>
                            </div>
                        </div>
                    </form>
                </section>
            </div>
        </div>
    </section>
</section>
<!-- footer -->
<footer id="footer">
    <div class="text-center padder clearfix">
        <p>
            <small>&copy;td</a></small><br>
        </p>
    </div>
</footer>
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
<script type="text/javascript">
    function today(){//构建方法
        var today=new Date();//new 出当前时间
        var h=today.getFullYear();//获取年
        var m=today.getMonth()+1;//获取月
        var d=today.getDate();//获取日
        var H = today.getHours();//获取时
        var M = today.getMinutes();//获取分
        var S = today.getSeconds();//获取秒
        return h+"-"+m+"-"+d+" "+H+":"+M+":"+S; //返回 年-月-日 时:分:秒
    }
    document.getElementById("starttime").value = today();//将获取到的 年-月-日 时:分:秒 赋给input文本输入框
    document.getElementById("endtime").value = today();
</script>
</body>
</html>