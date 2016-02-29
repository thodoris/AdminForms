using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebFormsAdmin.Pages.MasterPages
{
    public partial class forms : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           

        }

        protected void Page_PreRender(object sender, EventArgs e)
        {
            RegisterJsVariables();
            
        }

        private void RegisterJsVariables()
        {
            ClientScriptManager cs = Page.ClientScript;
            Type cstype = this.Page.GetType();

            // Check to see if the startup script is already registered.
            if (!cs.IsStartupScriptRegistered(cstype, "GlobalVariablesJS"))
            {
                String cstext1 = string.Format("var baseURL='{0}';var webServicesBaseURL='{1}';", ResolveUrl("~/") , ResolveUrl("~/WebServices/"));
                cs.RegisterStartupScript(cstype, "GlobalVariablesJS", cstext1, true);
                
            }

        }
    }
}