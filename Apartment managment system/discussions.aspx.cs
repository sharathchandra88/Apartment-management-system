using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

using System.Xml;
using System.IO;

public partial class discussions : System.Web.UI.Page
{
    string pageName;
    
    protected void Page_Load(object sender, EventArgs e)
    {
         pageName = Request.QueryString["Topic"];
         string XmlFilePath = "C:\\Users\\Samarth\\Documents\\Visual Studio 2010\\WebSites\\Apartment\\" + pageName + ".xml";
        if (File.Exists(XmlFilePath))
        {
            DataSet ds = new DataSet();
            string page = "\\Apartment\\" + pageName + ".xml";
            ds.ReadXml(Server.MapPath(page));
            DataTable dt = ds.Tables[0];

            DataGrid1.DataSource = dt;
            DataGrid1.DataBind();
        }
    }
    protected void butSubmit_Click(object sender, EventArgs e)
    {
        string userName = Session["userid"].ToString();
        string XmlFilePath = "C:\\Users\\Samarth\\Documents\\Visual Studio 2010\\WebSites\\Apartment\\" + pageName + ".xml";
        if (File.Exists(XmlFilePath))
        {

            XmlDocument doc = new XmlDocument();

            doc.Load(XmlFilePath);

            XmlNode discussion = doc.CreateNode(XmlNodeType.Element, "Discussion", null);

            XmlNode name = doc.CreateElement("Name");

            name.InnerText = userName;

            XmlNode comment = doc.CreateElement("Comment");

            comment.InnerText = txtComments.Text.ToString();

            XmlNode date = doc.CreateElement("Date"); 
            date.InnerText = DateTime.Now.ToString();
            discussion.AppendChild(name);
            discussion.AppendChild(comment);
            discussion.AppendChild(date);

            XmlNodeList l = doc.GetElementsByTagName("Discussions");

            l[0].AppendChild(discussion);

            doc.Save(XmlFilePath);
        }
        else
        {
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
        string path = "\\Apartment\\" + pageName +".xml";
        ds.ReadXml(Server.MapPath(path));
        DataTable dt = ds.Tables[0];

        DataGrid1.DataSource = dt;
        DataGrid1.DataBind();

        txtComments.Text = "";
    }   
}