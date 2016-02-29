using DataLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.Services;

namespace WebFormsAdmin.WebServices
{
    /// <summary>
    /// Summary description for FormsService
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    [System.Web.Script.Services.ScriptService]
    public class FormsService : System.Web.Services.WebService
    {

        public FormsService()
        {

            //Uncomment the following line if using designed components 
            //InitializeComponent(); 
        }

        

        [WebMethod]
        [System.Web.Script.Services.ScriptMethod(ResponseFormat = System.Web.Script.Services.ResponseFormat.Json, XmlSerializeString = false, UseHttpGet = false)]
        public string SaveForm(int orgId,string title, string data)
        {
            int newFormId = DataLayer.DBHelper.SaveForm(orgId,title, data);
            return newFormId.ToString();
        }

        [WebMethod]
        [System.Web.Script.Services.ScriptMethod(ResponseFormat = System.Web.Script.Services.ResponseFormat.Json, XmlSerializeString = false, UseHttpGet = false)]
        public string SubmitForm(int formId, string data)
        {
            string result = DataLayer.DBHelper.SubmitForm(formId, data);
            return result.ToString();
        }

        [WebMethod]
        [System.Web.Script.Services.ScriptMethod(ResponseFormat = System.Web.Script.Services.ResponseFormat.Json, XmlSerializeString = false, UseHttpGet = false)]
        public string GetFormJSON(int formId,int submittedformId=0)
        {
            return DataLayer.DBHelper.GetFormJSON(formId, submittedformId);
        }

       
        [WebMethod]
        [System.Web.Script.Services.ScriptMethod(ResponseFormat = System.Web.Script.Services.ResponseFormat.Json, XmlSerializeString = false, UseHttpGet = false)]
        public string GetSubmittedFormsJSON(int formId)
        {
            string result = DataLayer.DBHelper.GetSubmittedFormsJSON(formId);

            return result;
            
        }
        



    }

}
