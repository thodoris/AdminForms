<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebFormsAdmin._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <link href="lib/select2/dist/css/select2.min.css" rel="stylesheet" />
    <link href="lib/select2/dist/css/select2.bootstrap.min.css" rel="stylesheet" />
    <script src="lib/select2/dist/js/select2.min.js"></script>

<style>

    .select2-container {
    width: 100% !important;
    padding: 0;
}

.btn_red {padding:10px 20px;background: #ED6347; color: #FFF;}

.btn_red:hover {background: #C12B05;}

a.btn_red {color: #FFF;}

.one_half {width:50%; display: block; float:left;}
.one_half.last {width:45%; margin-left:5%;}

 .social_login {}
.social_login .social_box {display:block; clear:both; padding:10px; margin-bottom: 10px; background: #F4F4F2; overflow: hidden;}
.social_login .icon {display:block; width:10px; padding:5px 10px; margin-right: 10px; float:left; color:#FFF; font-size:16px; text-align: center;} 
.social_login .fb .icon {background:#3B5998;}
.social_login .google .icon {background:#DD4B39;}
.social_login .icon_title {display:block; padding:5px 0; float:left; font-weight: bold; font-size: 16px; color:#777;}
.social_login .social_box:hover {background: #E4E4E2;}

.centeredText {text-align: center; margin: 20px 0; clear: both; overflow: hidden; text-transform: uppercase;}

.action_btns {clear:both; overflow: hidden;}
.action_btns a {display: block;}

/* User Login Form */
.user_login label {display: block; margin-bottom:5px;}
.user_login input[type="text"], .user_login input[type="email"], .user_login input[type="password"] {display: block; width:90%; padding: 10px; border:1px solid #DDD; color:#666;}
.user_login input[type="checkbox"] {float:left; margin-right:5px;}
.user_login input[type="checkbox"]+label {float:left;}

.user_login .checkbox {margin-bottom: 10px; clear: both; overflow: hidden;}
.forgot_password {display:block; margin: 20px 0 10px; clear: both; overflow: hidden; text-decoration: none; color:#ED6347;}
    </style>
    <div class="jumbotron">
         <div class="row">
            <div class="col-md-6">
                <h1>FORMS.GOV</h1>
                <p class="lead">διαδραστική πλατφόρμα δημιουργίας φορμών και αιτήσεων της Δημόσιας Διοίκησης.</p>
                <p><a href="About.aspx" class="btn btn-primary btn-lg">Μάθε περισσότερα &raquo;</a></p>
            </div>
            <div class="col-md-6">
               <h3>
                        Δειτε πώς λειτουργεί
                        </h3>
                        <div class="embed-responsive embed-responsive-16by9">
                            <iframe class="embed-responsive-item" src="//www.youtube.com/embed/zpOULjyy-n8?rel=0"></iframe>
                        </div>
            </div>

             </div>

    </div>

    <div class="row">
        <div class="col-md-6">
            <h2>Δημόσιοι Φορείς</h2>
            <p>
                Η πλατφόρμα forms.gov επιτρέπει σε δημόσιους οργανισμούς να σχεδιάσουν διαδραστικά τις αιτήσεις που δέχονται απο πολίτες.
                Μια φιλική διεπαφή σχεδιασμού με έτοιμα πεδία και εργαλεία επιτρέπει να δημιουργηθούν γρήγορα εκλεπτυσμένες διεπαφές με γνώμονα την διευκόλυνση της εξυπηρέτησης του πολίτη.
            
            </p>
            <p>
                <a class="btn btn-default" href="#" data-toggle="modal" data-target="#govloginModal" >Είσοδος ως Φορέας &raquo;</a>
            </p>
        </div>
        <div class="col-md-6">
            <h2>Πολίτες</h2>
            <p>
                Οι πολίτες χωρίς να χρειαστεί να εγγραφούν πουθενά υποβάλλουν τις αιτήσεις που έχουν δημοσιεύσει οι δημόσιοι φορείς.
                Για την αυθεντικοποίηση τους μπορούν να χρησιμοποιήσουν τον λογαριασμό τους στο Taxis ή στο STORK 2.0
            </p>
            <p>
                <a class="btn btn-default" href="#" data-toggle="modal" data-target="#citizenLoginModal">Είσοδος ως Πολίτης &raquo;</a>
            </p>
        </div>
    </div>

<!-- Citizen Login Modal -->
<div class="modal fade" id="citizenLoginModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h4 class="js-title-step"></h4>
      </div>
      <div class="modal-body">
        <div class="row hide" data-step="1" data-title="1. Επιλέξτε Αίτηση">
          <div class="well">
               <div class="form-group form-inline ">
              <select id='orgformsselect' class="form-control select2">
            </select>
                   </div>

          </div>
        </div>
        <div class="row hide" data-step="2" data-title="2. Επιλέξτε τρόπο αυθεντικοποίησης">
          <div class="well">
             
                <!-- select authentication -->
               <div id='citizen_login' class="social_login">
				<div>
					<a  href ="#" id="btn_login_taxis" class="social_box fb">
						 <span >
						<img runat="server" src="~/Pages/IdentityProviders/taxis/assets/taxisnet_logo_small.png" alt="TAXIS" class="img-circle pull-left">
						</span>
						<span class="icon_title pull-right">Είσοδος με TAXIS</span>
						
					</a>

					<a  href="#" id="btn_login_stork" class="social_box google">
                        <span >
						<img runat="server" src="~/Pages/IdentityProviders/strork/assets/stork_logo_small.png" alt="STORK" class="img-circle pull-left">
						</span>
                            <span class="icon_title pull-right">Είσοδος με STORK</span>
					</a>
				</div>

				<div class="centeredText">
					<span>Or use your Email address</span>
				</div>

				<div class="action_btns">
					<div class="one_half"><a href="#" id="login_form" class="btn">Login</a></div>
				</div>
			</div>
             <!-- select authentication -->

          </div>
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default js-btn-step pull-left" data-orientation="cancel" data-dismiss="modal"></button>
        <button type="button" class="btn btn-warning js-btn-step" data-orientation="previous"></button>
        <button type="button" class="btn btn-success js-btn-step" data-orientation="next"></button>
      </div>
    </div>
  </div>
</div>

    <div class="modal fade" id="govloginModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="exampleModalLabel">Είσοδος</h4>
      </div>
      <div class="modal-body">

          	<div id='gov_login' class="user_login">
				
					<label>Email / Username</label>
					<input id="user_login_email" type="text" />
					<br />

					<label>Password</label>
					<input id="user_login_password" type="password" />
					<br />

                  
                  <div class="alert alert-info pull-right " role="alert">
                      <span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
                      
                     <p class="text-info pull-right small">Για δοκιμή μπορείτε να χρησιμοποιήστε τα user@minadmin.gov.gr / minadmin </p>
                  </div>

					<div class="checkbox">
						<input id="remember" type="checkbox" />
						<label for="remember">Να με θυμάσαι</label>
					</div>

					<div class="action_btns">
						<div class="one_half last"><a id="btn_gov_login" href="#" class="btn btn_red">Login</a></div>
					</div>
				

				<a href="#" class="forgot_password">Ξεχάσατε τον κωδικό;</a>
			</div>

      </div>
      <div class="modal-footer">
       
      </div>
    </div>
  </div>
</div>

<script  src="/lib/jquery-modal-steps/jquery-bootstrap-modal-steps.js"></script>

<script type="text/javascript">

 
    $(document).ready(function () {
     $("#citizenLoginModal").modalSteps();
     $("#orgformsselect").select2({
         data: govForms_data
     });
        //$("#orgformsselect option:selected").val()
 });
    
    $("#btn_login_taxis").click(function () {

        var selectedform=$("#orgformsselect option:selected").val();
        var taxis_params='?fid='+selectedform;
        var taxis_URL='/Pages/IdentityProviders/taxis/login.htm'+taxis_params;

        document.location.href=taxis_URL;
    });

    $("#btn_login_stork").click(function () {

        var selectedform = $("#orgformsselect option:selected").val();
        var stork_params = '?fid=' + selectedform;
        var stork_URL = '/Pages/IdentityProviders/strork/step1.htm' + stork_params;

        document.location.href = stork_URL;
    });


 /* handle gov login */
 $("#btn_gov_login").click(function () {
		  
     var email = $('#user_login_email').val();
     var password = $('#user_login_password').val();

     $.ajax({
         type: 'POST',
         url: webServicesBaseURL + 'OrganizationsService.asmx/LoginUser',
         data: JSON.stringify({ email: email , password:password }),
         dataType: 'json',
         contentType: 'application/json; charset=utf-8',
         success: function (response) {
             try {
                 var result = JSON.parse(response.d);
                 if (result > 0) window.location.replace('/Pages/formBuilder/formBuilder.aspx?orgid='+result);

		                
             }
             catch (e) {
                 // bad value
             }


         },
         error: function (error) {
             console.log(error);
         }
     });

     
     return false;
 });



</script>



</asp:Content>
