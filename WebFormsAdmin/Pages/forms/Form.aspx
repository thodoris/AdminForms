<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/MasterPages/forms.Master" AutoEventWireup="true" CodeBehind="Form.aspx.cs" Inherits="WebFormsAdmin.Pages.forms.SubmitForm" %>

<%@ Register Src="~/Pages/Controls/ucAlpacaFormsHeader.ascx" TagPrefix="uc1" TagName="ucAlpacaFormsHeader" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        
    <uc1:ucalpacaformsheader runat="server" id="ucAlpacaFormsHeader" />
    <script src="../../Scripts/QueryString.js"></script>  
    <script src="IdentityDataSource.js"></script>

 
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="nav" runat="server">
   
     <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a  id="lnkTitle" class="navbar-brand" href="#"></a>
     </div>
  
     <div class="navbar-default sidebar" role="navigation">
                    <div class="sidebar-nav navbar-collapse">
                        <ul class="nav in" id="side-menu">
                        <li class="sidebar-search">
                            <div id="pnlPrint" class="input-group hidden" >
                                <asp:Button ID="BtnCreatePdf" runat="server" Text="Εκτύπωση" CssClass="btn  navbar-button"  OnClick="BtnCreatePdf_Click" />
                                <span class="glyphicon glyphicon-print"></span>
                            </div>
                         
                        </li>
                            </ul>
                        <ul id="pnlSubmissionMetaData" class="list-group">
                         
                        </ul>
                           
                    </div>  
      </div> 

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content" runat="server">

 
<div class="row">
    <div class="col-md-12">
        <div id="field1"> </div>
    </div>
</div>
 
<div class="row">
    <div class="col-md-12">
           <div id="pnlSave" class="input-group hidden">
                           <input id="frmTitle" type="checkbox" class="form-control"  value="" />
                           <button id='btnSubmit' class="btn btn-primary save-button" type="button">Αποθήκευση!</button>
           </div><!-- /input-group -->
    </div>
</div>
    
                      

<div id="">
    
   

</div>   

<script id="submissionMetaData-template" type="text/x-handlebars-template">
     <li class="list-group-item">
                            <span class="badge">{{protocolnumber}}</span>
                            Αρ.Πρωτοκόλλου
                          </li>
                             <li class="list-group-item">
                            <span class="badge">{{submissiondate}}</span>
                            Ημ.Υποβολής
                          </li>
                             <li class="list-group-item list-group-item-success">
                            <span class="badge ">
                                {{submissionstatus}}

                            </span>
                            Κατάσταση
                          </li>
  
</script>

<script type="text/javascript" id="field1-script">

    var mode = '';
    //modes
    //1. submitnew
    //2. viewsubmitted (readonly)


    var submitForm = function (data) {

        var fid = GetQueryStringParams('fid');

        $.ajax({
            type: 'POST',
            url: webServicesBaseURL + 'FormsService.asmx/SubmitForm',
            data: JSON.stringify({ formId: fid, data: data }),
            dataType: 'json',
            contentType: 'application/json; charset=utf-8',
            success: function (response) {
                //alert(JSON.stringify(response));
                var newfsid = JSON.parse(response.d);
                alert('Η φόρμα σας καταχωρήθηκε!');
                document.location.replace(document.location.href + '&fsid=' + newfsid);
            },
            error: function (error) {
                console.log(error);
            }
        });

    }; //submitForm

    //Retrieve the data in JSON and save to Database
    $("#btnSubmit").click(function () {
        var control = Alpaca($("#field1").get());
        var data = JSON.stringify(control.getValue(), null, "   ");
        //alert(JSON.stringify(control.getValue(), null, "   "));
        submitForm(data);

    });

    var loadForm = function (formId,submittedformId) {


                       
        $.ajax({
            type: 'POST',
            url: webServicesBaseURL + 'FormsService.asmx/GetFormJSON' ,
            data: JSON.stringify({ formId: formId, submittedformId: submittedformId }),
            dataType: 'json',
            contentType: 'application/json; charset=utf-8',
            success: function (response) {
                try {
                    var form = JSON.parse(response.d);
                    var title = form.title;
                    var config = JSON.parse(form.formconfig);
                   
                    
                    //update UI
                    UpdateUI(submittedformId, title, form.submittedmetadata);

                   

                    if (!config.schema) {
                        config.schema = {};
                    }
                    if (!config.options) {
                        config.options = {};
                    }
                    if (!config.data) {
                        config.data = {};
                    }
                                      
                    //hack to sort Schema with Identity Properties first
                    var sortedSchema = $.extend({}, Identity_SchemaProperty, config.schema.properties);
                    config.schema.properties = sortedSchema;

                    //add Identity Options
                    $.extend(config.options.fields, Identity_OptionsField);

                    //add Identity Data
                    switch (mode) {
                        case "submitnew":  //add Identity Data for new submission
                            $.extend(config.data, Identity_Data);
                            break;
                        case "viewsubmitted": //add submitted data for existing submission (view)
                            var submitteddata = JSON.parse(form.submitteddata);
                            config.data = submitteddata;
                            break;
                        default:

                    }

                    $("#field1").alpaca({
                        "dataSource": config.data,
                        "optionsSource": config.options,
                        "schemaSource": config.schema
                    });

                }
                catch (e) {
                    // bad value
                }


            },
            error: function (error) {
                console.log(error);
            }
        });

    };

    $(document).ready(function () {
       
        var fid = GetQueryStringParams('fid');
        var fsid = GetQueryStringParams('fsid');
        if (typeof fsid === 'undefined' || fsid === null || fsid==='') fsid = 0;

        
        if (fsid == 0) mode = 'submitnew'; else mode = 'viewsubmitted';


        if (fid > 0) 
        {
            loadForm(fid, fsid);

        }
       

    }); //document.ready;
   
    function UpdateUI(submittedformId, title, submissionmetadata)
    {
        
        if (mode == 'submitnew') {
            $('#pnlSave').toggleClass('hidden show');  //allow submit
            title = title + ' - Υποβολή';
        }
        else
        {
            $('#pnlPrint').toggleClass('hidden show');  //allow print
            title = title + ' - Προβολή';

            var theTemplateScript = $("#submissionMetaData-template").html();
            var theTemplate = Handlebars.compile(theTemplateScript);
            // Pass our data to the template
            var theCompiledHtml = theTemplate(submissionmetadata);

            // Add the compiled html to the page
            $('#pnlSubmissionMetaData').html(theCompiledHtml);
            
        }

        $('#lnkTitle').text(title);
    }

</script>
</asp:Content>
