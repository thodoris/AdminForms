<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/MasterPages/forms.Master" AutoEventWireup="true" CodeBehind="formBuilder.aspx.cs" Inherits="WebFormsAdmin.Pages.formBuilder.formBuilder1" %>

<%@ Register Src="~/Pages/Controls/ucAlpacaFormsHeader.ascx" TagPrefix="uc1" TagName="ucAlpacaFormsHeader" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        
    <uc1:ucalpacaformsheader runat="server" id="ucAlpacaFormsHeader" />
    
    <script src='<%= ResolveUrl("~/Scripts/formBuilder/form-builder.js") %>' ></script>
    <link rel="stylesheet"  href="/Styles/SiteTheme/formBuilder/form-builder.css" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="nav" Runat="Server">
            
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a runat="server" id="lnkTitle" class="navbar-brand" href="#"></a>
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
                                        <strong>minadmin-user</strong>
                                        <span class="pull-right text-muted">
                                            <em>Yesterday</em>
                                        </span>
                                    </div>
                                    <div>Να διεκπεραιωθούν όλες οι αιτήσεις έκδοσης Ποινικού Μητρώου</div>
                                </a>
                            </li>
                            <li class="divider"></li>
                           
                            <li class="divider"></li>
                            <li>
                                <a href="#">
                                    <div>
                                        <strong>min-justice</strong>
                                        <span class="pull-right text-muted">
                                            <em>Yesterday</em>
                                        </span>
                                    </div>
                                    <div>Αποστολή βεβαιώσεων οικογενειακής κατάστασης...</div>
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
                                            <strong>Φόρμα 1</strong>
                                            <span class="pull-right text-muted">40% Ολοκληρώθηκε</span>
                                        </p>
                                        <div class="progress progress-striped active">
                                            <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                                                <span class="sr-only">40% Ολοκληρώθηκε (success)</span>
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
                                            <strong>Φόρμα 2</strong>
                                            <span class="pull-right text-muted">20% Ολοκληρώθηκε</span>
                                        </p>
                                        <div class="progress progress-striped active">
                                            <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 20%">
                                                <span class="sr-only">20% Ολοκληρώθηκε</span>
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
                                            <strong>Φόρμα 3</strong>
                                            <span class="pull-right text-muted">60% Ολοκληρώθηκε</span>
                                        </p>
                                        <div class="progress progress-striped active">
                                            <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                                                <span class="sr-only">60% Ολοκληρώθηκε </span>
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
                                            <strong>Φόρμα 4</strong>
                                            <span class="pull-right text-muted">80% Ολοκληρώθηκε</span>
                                        </p>
                                        <div class="progress progress-striped active">
                                            <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                                                <span class="sr-only">80% Ολοκληρώθηκε </span>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a class="text-center" href="#">
                                    <strong>Δείτε όλες τις φόρμες</strong>
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
                                        <i class="fa fa-comment fa-fw"></i> Νέο σχόλο
                                        <span class="pull-right text-muted small">4 minutes ago</span>
                                    </div>
                                </a>
                            </li>
                            <li class="divider"></li>
                           
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
                                        <i class="fa fa-tasks fa-fw"></i>Νέα αίτηση
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
                                    <input type="text" class="form-control" placeholder="Αναζήτηση...">
                                    <span class="input-group-btn">
                                        <button class="btn btn-default" type="button">
                                            <i class="fa fa-search"></i>
                                        </button>
                                    </span>
                                </div>
                                <!-- /input-group -->
                            </li>
                            <li>
                                <a href="index.html"><i class="fa fa-dashboard fa-fw"></i> Πίνακας Ελέγχου</a>
                            </li>
                            <li>
                                <a href="formBuilder?orgid=2"><i class="fa fa-table fa-fw"></i> Νέο Πρότυπο Φόρμας</a>
                            </li>
                            <li>
                                <a href="../forms/ViewSubmittedForms.aspx?fid=15"><i class="fa fa-edit fa-fw"></i> Φόρμες</a>
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-wrench fa-fw"></i>Πρότυπα Φορμών<span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level">
                                    <asp:Repeater ID="rptFormTemplates" runat="server">
                                     <ItemTemplate>
                                         <li>
                                              <a href="javascript:loadForm(<%# DataBinder.Eval(Container.DataItem,"Id") %>);"> <%# DataBinder.Eval(Container.DataItem,"Title") %></a>
                                        </li>
                                     </ItemTemplate>
                                    </asp:Repeater>
                                </ul>
                                <!-- /.nav-second-level -->
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-sitemap fa-fw"></i> Φορείς<span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level">
                                    <li>
                                        <a href="#">Υπουργείο Εσωτερικών</a>
                                    </li>
                                    <li>
                                        <a href="#">Υπουργείο Δικαιοσύνης</a>
                                    </li>
                                </ul>
                                <!-- /.nav-second-level -->
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-files-o fa-fw"></i> Βοήθεια<span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level">
                                    <li>
                                        <a href="blank.html">Δημιουργία Προτύπου Φόρμας</a>
                                    </li>
                                    <li>
                                        <a href="login.html">Δημοσίευση Φόρμας</a>
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

                                <div class="alert alert-warning alert-dismissible" role="alert">
                                     <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                    <strong>Δημιουργία Φόρμας</strong>
                                    <br />
                                    <ul>
                                        <li>Τα αρχικά πεδία της φόρμας παρέχονται ως παράδειγμα. Μπορείτε να τα διαγράψετε και να προσθέσετε δικά σας πεδία.</li>
                                        <li>Δεν χρειάζεται να προσθέσετε πεδία ταυτοποίησης (Όνομα , Επώνυμο , Ταύτοτητα). Αυτά καταχωρούνται αυτόματα κατά την είσοδο του πολίτη.</li>
                                    </ul>
                                    
                                    <br />
                                    
                                </div>

                            </div>
         </div>
  
     <div class="row">
                <div class="col-md-8">
                    
                    <div class="input-group">
                       
                        <input id="frmTitle" type="text" class="form-control" placeholder="Νέα Φόρμα" />
                        <span class="input-group-btn">
                       <button class="btn btn-primary save-button" type="button">Αποθήκευση!</button>
                           
                      </span>
                     
                    </div><!-- /input-group -->
                                         
                    
                 </div>

                <div class="col-md-4">
                    <span id="frmSaveStatus" class="label label-success"></span>
                 </div>
      </div>


         <div class="row">
                            <div class="col-md-12">
                                <div>
                                    <ul class="nav nav-tabs">
                                       
                                        <li class="active"><a href="#designer" data-toggle="tab" class="tab-item tab-item-designer">Designer</a></li>
                                        <li><a href="#view" data-toggle="tab" class="tab-item tab-item-view">View</a></li>
                                        
                                        <li><a href="#loadsave" data-toggle="tab" class="invisible tab-item tab-item-loadsave">Load / Save</a></li>
                                        <li><a href="#source" data-toggle="tab" class="invisible tab-item tab-item-source" style=" visibility:hidden;">Source</a></li>
                                        <li><a href="#code" data-toggle="tab" class="invisible tab-item tab-item-code" style=" visibility:hidden;">Code</a></li>
                                    </ul>
                                </div>
                                <div class="tab-content">
                                    <div class="tab-pane active invisible" id="source">
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

