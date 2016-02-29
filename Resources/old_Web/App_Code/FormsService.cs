using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;



/// <summary>
/// Summary description for FormsService
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
[System.Web.Script.Services.ScriptService]
public class FormsService : System.Web.Services.WebService
{

    public FormsService()
    {

        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }

    [WebMethod]
    [System.Web.Script.Services.ScriptMethod(ResponseFormat = System.Web.Script.Services.ResponseFormat.Json , XmlSerializeString =false , UseHttpGet = false)]
    public string LoadForm(int formId)
    {
        return DataLayer.DBHelper.LoadForm(formId);
    }

    [WebMethod]
    [System.Web.Script.Services.ScriptMethod(ResponseFormat = System.Web.Script.Services.ResponseFormat.Json, XmlSerializeString = false, UseHttpGet = false)]
    public string SaveForm(int orgId , string data)
    {
        int newFormId= DataLayer.DBHelper.SaveForm(orgId, data);
        return newFormId.ToString();
    }


}
