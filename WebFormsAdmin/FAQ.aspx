<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Faq.aspx.cs" Inherits="WebFormsAdmin.FAQ" %>
<asp:Content ID="FAQContent" ContentPlaceHolderID="MainContent" runat="server">

    <style>
    .faqHeader {
        font-size: 27px;
        margin: 20px;
    }

    
    
</style>
    
<!-- Bootstrap FAQ - START -->
<div class="container">
    <br />
    <br />
    <br />

    <div class="alert alert-warning alert-dismissible" role="alert">
        <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
        This section contains a wealth of information, related to <strong>PrepBootstrap</strong> and its store. If you cannot find an answer to your question, 
        make sure to contact us. 
    </div>

    <br />

    <div class="panel-group" id="accordion">
        <div class="faqHeader">Γενικά</div>
        <div class="panel panel-default">
            <div class="panel-heading">
                <h4 class="panel-title">
                    <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseOne">Τί είναι το forms.gov ;</a>
                </h4>
            </div>
            <div id="collapseOne" class="panel-collapse collapse in">
                <div class="panel-body">
                    Το forms.gov , είναι μια διαδραστική πλατφόμα που επιτρέπει την δημιουργία φορμών με εύκολο και
                </div>
            </div>
        </div>
        <div class="panel panel-default">
            <div class="panel-heading">
                <h4 class="panel-title">
                    <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseTen">Ποιός μπορεί να χρησιμοποιήσει το gov.gr</a>
                </h4>
            </div>
            <div id="collapseTen" class="panel-collapse collapse">
                <div class="panel-body">
                   Οι χρήστες της εφαρμογής είναι αφενός οι δημόσιοι φορείς που επιθυμούν να ηλεκτρονικοποιήσουν τις αιτήσεις που δέχονται και
                    αφετέρου οι πολίτες και οι επιχειρήσεις που χρησιμοποιούν την πλατφόρμα για να υποβάλλουν ηλεκτρονικά τα αιτήματα τους προς την Δημόσια Διοίκηση.
                </div>
            </div>
        </div>
        <div class="panel panel-default">
            <div class="panel-heading">
                <h4 class="panel-title">
                    <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseEleven">What is the currency used for all transactions?</a>
                </h4>
            </div>
            <div id="collapseEleven" class="panel-collapse collapse">
                <div class="panel-body">
                    All prices for themes, templates and other items, including each seller's or buyer's account balance are in <strong>USD</strong>
                </div>
            </div>
        </div>

        <div class="faqHeader">Δημόσιοι Φορείς</div>
        <div class="panel panel-default">
            <div class="panel-heading">
                <h4 class="panel-title">
                    <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">Ποιοί Δημόσιοι φορείς μπορούν να αξιοποιήσουν την πλατφόρμα forms.gov</a>
                </h4>
            </div>
            <div id="collapseTwo" class="panel-collapse collapse">
                <div class="panel-body">
                    Οποιοσδήποτε Φορέας δέχεται αιτήματα πολιτών , μπορεί να χρησιμοποιήσει την πλατφόρμα για να δημοσιεύσει τις φόρμες αιτήματων που δέχεται.
                </div>
            </div>
        </div>
        <div class="panel panel-default">
            <div class="panel-heading">
                <h4 class="panel-title">
                    <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseThree">Θέλω να δημοσιεύσω φόρμες του φορέα μου - τι πρέπει να κάνω ;</a>
                </h4>
            </div>
            <div id="collapseThree" class="panel-collapse collapse">
                <div class="panel-body">
                    Τα βήματα για την δημοσίευση μιας φόρμας είναι πολύ απλα. Όλα όσα θα χρειαστείτε να κάνετε είναι:
                    <ul>
                        <li>Να δημιουργήσετε ένα λογαριασμό</li>
                        <li>Κάνετε είσοδο στο site</li>
                        <li>Μεταβείτε στην σελίδα  <strong>Form-Builder</strong> και να επιλέξετε τα πεδία που θα περιέχει η αίτηση</li>
                        <li>Επιλέξτε το κοινό που απευθήνεται η αίτηση (Γεωγραφικό Διαμέρισμα , Ηλικία , Φύλο , Κατηγορία )</li>
                        <li>Πατήστε το κουμπί <strong>δημοσίευση</strong></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="panel panel-default">
            <div class="panel-heading">
                <h4 class="panel-title">
                    <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseFive">Είναι αλήθεια τόσο απλό ;</a>
                </h4>
            </div>
            <div id="collapseFive" class="panel-collapse collapse">
                <div class="panel-body">
                    Here, at <strong>PrepBootstrap</strong>, we offer a great, 70% rate for each seller, regardless of any restrictions, such as volume, date of entry, etc.
                    <br />
                </div>
            </div>
        </div>
        <div class="panel panel-default">
            <div class="panel-heading">
                <h4 class="panel-title">
                    <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseSix">Μπορώ να έχω πρόσβαση στα δεδομένα των αιτήσεων που έχουν συμπληρωθεί ;</a>
                </h4>
            </div>
            <div id="collapseSix" class="panel-collapse collapse">
                <div class="panel-body">
                    There are a number of reasons why you should join us:
                    <ul>
                        <li>A great 70% flat rate for your items.</li>
                        <li>Fast response/approval times. Many sites take weeks to process a theme or template. And if it gets rejected, there is another iteration. We have aliminated this, and made the process very fast. It only takes up to 72 hours for a template/theme to get reviewed.</li>
                        <li>We are not an exclusive marketplace. This means that you can sell your items on <strong>PrepBootstrap</strong>, as well as on any other marketplate, and thus increase your earning potential.</li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="panel panel-default">
            <div class="panel-heading">
                <h4 class="panel-title">
                    <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseEight">What are the payment options?</a>
                </h4>
            </div>
            <div id="collapseEight" class="panel-collapse collapse">
                <div class="panel-body">
                    The best way to transfer funds is via Paypal. This secure platform ensures timely payments and a secure environment. 
                </div>
            </div>
        </div>
        <div class="panel panel-default">
            <div class="panel-heading">
                <h4 class="panel-title">
                    <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseNine">When do I get paid?</a>
                </h4>
            </div>
            <div id="collapseNine" class="panel-collapse collapse">
                <div class="panel-body">
                    Our standard payment plan provides for monthly payments. At the end of each month, all accumulated funds are transfered to your account. 
                    The minimum amount of your balance should be at least 70 USD. 
                </div>
            </div>
        </div>

        <div class="faqHeader">Πολίτες</div>
        <div class="panel panel-default">
            <div class="panel-heading">
                <h4 class="panel-title">
                    <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseFour">I want to buy a theme - what are the steps?</a>
                </h4>
            </div>
            <div id="collapseFour" class="panel-collapse collapse">
                <div class="panel-body">
                    Buying a theme on <strong>PrepBootstrap</strong> is really simple. Each theme has a live preview. 
                    Once you have selected a theme or template, which is to your liking, you can quickly and securely pay via Paypal.
                    <br />
                    Once the transaction is complete, you gain full access to the purchased product. 
                </div>
            </div>
        </div>
        <div class="panel panel-default">
            <div class="panel-heading">
                <h4 class="panel-title">
                    <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseSeven">Is this the latest version of an item</a>
                </h4>
            </div>
            <div id="collapseSeven" class="panel-collapse collapse">
                <div class="panel-body">
                    Each item in <strong>PrepBootstrap</strong> is maintained to its latest version. This ensures its smooth operation.
                </div>
            </div>
        </div>
    </div>
</div>

</asp:Content>
