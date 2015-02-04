using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.Data;
using System.IO;

public partial class topics : System.Web.UI.Page
{
    System.Web.UI.WebControls.DataGridSortCommandEventArgs e;
    protected void Page_Load(object sender, EventArgs e)
    {
        string XmlFilePath = "C:\\Users\\Samarth\\Documents\\Visual Studio 2010\\WebSites\\Apartment\\Topic.xml";
        if (File.Exists(XmlFilePath))
        {
        DataSet ds = new DataSet();
        ds.ReadXml(Server.MapPath("\\Apartment\\Topic.xml"));
        
        DataTable dt = ds.Tables[0];
        DataView dv = new DataView(ds.Tables[0]);
        dv.Sort = "Date DESC";
        GridView1.DataSource = dv;
        GridView1.DataBind();
    }
    }
    protected void butSubmit_Click(object sender, EventArgs e)
    {
        string userName = Session["userid"].ToString();
        string XmlFilePath = "C:\\Users\\Samarth\\Documents\\Visual Studio 2010\\WebSites\\Apartment\\Topic.xml";
        if (File.Exists(XmlFilePath))
        {

            XmlDocument doc = new XmlDocument();

            doc.Load(XmlFilePath);

            XmlNode topic = doc.CreateNode(XmlNodeType.Element, "Disc", null);

            XmlNode name = doc.CreateElement("Name");

            name.InnerText = userName;

            XmlNode discussion = doc.CreateElement("Topic");

            discussion.InnerText = txtTopic.Text.ToString();

            XmlNode description = doc.CreateElement("Description");

            description.InnerText = txtComments.Text.ToString();

            XmlNode date = doc.CreateElement("Date"); 
            date.InnerText = DateTime.Now.ToString();
            topic.AppendChild(name);
            topic.AppendChild(discussion);
            topic.AppendChild(description);
            topic.AppendChild(date);

            XmlNodeList l = doc.GetElementsByTagName("Topics");

            l[0].AppendChild(topic);

            doc.Save(XmlFilePath);
        }
        else
        {
            using (XmlWriter writer = XmlWriter.Create(XmlFilePath))
            {
                writer.WriteStartDocument();

                writer.WriteStartElement("Topics");

                writer.WriteStartElement("Disc");

                writer.WriteElementString("Name", userName);
                writer.WriteElementString("Topic", txtTopic.Text.ToString());
                writer.WriteElementString("Description", txtComments.Text.ToString());
                writer.WriteElementString("Date", DateTime.Now.ToString());


                writer.WriteEndElement();


                writer.WriteEndElement();
                writer.WriteEndDocument();




            }
            XmlFilePath = "C:\\Users\\Samarth\\Documents\\Visual Studio 2010\\WebSites\\Apartment\\" + txtTopic.Text.ToString() + ".xml";
            using (XmlWriter writer = XmlWriter.Create(XmlFilePath))
            {
                writer.WriteStartDocument();

                writer.WriteStartElement("Discussions");

                writer.WriteStartElement("Discussion");

                writer.WriteElementString("Name", userName);
                writer.WriteElementString("Comment", txtComments.Text.ToString());
                writer.WriteElementString("Date", DateTime.Now.ToString());


                writer.WriteEndElement();


                writer.WriteEndElement();
                writer.WriteEndDocument();




            }
        }
       
        DataSet ds = new DataSet();
        ds.ReadXml(Server.MapPath("\\Apartment\\Topic.xml"));
        
        DataTable dt = ds.Tables[0];
        DataView dv = new DataView(ds.Tables[0]);
        dv.Sort = "Date DESC";
        GridView1.DataSource = dv;
        GridView1.DataBind();

        txtTopic.Text = "";
        txtComments.Text = "";
    }
    

}
