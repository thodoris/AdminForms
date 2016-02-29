<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucAlpacaFormsHeader.ascx.cs" Inherits="WebFormsAdmin.Pages.Controls.ucAlpacaFormsHeader" %>

<!-- Handlebars -->
<script src='<%= ResolveUrl("~/lib/handlebars/handlebars.min.js")%>'></script>

<!-- Alpaca -->
<script src='<%= ResolveUrl("~/lib/alpaca/bootstrap/alpaca.js") %>'></script>
<link rel="stylesheet" href="/lib/alpaca/bootstrap/alpaca.css" runat="server" type="text/css" />


<!-- Beautify (used by EditorField) -->
<script src='<%= ResolveUrl("~/lib/js-beautify/js/lib/beautify.js") %>'></script>
<script src='<%= ResolveUrl("~/lib/js-beautify/js/lib/beautify-css.js" ) %>'></script>
<script src='<%= ResolveUrl("~/lib/js-beautify/js/lib/beautify-html.js" ) %>'></script>

<!-- typeahead.js -->
<script src='<%= ResolveUrl("~/lib/typeahead.js/dist/bloodhound.min.js") %>'></script>
<script src='<%= ResolveUrl("~/lib/typeahead.js/dist/bloodhound.min.js" ) %>'></script>
<script src='<%= ResolveUrl("~/lib/typeahead.js/dist/typeahead.bundle.min.js" ) %>'></script>

<!-- datatables (for TableField) -->
<script src='<%= ResolveUrl("~/lib/datatables/media/js/jquery.dataTables.js") %>'></script>
<script src='<%= ResolveUrl("~/lib/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.js") %>'></script>
<script src='<%= ResolveUrl("~/lib/datatables-plugins/integration/rowReorder/dataTables.rowReorder.min.js") %>'></script>
<link rel="stylesheet" href="/lib/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.css" />

<!-- ckeditor (for the ckeditor field) -->
<script src='<%= ResolveUrl("~/lib/ckeditor/ckeditor.js" ) %>'></script>

<!-- fileupload control (for UploadField) -->
<link rel="stylesheet" href="/lib/jquery-file-upload/css/jquery.fileupload.css" />
<link rel="stylesheet" href="/lib/jquery-file-upload/css/jquery.fileupload-ui.css" />
<script src='<%= ResolveUrl("~/lib/jquery-file-upload/js/vendor/jquery.ui.widget.js") %>'></script>
<script src='<%= ResolveUrl("~/lib/jquery-file-upload/js/jquery.iframe-transport.js") %>'></script>
<script src='<%= ResolveUrl("~/lib/jquery-file-upload/js/jquery.fileupload.js") %>'></script>
<script src='<%= ResolveUrl("~/lib/jquery-file-upload/js/jquery.fileupload-process.js") %>'></script>
<script src='<%= ResolveUrl("~/lib/jquery-file-upload/js/jquery.fileupload-ui.js") %>'></script>

<!-- handsontable (for GridField) -->
<script src='<%= ResolveUrl("~/lib/handsontable/dist/jquery.handsontable.full.js") %>'></script>
<link rel="stylesheet" href="/lib/handsontable/dist/jquery.handsontable.full.css" />

<!-- moment for date and datetime controls -->
<script src='<%= ResolveUrl("~/lib/moment/min/moment-with-locales.min.js") %>'></script>
<!-- bootstrap datetimepicker for date and datetime controls -->
<script src='<%= ResolveUrl("~/lib/eonasdan-bootstrap-datetimepicker/build/js/bootstrap-datetimepicker.min.js") %>'></script>
<link href="/lib/eonasdan-bootstrap-datetimepicker/build/css/bootstrap-datetimepicker.css" rel="stylesheet" media="screen" />

<!-- bootstrap-multiselect for time field -->
<script src='<%= ResolveUrl("~/lib/bootstrap-multiselect/js/bootstrap-multiselect.js") %>'></script>
<link href="/lib/bootstrap-multiselect/css/bootstrap-multiselect.css" rel="stylesheet" media="screen" runat="server" />

<!-- jQuery Price Format for currency field -->
<script src='<%= ResolveUrl("~/lib/jquery-price-format/jquery.price_format.min.js") %>'></script>

<!-- ACE editor -->
<script src='<%= ResolveUrl("~/lib/ace-builds/src-min-noconflict/ace.js" ) %>'></script>

<!-- jQuery UI for draggable support -->
<script src='<%= ResolveUrl("~/lib/jquery-ui/jquery-ui.js" ) %>'></script>

<!-- formBuilder scripts & css-->
<script src='<%= ResolveUrl("~/Scripts/formBuilder/alpacaLocalization.js") %>'></script>
<script src='<%= ResolveUrl("~/Scripts/formBuilder/alpacaCustomFields.js") %>'></script>
