using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Xml;

public partial class notice : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string userName = Session["userid"].ToString();
        //string userName = "Vathsa";
        if (userName == "admin")
        {
            formview.Visible = true;
        }
        else
        {
            formview.Visible = false;
        }
        string XmlFilePath = "C:\\Users\\Samarth\\Documents\\Visual Studio 2010\\WebSites\\Apartment\\Notice.xml";
        if (File.Exists(XmlFilePath))
        {
            DataSet ds = new DataSet();
            ds.ReadXml(Server.MapPath("\\Apartment\\Notice.xml"));

            DataTable dt = ds.Tables[0];
            DataView dv = new DataView(ds.Tables[0]);
            dv.Sort = "Date DESC";
            DataGrid1.DataSource = dv;
            DataGrid1.DataBind();
        }
    }
    protected void butSubmit_Click(object sender, EventArgs e)
    {
        string userName = Session["userid"].ToString();
        //string userName = "Admin";
        string XmlFilePath = "C:\\Users\\Samarth\\Documents\\Visual Studio 2010\\WebSites\\Apartment\\Notice.xml";
        if (File.Exists(XmlFilePath))
        {

            XmlDocument doc = new XmlDocument();

            doc.Load(XmlFilePath);

            XmlNode notice = doc.CreateNode(XmlNodeType.Element, "Notices", null);

            XmlNode name = doc.CreateElement("Name");

            name.InnerText = userName;

            XmlNode discussion = doc.CreateElement("Notice");

            discussion.InnerText = txtNotice.Text.ToString();

            XmlNode description = doc.CreateElement("Description");

            description.InnerText = txtDescription.Text.ToString();

            XmlNode date = doc.CreateElement("Date"); 
            date.InnerText = DateTime.Now.ToString();
            notice.AppendChild(name);
            notice.AppendChild(discussion);
            notice.AppendChild(description);
            notice.AppendChild(date);

            XmlNodeList l = doc.GetElementsByTagName("MainNotices");

            l[0].AppendChild(notice);

            doc.Save(XmlFilePath);
        }
        else
        {
            using (XmlWriter writer = XmlWriter.Create(XmlFilePath))
            {
                writer.WriteStartDocument();

                writer.WriteStartElement("MainNotices");

                writer.WriteStartElement("Notices");

                writer.WriteElementString("Name", userName);
                writer.WriteElementString("Notice", txtNotice.Text.ToString());
                writer.WriteElementString("Description", txtDescription.Text.ToString());
                writer.WriteElementString("Date", DateTime.Now.ToString());


                writer.WriteEndElement();


                writer.WriteEndElement();
                writer.WriteEndDocument();




            }
            
        }
        string XmlFilePathNew = "C:\\Users\\Samarth\\Documents\\Visual Studio 2010\\WebSites\\Apartment\\NoticeMain.xml";
        using (XmlWriter writer = XmlWriter.Create(XmlFilePathNew))
            {
                writer.WriteStartDocument();

                writer.WriteStartElement("MainNotices");

                writer.WriteStartElement("Notices");

                writer.WriteElementString("Name", userName);
                writer.WriteElementString("Notice", txtNotice.Text.ToString());
                writer.WriteElementString("Description", txtDescription.Text.ToString());
                writer.WriteElementString("Date", DateTime.Now.ToString());


                writer.WriteEndElement();


                writer.WriteEndElement();
                writer.WriteEndDocument();




            }
       
        DataSet ds = new DataSet();
        ds.ReadXml(Server.MapPath("\\Apartment\\Notice.xml"));
        
        DataTable dt = ds.Tables[0];
        DataView dv = new DataView(ds.Tables[0]);
        dv.Sort = "Date DESC";
        DataGrid1.DataSource = dv;
        DataGrid1.DataBind();

        txtNotice.Text = "";
        txtDescription.Text = "";
    }
}
