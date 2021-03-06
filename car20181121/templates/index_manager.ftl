
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
    <!--[if lt IE 9]>
    <script src="../js/ie/respond.min.js"></script>
    <script src="../js/ie/html5.js"></script>
    <![endif]-->
</head>
<body>
<#--// todo 模块-->
<section id="content">
    <section class="main padder">
        <div class="clearfix">
            <h4><i class="icon-edit"></i>Form</h4>
        </div>
        <div class="row">
            <div class="col-lg-6">
                <section class="panel">
                    <form class="form-horizontal" method="get" data-validate="parsley">
                        <div class="form-group">
                            <label class="col-lg-3 control-label">Photo</label>
                            <div class="col-lg-9 media">
                                <div class="bg-light pull-left text-center media-large thumb-large"><i class="icon-user inline icon-light icon-3x m-t-large m-b-large"></i></div>
                                <div class="media-body">
                                    <input type="file" name="file" title="Change" class="btn btn-small btn-info m-b-small"><br>
                                    <button class="btn btn-small btn-default">Delete</button>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-3 control-label">Email</label>
                            <div class="col-lg-8">
                                <input type="text" name="email" placeholder="test@example.com" class="bg-focus form-control" data-required="true" data-type="email">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-3 control-label">Password</label>
                            <div class="col-lg-8">
                                <input type="password" name="password" placeholder="Password" class="bg-focus form-control">
                                <div class="line line-dashed m-t-large"></div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-3 control-label">Username</label>
                            <div class="col-lg-8">
                                <input type="text" name="username" placeholder="Username" data-required="true" class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-3 control-label">Account</label>
                            <div class="col-lg-4">
                                <select name="account" class="form-control">
                                    <option value="1">Editor</option>
                                    <option value="0">Admin</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-3 control-label">Registered</label>
                            <div class="col-lg-9">
                                <input type="text" class="combodate form-control" data-format="DD-MM-YYYY" data-template="D  MMM  YYYY" name="datetime" value="21-12-2012">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-3 control-label">Profile</label>
                            <div class="col-lg-8">
                                <textarea placeholder="Profile" rows="5" class="form-control" data-trigger="keyup" data-rangelength="[20,200]"></textarea>
                                <div class="checkbox">
                                    <label>
                                        <input name="agree" type="checkbox"> Agree the <a href="#">terms and policy</a>
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-lg-9 col-offset-3">
                                <button type="submit" class="btn btn-white">Cancel</button>
                                <button type="submit" class="btn btn-primary">Save changes</button>
                            </div>
                        </div>
                    </form>
                </section>
            </div>
            <div class="col-lg-6">
                <div class="panel">
                    <div class="clearfix">
                        <div class="col-lg-12">
                            <p>Combobox</p>
                            <div id="myCombobox" class="input-group dropdown combobox m-b">
                                <input class="input-small form-control" name="combobox" type="text">
                                <div class="input-group-btn">
                                    <button type="button" class="btn btn-small btn-white dropdown-toggle" data-toggle="dropdown"><i class="caret"></i></button>
                                    <ul class="dropdown-menu pull-right">
                                        <li data-value="1" data-selected="true"><a href="#">Item One</a></li>
                                        <li data-value="2"><a href="#">Item Two</a></li>
                                        <li data-value="3" data-fizz="buzz"><a href="#">Item Three</a></li>
                                        <li class="divider"></li>
                                        <li data-value="4"><a href="#">Item Four</a></li>
                                    </ul>
                                </div>
                            </div>
                            <p>Select</p>
                            <div id="mySelect" class="select btn-group m-b" data-resize="auto">
                                <button type="button" data-toggle="dropdown" class="btn btn-white btn-small dropdown-toggle">
                                    <span class="dropdown-label"></span> <span class="caret"></span>
                                </button>
                                <ul class="dropdown-menu">
                                    <li data-value="1" data-selected="true"><a href="#">Item One</a></li>
                                    <li data-value="2"><a href="#">Item Two</a></li>
                                    <li data-value="3" data-fizz="buzz"><a href="#">Item Three</a></li>
                                    <li class="divider"></li>
                                    <li data-value="4"><a href="#">Item Four</a></li>
                                </ul>
                            </div>
                            <p>Spinner</p>
                            <div id="MySpinner" class="spinner input-group m-b">
                                <input type="text" class="input-small spinner-input form-control" name="spinner" maxlength="3">
                                <div class="btn-group btn-group-vertical input-group-btn">
                                    <button type="button" class="btn btn-white spinner-up">
                                        <i class="icon-chevron-up"></i>
                                    </button>
                                    <button type="button" class="btn btn-white spinner-down">
                                        <i class="icon-chevron-down"></i>
                                    </button>
                                </div>
                            </div>
                            <p>Dropdown select</p>
                            <div class="btn-group">
                                <button data-toggle="dropdown" class="btn btn-small btn-white dropdown-toggle">
                                    <span class="dropdown-label">Option1</span>
                                    <span class="caret"></span>
                                </button>
                                <ul class="dropdown-menu dropdown-select">
                                    <li class="active"><a href="#"><input type="radio" name="d-s-r" checked="">Option1</a></li>
                                    <li><a href="#"><input type="radio" name="d-s-r">Option2</a></li>
                                    <li><a href="#"><input type="radio" name="d-s-r">Option3</a></li>
                                    <li class="disabled"><a href="#"><input type="radio" name="d-s-r" disabled="">I'm disabled</a></li>
                                </ul>
                            </div>
                            <div class="btn-group">
                                <button data-toggle="dropdown" class="btn btn-small btn-white dropdown-toggle">
                                    <span class="dropdown-label" data-placeholder="Please select">Please select</span>
                                    <span class="caret"></span>
                                </button>
                                <ul class="dropdown-menu dropdown-select">
                                    <li><a href="#"><input type="checkbox" name="d-s-c-1">Option1</a></li>
                                    <li><a href="#"><input type="checkbox" name="d-s-c-2">Option2</a></li>
                                    <li><a href="#"><input type="checkbox" name="d-s-c-3">Option3</a></li>
                                    <li><a href="#"><input type="checkbox" name="d-s-c-4">Option4</a></li>
                                    <li><a href="#"><input type="checkbox" name="d-s-c-5">Option5</a></li>
                                </ul>
                            </div>
                            <div class="input-group m-b m-t">
                                <input type="text" id="appendedInput" class="input-small form-control">
                                <div class="input-group-btn">
                                    <button class="btn btn-white btn-small dropdown-toggle" data-toggle="dropdown">
                                        <span class="dropdown-label">USD</span>
                                        <span class="caret"></span>
                                    </button>
                                    <ul class="dropdown-menu dropdown-select pull-right">
                                        <li class="active">
                                            <a href="#"><input type="radio" value="USD" name="pay_unit" checked="">USD</a>
                                        </li>
                                        <li>
                                            <a href="#"><input type="radio" value="GBP" name="pay_unit">GBP</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <p>Pillbox</p>
                            <div id="MyPillbox" class="pillbox clearfix m-b">
                                <ul>
                                    <li class="label">Item One</li>
                                    <li class="label bg-success">Item Two</li>
                                    <li class="label bg-warning">Item Three</li>
                                    <li class="label bg-danger">Item Four</li>
                                    <li class="label bg-info">Item Five</li>
                                    <li class="label bg-success">Item Six</li>
                                    <li class="label bg-default">Item Seven</li>
                                    <input type="text" placeHolder="add a pill">
                                </ul>
                            </div>
                            <p>Datepicker</p>
                            <div class="m-b row">
                                <div class="col-lg-6">
                                    <input class="input-small form-control datepicker" size="16" type="text" value="12-02-2013" data-date-format="dd-mm-yyyy" >
                                </div>
                            </div>
                            <p>Slider</p>
                            <div>
                                <input class="slider" type="text" value="" data-slider-min="-20" data-slider-max="20" data-slider-step="1" data-slider-value="-14" data-slider-selection="after">
                            </div>
                            <div class="dropfile visible-lg m-t">
                                <small>Drag and Drop file here</small>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</section>
<!-- footer -->
<footer id="footer">
    <div class="text-center padder clearfix">
        <p>
            <small>&copy; first 2013, Mobile first web app framework base on Bootstrap  更多模板：<a href="http://www.mycodes.net/" target="_blank">源码之家</a></small><br><br>
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
</body>
</html>