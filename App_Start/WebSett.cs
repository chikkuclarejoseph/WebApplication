using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication.App_Start
{
    
    public class WebSettings
    {
        public String DefaultPageText1 { get; set; }
        public String DefaultPageText2 { get; set; }
        public String HeaderText { get; set; }
        public String FooterText { get; set; }
    }

    public class WebSett
    {

        //public Class1()
        //{
        //}

        public static WebSettings LoadSettings(string FilePath)
        {
            WebSettings settings = new WebSettings();

            try
            {
             
                System.Xml.Serialization.XmlSerializer reader = new System.Xml.Serialization.XmlSerializer(typeof(WebSettings));

                System.IO.StreamReader file = new System.IO.StreamReader(FilePath);
                settings = (WebSettings)reader.Deserialize(file);
                file.Close();

                return settings;

            }
            catch (Exception)
            {
                return settings;
            }
        }
        public static void SaveSettings(string FilePath,WebSettings settingsobj)
        {
            System.Xml.Serialization.XmlSerializer writer = new System.Xml.Serialization.XmlSerializer(typeof(WebSettings));

            var FileName = "WebSettings.xml";
            System.IO.FileStream file = System.IO.File.Create(FilePath);

            writer.Serialize(file, settingsobj);
            file.Close();
        }
    }
}