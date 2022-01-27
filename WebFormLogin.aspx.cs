using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication
{
    public partial class WebFormLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        //protected void ButtonSubmit_Click(object sender, EventArgs e)
        //{
        //}

        protected void ButtonSubmit_Click1(object sender, EventArgs e)
        {

            string UserName = WebConfigurationManager.AppSettings["PFUserName"];
            string Password = WebConfigurationManager.AppSettings["PFPassword"];
            if (TextBoxEmail.Text == UserName && TextBoxPassword.Text == Password)
            {
                Session.Add("User ID", UserName);
                Response.Redirect("WebFormAdmin1.aspx");
            }
            else
            {
                LabelMessage.Text = "Please enter valid Username and Password";
            }

        }
    }
}