using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication.App_Start;

namespace WebApplication
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            WebSettings settings = (WebSettings)Application["settings"];
            LabelCounter.Text = "You are Visitor No: " +Application["Counter"].ToString();
            LabelHeaderText.Text = settings.HeaderText;
             LabelFooterText.Text = settings.FooterText;
           
        }
        protected void ButtonLogin_Click(object sender, EventArgs e)
        {

            Response.Redirect("WebFormAdmin2.aspx");
        }

        protected void ButtonLogout_Click(object sender, EventArgs e)
        {
            Session.Remove("User ID");
            Response.Redirect("WebFormLogin1.aspx");
        }
       
    }
}