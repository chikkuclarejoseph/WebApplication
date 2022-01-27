using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;
using WebApplication.App_Start;
//using namespace=WebApplication.App_Code;
namespace WebApplication
{
    public class Global : HttpApplication
    {
        //public object Class1 { get; set; }



        void Application_Start(object sender, EventArgs e)
        {
            // Code that runs on application startup
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
            Application.Add("Key", "12345");
            String Key = (String)Application["Key"];


            WebSettings settings = WebSett.LoadSettings(Server.MapPath("~/App_Data/settings.xml"));
            Application.Add("settings", settings);
        }
        void Session_Start(object sender, EventArgs e)
        {
            if (Application["Counter"] == null)
            {
                Application.Add("Counter", 0);
            }
            int iCounter = Convert.ToInt32(Application["Counter"]);
            iCounter++;
            Application["Counter"] = iCounter.ToString();


        }
    }
}
