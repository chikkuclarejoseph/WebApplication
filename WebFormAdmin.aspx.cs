//using System;
//using System.Collections.Generic;
//using System.Linq;
//using System.Web;
//using System.Web.UI;
//using System.Web.UI.WebControls;
//using WebApplication.App_Start;
//namespace WebApplication
//{
//    public partial class WebFormAdmin : System.Web.UI.Page
//    {
//        protected void Page_Load(object sender, EventArgs e)
//        {
//            try
//            {
//                WebSettings settings = (WebSettings)Application["settings"];
//                //LabelDefaultPageTxt1.Text = settings.DefaultPageText1;
//                //LabelDefaultPageText2.Text = settings.DefaultPageText2;
//                //LabelHeaderText.Text = settings.HeaderText;
//                //LabelFooterText.Text = settings.FooterText;
//            }
//            catch(Exception)
//            {
//            }
//            if (Session["User ID"] == null)
//            {
//                Response.Redirect("WebFormLogin.aspx");
//            }
//            if (!IsPostBack)
//            {
//                WebSettings settings = (WebSettings)Application["settings"];
//                TextBoxDefaultPageTxt1.Text = settings.DefaultPageText1;
//            }
//        }

//        protected void ButtonSave_Click(object sender, EventArgs e)
//        {
//            WebSettings settings = (WebSettings)Application["settings"];
//            settings.DefaultPageText1 = TextBoxDefaultPageTxt1.Text;
//            settings.DefaultPageText2 = TextBoxDefaultPageText2.Text;
//            settings.HeaderText = TextBoxHeaderText.Text;
//            settings.FooterText = TextBoxFooterText.Text;

//            WebSett.SaveSettings(Server.MapPath("~/App_Data/settings.xml"), settings);
//            Application["settings"] = settings;
//        }
//    }
   
//    }
