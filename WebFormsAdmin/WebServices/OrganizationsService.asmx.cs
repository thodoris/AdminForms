using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace WebFormsAdmin.WebServices
{
    /// <summary>
    /// Summary description for OrganizationsService
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    [System.Web.Script.Services.ScriptService]
    public class OrganizationsService : System.Web.Services.WebService
    {

        [WebMethod]
        [System.Web.Script.Services.ScriptMethod(ResponseFormat = System.Web.Script.Services.ResponseFormat.Json, XmlSerializeString = false, UseHttpGet = false)]
        public int  LoginUser(string email , string password)
        {
            DataLayer.Organization o = DataLayer.DBHelper.OrganizationLogin(email, password);
            return (o != null && o.Id > 0) ? o.Id : 0;  
            
        }
    }
}
