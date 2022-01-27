using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication.App_Start;

namespace WebApplication
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                WebSettings settings = (WebSettings)Application["settings"];
               LabelDefaultPageText1.Text = settings.DefaultPageText1;
              //LabelDefaultPageText2.Text = settings.DefaultPageText2;
               

            }
            catch (Exception)
            {
            }
        }
       
     }
    }
    
