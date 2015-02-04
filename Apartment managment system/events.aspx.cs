using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Xml;

public partial class events : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string userName = Session["userid"].ToString();
        //string userName = "Vathsa";

        string XmlFilePath = "C:\\Users\\Samarth\\Documents\\Visual Studio 2010\\WebSites\\Apartment\\Event.xml";
        if (File.Exists(XmlFilePath))
        {
            DataSet ds = new DataSet();
            ds.ReadXml(Server.MapPath("\\Apartment\\Event.xml"));

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
        string XmlFilePath = "C:\\Users\\Samarth\\Documents\\Visual Studio 2010\\WebSites\\Apartment\\Event.xml";
        if (File.Exists(XmlFilePath))
        {

            XmlDocument doc = new XmlDocument();

            doc.Load(XmlFilePath);

            XmlNode events = doc.CreateNode(XmlNodeType.Element, "Events", null);

            XmlNode name = doc.CreateElement("Name");

            name.InnerText = userName;

            XmlNode eve = doc.CreateElement("Event");

            eve.InnerText = txtEvent.Text.ToString();

            XmlNode description = doc.CreateElement("Description");

            description.InnerText = txtDescription.Text.ToString();

            XmlNode date = doc.CreateElement("Date");
            date.InnerText = DateTime.Now.ToString();
            events.AppendChild(name);
            events.AppendChild(eve);
            events.AppendChild(description);
            events.AppendChild(date);

            XmlNodeList l = doc.GetElementsByTagName("MainEvents");

            l[0].AppendChild(events);

            doc.Save(XmlFilePath);
        }
        else
        {
            using (XmlWriter writer = XmlWriter.Create(XmlFilePath))
            {
                writer.WriteStartDocument();

                writer.WriteStartElement("MainEvents");

                writer.WriteStartElement("Events");

                writer.WriteElementString("Name", userName);
                writer.WriteElementString("Event", txtEvent.Text.ToString());
                writer.WriteElementString("Description", txtDescription.Text.ToString());
                writer.WriteElementString("Date", DateTime.Now.ToString());


                writer.WriteEndElement();


                writer.WriteEndElement();
                writer.WriteEndDocument();




            }

        }
        string XmlFilePathNew = "C:\\Users\\Samarth\\Documents\\Visual Studio 2010\\WebSites\\Apartment\\EventMain.xml";
        using (XmlWriter writer = XmlWriter.Create(XmlFilePathNew))
        {
            writer.WriteStartDocument();

            writer.WriteStartElement("MainEvents");

            writer.WriteStartElement("Events");

            writer.WriteElementString("Name", userName);
            writer.WriteElementString("Event", txtEvent.Text.ToString());
            writer.WriteElementString("Description", txtDescription.Text.ToString());
            writer.WriteElementString("Date", DateTime.Now.ToString());


            writer.WriteEndElement();


            writer.WriteEndElement();
            writer.WriteEndDocument();




        }

        DataSet ds = new DataSet();
        ds.ReadXml(Server.MapPath("\\Apartment\\Event.xml"));

        DataTable dt = ds.Tables[0];
        DataView dv = new DataView(ds.Tables[0]);
        dv.Sort = "Date DESC";
        DataGrid1.DataSource = dv;
        DataGrid1.DataBind();

        txtEvent.Text = "";
        txtDescription.Text = "";
    }
}