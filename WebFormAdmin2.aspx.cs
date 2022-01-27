using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication.App_Start;

namespace WebApplication
{
    public partial class WebFormAdmin2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["User ID"] == null)
            {
                Response.Redirect("Default.aspx");
            }
            if (!IsPostBack)
            {
                //WebSettings settings1 = (WebSettings)Application["settings"];
                //TextBoxDefaultPageText1.Text = settings1.DefaultPageText1;

                WebSettings settings = (WebSettings)Application["settings"];
                TextBoxDefaultPageText1.Text = settings.DefaultPageText1;
                TextBoxDefaultPageText2.Text = settings.DefaultPageText2;
                TextBoxHeader.Text = settings.HeaderText;
                TextBoxFooter.Text = settings.FooterText;
            }

        }

        protected void ButtonSave_Click(object sender, EventArgs e)
        {
            WebSettings settings = (WebSettings)Application["settings"];
            settings.DefaultPageText1 = TextBoxDefaultPageText1.Text;
            settings.DefaultPageText2 = TextBoxDefaultPageText2.Text;
            settings.HeaderText = TextBoxHeader.Text;
            settings.FooterText = TextBoxFooter.Text;

            WebSett.SaveSettings(Server.MapPath("~/App_Data/settings.xml"), settings);
            Application["settings"] = settings;
        }
    }
}