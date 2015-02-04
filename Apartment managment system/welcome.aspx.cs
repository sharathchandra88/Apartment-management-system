using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.IO;
using System.Data;
using System.Data.SqlClient;

public partial class welcome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string photopath = string.Empty;
        string checkfile = string.Empty;
        string userid = Session["userid"].ToString(); 
        
        lbluname.Text = Session["userid"].ToString();
        //lbluname.Text = "Vathsa";
        string XmlFilePathNotice = "C:\\Users\\Samarth\\Documents\\Visual Studio 2010\\WebSites\\Apartment\\NoticeMain.xml";
        if (File.Exists(XmlFilePathNotice))
        {
            using (XmlReader reader = XmlReader.Create(XmlFilePathNotice))
            {
                while (reader.Read())
                {
                    if (reader.IsStartElement())
                    {
                        switch (reader.Name)
                        {
                            case "Notice":
                                if (reader.Read())
                                {
                                    lblNotice.Text = reader.Value.Trim();
                                }
                                break;
                            case "Description":
                                if (reader.Read())
                                {
                                    lblDescription.Text = reader.Value.Trim();
                                }
                                break;
                            case "Date":
                                if (reader.Read())
                                {
                                    lblDate.Text = reader.Value.Trim();
                                }
                                break;
                        }
                    }
                }
            }
        }

        string XmlFilePathEvent = "C:\\Users\\Samarth\\Documents\\Visual Studio 2010\\WebSites\\Apartment\\EventMain.xml";
        if (File.Exists(XmlFilePathEvent))
        {
            using (XmlReader reader = XmlReader.Create(XmlFilePathEvent))
            {
                while (reader.Read())
                {
                    if (reader.IsStartElement())
                    {
                        switch (reader.Name)
                        {
                            case "Event":
                                if (reader.Read())
                                {
                                    lblEvent.Text = reader.Value.Trim();
                                }
                                break;
                            case "Description":
                                if (reader.Read())
                                {
                                    lblDesc.Text = reader.Value.Trim();
                                }
                                break;
                            case "Date":
                                if (reader.Read())
                                {
                                    lblDat.Text = reader.Value.Trim();
                                }
                                break;
                        }
                    }
                }
            }
        }
        SqlConnection sqlConnection = new SqlConnection("Data Source=SAMARTH-PC\\SQLEXPRESS;Initial Catalog=apartment;Integrated Security=True");
        SqlCommand sqlCommand1 = new SqlCommand("select imagepath from imageinfo where id = @userid", sqlConnection);
        sqlCommand1.Parameters.Add("@userid", userid);
        sqlConnection.Open();

        SqlDataReader reader1;

        reader1 = sqlCommand1.ExecuteReader();



        if (reader1.Read())
        {
            photopath = (string)reader1["imagepath"];
        }
        photopath = photopath.Replace('/', '\\');
        checkfile = "C:\\Users\\Samarth\\Documents\\Visual Studio 2010\\WebSites\\Apartment\\" + photopath.Replace('/', '\\');
        //Label1.Text = photopath;
        if (File.Exists(checkfile))
        {
            Image1.ImageUrl = photopath;
        }

        sqlConnection.Close();


       
        
        SqlCommand sqlCommand = new SqlCommand("select ticketnumber,category,problemstatus from dts where userid=@userid", sqlConnection);
        sqlCommand.Parameters.Add("@userid", userid);
        sqlConnection.Open();


        SqlDataReader reader2 = sqlCommand.ExecuteReader();
        grvlatest5tickets.DataSource = reader2;
        grvlatest5tickets.DataBind();
        sqlConnection.Close();
    }
}