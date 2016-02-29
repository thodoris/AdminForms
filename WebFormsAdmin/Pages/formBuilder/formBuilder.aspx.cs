using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.ModelBinding;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebFormsAdmin.Pages.formBuilder
{
    public partial class formBuilder1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


            if (!Page.IsPostBack)
            {
                if (Request.QueryString.Keys.Count < 1 || Request.QueryString["orgid"]==null )
                {
                    Response.End();
                }
                int orgid = Int32.Parse(Request.QueryString["orgid"]);
                UpdateJS(orgid);
                UpdateUI(orgid);
               
            }
        }

        private void UpdateJS(int orgid)
        {

        string scriptText = string.Format("var V_orgid={0};",orgid);

            Page currentPage = (Page)HttpContext.Current.Handler;
            ScriptManager.RegisterStartupScript(currentPage,
                                                currentPage.GetType(),
                                                "Funct",
                                                scriptText,
                                                true);

        }

        private void UpdateUI(int orgid)
        {
            DataLayer.Organization o = DataLayer.DBHelper.GetOrganization(orgid);

            lnkTitle.InnerText = string.Format("{0} - Πρότυπα Φορμών", o.Title);


            //update form templates
            List<DataLayer.Form> forms = o.Forms.ToList();
            rptFormTemplates.DataSource = forms;
            rptFormTemplates.DataBind();

        }
      
    }
}