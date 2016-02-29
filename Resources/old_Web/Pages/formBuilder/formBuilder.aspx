<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/formBuilder/formBuilder.master" AutoEventWireup="true" CodeFile="formBuilder.aspx.cs" Inherits="Pages_formBuilder_formBuilder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
		
		<!-- Alpaca -->
        <script  src='<%= ResolveUrl("~/lib/alpaca/bootstrap/alpaca.js") %>' ></script>
        <link type="text/css"  href='<%= ResolveUrl("~/lib/alpaca/bootstrap/alpaca.css") %>' rel="stylesheet"  runat="server"/>


        <!-- Beautify (used by EditorField) -->
        <script src='<%= ResolveUrl("~/lib/js-beautify/js/lib/beautify.js") %>' ></script>
        <script src='<%= ResolveUrl("~/lib/js-beautify/js/lib/beautify-css.js" ) %>' ></script>
        <script src='<%= ResolveUrl("~/lib/js-beautify/js/lib/beautify-html.js" ) %>' ></script>

        <!-- typeahead.js -->
        <script src='<%= ResolveUrl("~/lib/typeahead.js/dist/bloodhound.min.js") %>' ></script>
        <script src='<%= ResolveUrl("~/lib/typeahead.js/dist/bloodhound.min.js" ) %>' ></script>
        <script src='<%= ResolveUrl("~/lib/typeahead.js/dist/typeahead.bundle.min.js" ) %>' ></script>

        <!-- datatables (for TableField) -->
        <script src='<%= ResolveUrl("~/lib/datatables/media/js/jquery.dataTables.js") %>' ></script>
        <script src='<%= ResolveUrl("~/lib/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.js") %>' ></script>
        <script src='<%= ResolveUrl("~/lib/datatables-plugins/integration/rowReorder/dataTables.rowReorder.min.js") %>' ></script>
        <link  href='<%= ResolveUrl("~/lib/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.css") %>' rel="stylesheet"  runat="server" />

        <!-- ckeditor (for the ckeditor field) -->
        <script src='<%= ResolveUrl("~/lib/ckeditor/ckeditor.js" ) %>' ></script>

        <!-- fileupload control (for UploadField) -->
        <link  href='<%= ResolveUrl("~/lib/jquery-file-upload/css/jquery.fileupload.css") %>'  rel="stylesheet"  runat="server"/>
        <link  href='<%= ResolveUrl("~/lib/jquery-file-upload/css/jquery.fileupload-ui.css") %>'  rel="stylesheet"  runat="server" />
        <script src='<%= ResolveUrl("~/lib/jquery-file-upload/js/vendor/jquery.ui.widget.js") %>' ></script>
        <script src='<%= ResolveUrl("~/lib/jquery-file-upload/js/jquery.iframe-transport.js") %>' ></script>
        <script src='<%= ResolveUrl("~/lib/jquery-file-upload/js/jquery.fileupload.js") %>' ></script>
        <script src='<%= ResolveUrl("~/lib/jquery-file-upload/js/jquery.fileupload-process.js") %>' ></script>
        <script src='<%= ResolveUrl("~/lib/jquery-file-upload/js/jquery.fileupload-ui.js") %>' ></script>

        <!-- handsontable (for GridField) -->
        <script src='<%= ResolveUrl("~/lib/handsontable/dist/jquery.handsontable.full.js") %>' ></script>
        <link  href='<%= ResolveUrl("~/lib/handsontable/dist/jquery.handsontable.full.css") %>' rel="stylesheet" media="screen"  runat="server" />

        <!-- moment for date and datetime controls -->
        <script src='<%= ResolveUrl("~/lib/moment/min/moment-with-locales.min.js") %>' ></script>
        <!-- bootstrap datetimepicker for date and datetime controls -->
        <script src='<%= ResolveUrl("~/lib/eonasdan-bootstrap-datetimepicker/build/js/bootstrap-datetimepicker.min.js") %>' ></script>
        <link href='<%= ResolveUrl("~/lib/eonasdan-bootstrap-datetimepicker/build/css/bootstrap-datetimepicker.css") %>'  rel="stylesheet" media="screen"  runat="server" />

        <!-- bootstrap-multiselect for time field -->
        <script src='<%= ResolveUrl("~/lib/bootstrap-multiselect/js/bootstrap-multiselect.js") %>' ></script>
        <link  href='<%= ResolveUrl("~/lib/bootstrap-multiselect/css/bootstrap-multiselect.css") %>' rel="stylesheet" media="screen"  runat="server" />

        <!-- jQuery Price Format for currency field -->
        <script  src='<%= ResolveUrl("~/lib/jquery-price-format/jquery.price_format.min.js") %>' ></script>

        <!-- ACE editor -->
        <script src='<%= ResolveUrl("~/lib/ace-builds/src-min-noconflict/ace.js" ) %>' ></script>

        <!-- jQuery UI for draggable support -->
        <script src='<%= ResolveUrl("~/lib/jquery-ui/jquery-ui.js" ) %>' ></script>
       
        <!-- formBuilder scripts & css-->
        <script src='<%= ResolveUrl("~/Scripts/formBuilder/alpacaLocalization.js") %>' ></script>
        <script src='<%= ResolveUrl("~/Scripts/formBuilder/alpacaCustomFields.js") %>' ></script>
        <script src='<%= ResolveUrl("~/Scripts/formBuilder/form-builder.js") %>' ></script>
        <link  href='<%= ResolveUrl("~/Styles/SiteTheme/formBuilder/form-builder.css") %>' rel="stylesheet"  runat="server" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="nav" Runat="Server">
            
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="index.html">SB Admin v2.0</a>
                </div>
                <!-- /.navbar-header -->

                <ul class="nav navbar-top-links navbar-right">
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                            <i class="fa fa-envelope fa-fw"></i>  <i class="fa fa-caret-down"></i>
                        </a>
                        <ul class="dropdown-menu dropdown-messages">
                            <li>
                                <a href="#">
                                    <div>
                                        <strong>John Smith</strong>
                                        <span class="pull-right text-muted">
                                            <em>Yesterday</em>
                                        </span>
                                    </div>
                                    <div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eleifend...</div>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="#">
                                    <div>
                                        <strong>John Smith</strong>
                                        <span class="pull-right text-muted">
                                            <em>Yesterday</em>
                                        </span>
                                    </div>
                                    <div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eleifend...</div>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="#">
                                    <div>
                                        <strong>John Smith</strong>
                                        <span class="pull-right text-muted">
                                            <em>Yesterday</em>
                                        </span>
                                    </div>
                                    <div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eleifend...</div>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a class="text-center" href="#">
                                    <strong>Read All Messages</strong>
                                    <i class="fa fa-angle-right"></i>
                                </a>
                            </li>
                        </ul>
                        <!-- /.dropdown-messages -->
                    </li>
                    <!-- /.dropdown -->
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                            <i class="fa fa-tasks fa-fw"></i>  <i class="fa fa-caret-down"></i>
                        </a>
                        <ul class="dropdown-menu dropdown-tasks">
                            <li>
                                <a href="#">
                                    <div>
                                        <p>
                                            <strong>Task 1</strong>
                                            <span class="pull-right text-muted">40% Complete</span>
                                        </p>
                                        <div class="progress progress-striped active">
                                            <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                                                <span class="sr-only">40% Complete (success)</span>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="#">
                                    <div>
                                        <p>
                                            <strong>Task 2</strong>
                                            <span class="pull-right text-muted">20% Complete</span>
                                        </p>
                                        <div class="progress progress-striped active">
                                            <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 20%">
                                                <span class="sr-only">20% Complete</span>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="#">
                                    <div>
                                        <p>
                                            <strong>Task 3</strong>
                                            <span class="pull-right text-muted">60% Complete</span>
                                        </p>
                                        <div class="progress progress-striped active">
                                            <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                                                <span class="sr-only">60% Complete (warning)</span>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="#">
                                    <div>
                                        <p>
                                            <strong>Task 4</strong>
                                            <span class="pull-right text-muted">80% Complete</span>
                                        </p>
                                        <div class="progress progress-striped active">
                                            <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                                                <span class="sr-only">80% Complete (danger)</span>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a class="text-center" href="#">
                                    <strong>See All Tasks</strong>
                                    <i class="fa fa-angle-right"></i>
                                </a>
                            </li>
                        </ul>
                        <!-- /.dropdown-tasks -->
                    </li>
                    <!-- /.dropdown -->
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                            <i class="fa fa-bell fa-fw"></i>  <i class="fa fa-caret-down"></i>
                        </a>
                        <ul class="dropdown-menu dropdown-alerts">
                            <li>
                                <a href="#">
                                    <div>
                                        <i class="fa fa-comment fa-fw"></i> New Comment
                                        <span class="pull-right text-muted small">4 minutes ago</span>
                                    </div>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="#">
                                    <div>
                                        <i class="fa fa-twitter fa-fw"></i> 3 New Followers
                                        <span class="pull-right text-muted small">12 minutes ago</span>
                                    </div>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="#">
                                    <div>
                                        <i class="fa fa-envelope fa-fw"></i> Message Sent
                                        <span class="pull-right text-muted small">4 minutes ago</span>
                                    </div>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="#">
                                    <div>
                                        <i class="fa fa-tasks fa-fw"></i> New Task
                                        <span class="pull-right text-muted small">4 minutes ago</span>
                                    </div>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="#">
                                    <div>
                                        <i class="fa fa-upload fa-fw"></i> Server Rebooted
                                        <span class="pull-right text-muted small">4 minutes ago</span>
                                    </div>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a class="text-center" href="#">
                                    <strong>See All Alerts</strong>
                                    <i class="fa fa-angle-right"></i>
                                </a>
                            </li>
                        </ul>
                        <!-- /.dropdown-alerts -->
                    </li>
                    <!-- /.dropdown -->
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                            <i class="fa fa-user fa-fw"></i>  <i class="fa fa-caret-down"></i>
                        </a>
                        <ul class="dropdown-menu dropdown-user">
                            <li>
                                <a href="#"><i class="fa fa-user fa-fw"></i> User Profile</a>
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="login.html"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                            </li>
                        </ul>
                        <!-- /.dropdown-user -->
                    </li>
                    <!-- /.dropdown -->
                </ul>
                <!-- /.navbar-top-links -->

                <div class="navbar-default sidebar" role="navigation">
                    <div class="sidebar-nav navbar-collapse">
                        <ul class="nav" id="side-menu">
                            <li class="sidebar-search">
                                <div class="input-group custom-search-form">
                                    <input type="text" class="form-control" placeholder="Search...">
                                    <span class="input-group-btn">
                                        <button class="btn btn-default" type="button">
                                            <i class="fa fa-search"></i>
                                        </button>
                                    </span>
                                </div>
                                <!-- /input-group -->
                            </li>
                            <li>
                                <a href="index.html"><i class="fa fa-dashboard fa-fw"></i> Dashboard</a>
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-bar-chart-o fa-fw"></i> Charts<span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level">
                                    <li>
                                        <a href="flot.html">Flot Charts</a>
                                    </li>
                                    <li>
                                        <a href="morris.html">Morris.js Charts</a>
                                    </li>
                                </ul>
                                <!-- /.nav-second-level -->
                            </li>
                            <li>
                                <a href="tables.html"><i class="fa fa-table fa-fw"></i> Tables</a>
                            </li>
                            <li>
                                <a href="forms.html"><i class="fa fa-edit fa-fw"></i> Forms</a>
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-wrench fa-fw"></i> UI Elements<span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level">
                                    <li>
                                        <a href="panels-wells.html">Panels and Wells</a>
                                    </li>
                                    <li>
                                        <a href="buttons.html">Buttons</a>
                                    </li>
                                    <li>
                                        <a href="notifications.html">Notifications</a>
                                    </li>
                                    <li>
                                        <a href="typography.html">Typography</a>
                                    </li>
                                    <li>
                                        <a href="icons.html"> Icons</a>
                                    </li>
                                    <li>
                                        <a href="grid.html">Grid</a>
                                    </li>
                                </ul>
                                <!-- /.nav-second-level -->
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-sitemap fa-fw"></i> Multi-Level Dropdown<span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level">
                                    <li>
                                        <a href="#">Second Level Item</a>
                                    </li>
                                    <li>
                                        <a href="#">Second Level Item</a>
                                    </li>
                                    <li>
                                        <a href="#">Third Level <span class="fa arrow"></span></a>
                                        <ul class="nav nav-third-level">
                                            <li>
                                                <a href="#">Third Level Item</a>
                                            </li>
                                            <li>
                                                <a href="#">Third Level Item</a>
                                            </li>
                                            <li>
                                                <a href="#">Third Level Item</a>
                                            </li>
                                            <li>
                                                <a href="#">Third Level Item</a>
                                            </li>
                                        </ul>
                                        <!-- /.nav-third-level -->
                                    </li>
                                </ul>
                                <!-- /.nav-second-level -->
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-files-o fa-fw"></i> Sample Pages<span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level">
                                    <li>
                                        <a href="blank.html">Blank Page</a>
                                    </li>
                                    <li>
                                        <a href="login.html">Login Page</a>
                                    </li>
                                </ul>
                                <!-- /.nav-second-level -->
                            </li>
                        </ul>
                    </div>
                    <!-- /.sidebar-collapse -->
                </div>
                <!-- /.navbar-static-side -->
            
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content" Runat="Server">

         <div class="row">
                            <div class="col-md-12">

                                <p class="alert alert-warning">
                                    Test Form Buidert
                                    <br />
                                    <br />
                                    This form builder is provided as an example and is something you can extend.
                                    <br />
                                    <br />
                                    A <a href="www.thodoris.net"> form builder</a>
                                    is available for <a href="/cloud.html">Public Administration</a>.
                                </p>

                            </div>
                        </div>

         <div class="row">
                            <div class="col-md-12">
                                <div>
                                    <ul class="nav nav-tabs">
                                       
                                        <li class="active"><a href="#designer" data-toggle="tab" class="tab-item tab-item-designer">Designer</a></li>
                                        <li><a href="#view" data-toggle="tab" class="tab-item tab-item-view">View</a></li>
                                        
                                        <li><a href="#loadsave" data-toggle="tab" class="tab-item tab-item-loadsave">Load / Save</a></li>
                                        <li><a href="#source" data-toggle="tab" class="invisible tab-item tab-item-source">Source</a></li>
                                        <li><a href="#code" data-toggle="tab" class="invisible tab-item tab-item-code">Code</a></li>
                                    </ul>
                                </div>
                                <div class="tab-content">
                                    <div class="tab-pane active" id="source">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div>
                                                    <ul class="nav nav-tabs">
                                                        <li class="active"><a href="#schema" data-toggle="tab" class="tab-source-schema">Schema</a></li>
                                                        <li><a href="#options" data-toggle="tab" class="tab-source-options">Options</a></li>
                                                        <li><a href="#data" data-toggle="tab" class="tab-source-data">Data</a></li>
                                                    </ul>
                                                </div>
                                                <div class="tab-content">
                                                    <div class="tab-pane active" id="schema">
                                                    </div>
                                                    <div class="tab-pane" id="options">
                                                    </div>
                                                    <div class="tab-pane" id="data">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div>
                                                    <ul class="nav nav-tabs">
                                                        <li class="active"><a href="#preview" data-toggle="tab">Preview</a></li>
                                                    </ul>
                                                </div>
                                                <div class="tab-content">
                                                    <div class="tab-pane active" id="preview">
                                                        <div class="row">
                                                            <div class="col-md-12">
                                                                <div id="previewDiv"></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane" id="designer">
                                        <div class="row">
                                            <div class="col-md-7">
                                                <div class="row">
                                                    <div class="col-md-12">
                                                        <div id="designerDiv"></div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-5">
                                                <div class="row">
                                                    <div class="col-md-12">
                                                        <div>
                                                            <ul class="nav nav-tabs">
                                                                <li class="active"><a href="#types" data-toggle="tab">Types</a></li>
                                                                <li><a href="#basic" data-toggle="tab">Basic</a></li>
                                                                <li><a href="#advanced" data-toggle="tab">Advanced</a></li>
                                                            </ul>
                                                        </div>
                                                        <div class="tab-content">
                                                            <div class="tab-pane active" id="types"></div>
                                                            <div class="tab-pane" id="basic"></div>
                                                            <div class="tab-pane" id="advanced"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane" id="view">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div id="viewDiv"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane" id="code">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div id="codeDiv"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane" id="loadsave">
                                        <div class="row">
                                            <div class="col-md-12">

                                                <button class="btn btn-default load-button">Load Form</button>
                                                <br />
                                                <br />
                                                <button class="btn btn-default save-button">Save Form</button>
                                                <br />

                                                <button class="btn btn-default test-button">Test Form</button>
                                                <br />

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
              
          

</asp:Content>

