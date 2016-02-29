using DataLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json;

namespace WebFormsAdmin
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        private string GetOrganizationWithForms()
        {
            List<Organization> oList = DBHelper.GetOrganizationsAndForms();

            var oList2 =oList.Select(x => new { id = x.Id, text = x.Title, children = x.Forms.Select(y => new { id = y.Id, text = y.Title }) });
            string json = JsonConvert.SerializeObject(oList2);
            return json;

        }
        protected void Page_PreRender(object sender, EventArgs e)
        {
            RegisterJsVariables();

        }

        private void RegisterJsVariables()
        {
            ClientScriptManager cs = Page.ClientScript;
            Type cstype = this.Page.GetType();
            string govForms_data = GetOrganizationWithForms();

            // Check to see if the startup script is already registered.
            if (!cs.IsStartupScriptRegistered(cstype, "GlobalVariablesJS"))
            {
                String cstext1 = string.Format("var baseURL='{0}';var webServicesBaseURL='{1}';var govForms_data={2};", ResolveUrl("~/"), ResolveUrl("~/WebServices/") , govForms_data);
                cs.RegisterStartupScript(cstype, "GlobalVariablesJS", cstext1, true);

            }

        }
    }
}