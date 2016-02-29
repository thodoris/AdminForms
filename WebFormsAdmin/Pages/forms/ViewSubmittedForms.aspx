<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/MasterPages/forms.Master" AutoEventWireup="true" CodeBehind="ViewSubmittedForms.aspx.cs" Inherits="WebFormsAdmin.Pages.forms.ViewSubmittedForms" %>


<%@ Register Src="~/Pages/Controls/ucAlpacaFormsHeader.ascx" TagPrefix="uc1" TagName="ucAlpacaFormsHeader" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <uc1:ucalpacaformsheader runat="server" id="ucAlpacaFormsHeader" />
    <script src="../../Scripts/QueryString.js"></script>  

    <link href="../../lib/columns-master/css/clean.css" rel="stylesheet" />
    <script src="../../lib/columns-master/plugins/gotopage.js"></script>
    <script src="../../lib/columns-master/plugins/ajaxpaging.js"></script>
    <script src="../../lib/columns-master/js/jquery.columns.min.js"></script>

    <script type="text/javascript" >
       $(document).ready(function () {
       
           function loadFormSubmissions(fid)
           {

               $.ajax({
                   type: 'POST',
                   url: webServicesBaseURL + 'FormsService.asmx/GetSubmittedFormsJSON',
                   data: JSON.stringify({ formId: fid }),
                   dataType: 'json',
                   contentType: 'application/json; charset=utf-8',
                   success: function (response) {
                       
                       var forms = JSON.parse(response.d);
                       var data = forms.map(function (a) { return JSON.parse(a.Data)  });

                       example2 = $('#field1').columns({
                           data: data
                          
                       });
                   },
                   error: function (error) {
                       console.log(error);
                   }
               });

           }; //loadFormSubmissions
            
           var fid = GetQueryStringParams('fid');
           loadFormSubmissions(fid);

    }); //document.ready;
   

</script>
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="nav" runat="server">

      <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a runat="server" id="lnkTitle" class="navbar-brand" href="index.html"></a>
     </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content" runat="server">

    <div class="row">
            <div class="container-fluid">
    <div class="col-md-12">
           <div id="field1"> </div>
    </div>
                </div>
</div>
   

</asp:Content>
