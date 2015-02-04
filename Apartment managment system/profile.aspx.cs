using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

public partial class profile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblhousenumber.Text = Session["userid"].ToString();
        string username = string.Empty;
        string emailid = string.Empty;
        string mobilenumber = string.Empty;
        string landlinenumber = string.Empty;
        string occupation = string.Empty;
        string userid=lblhousenumber.Text;
        string photopath = string.Empty;
        string checkfile = string.Empty;
        SqlConnection sqlConnection = new SqlConnection("Data Source=SAMARTH-PC\\SQLEXPRESS;Initial Catalog=apartment;Integrated Security=True");
        SqlCommand sqlCommand = new SqlCommand("select * from userprofile where userid = @userid", sqlConnection);
        sqlCommand.Parameters.Add("@userid", userid);
        
        sqlConnection.Open();

        SqlDataReader reader;
        
        reader = sqlCommand.ExecuteReader();



        while (reader.Read())
        {
                 username = (string)reader["username"];
                 emailid = (string)reader["emailid"];
                 mobilenumber = (string)reader["phonenumber"];
                 landlinenumber = (string)reader["landlinenumber"];
                 occupation = (string)reader["occupation"];
                
        }
        sqlConnection.Close();
        lbloccupation.Text = occupation;
        lblname.Text = username;
        lblemail.Text = emailid ;
        lblmobilenumber.Text = mobilenumber;
        lbllandlinenumber.Text = landlinenumber;
        SqlCommand sqlCommand1 = new SqlCommand("select imagepath from imageinfo where id = @userid", sqlConnection);
        sqlCommand1.Parameters.Add("@userid", userid);
        sqlConnection.Open();

        SqlDataReader reader1;
        
        reader1 =  sqlCommand1.ExecuteReader();



       if(reader1.Read())
        {
                 photopath =  (string)reader1["imagepath"];
        }
       photopath=  photopath.Replace('/', '\\');
       checkfile = "C:\\Users\\Samarth\\Documents\\Visual Studio 2010\\WebSites\\Apartment\\" + photopath.Replace('/', '\\');
       //Label1.Text = photopath;
       if (File.Exists(checkfile))
       {
           Image1.ImageUrl = photopath;
       }

       sqlConnection.Close();
    }
    protected void btnedit_Click(object sender, EventArgs e)
    {
        lblname.Visible = false;
        lbllandlinenumber.Visible = false;
        lblmobilenumber.Visible = false;
        lblemail.Visible = false;
        lbloccupation.Visible = false;

        txtemail.Visible = true;
        txtname.Visible = true;
        txtmobilenumber.Visible = true;
        txtlandlinenumber.Visible = true;
        txtoccupation.Visible = true;

        txtname.Text = lblname.Text;
        txtemail.Text = lblemail.Text;
        txtmobilenumber.Text = lblmobilenumber.Text;
        txtlandlinenumber.Text = lbllandlinenumber.Text;
        txtoccupation.Text = lbloccupation.Text;

        btnsave.Enabled = true;

    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
        string username=txtname.Text;
        string emailid = txtemail.Text;
        string phonenumber = txtmobilenumber.Text;
        string landlinenumber = txtlandlinenumber.Text;
        string occupation= txtoccupation.Text;

        string userid = lblhousenumber.Text;
        SqlConnection scon = new SqlConnection("Data Source=SAMARTH-PC\\SQLEXPRESS;Initial Catalog=apartment;Integrated Security=True");
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = scon;
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "update userprofile set username=@username,emailid=@emailid,phonenumber=@phonenumber,landlinenumber=@landlinenumber,occupation=@occupation where userid=@userid";
        cmd.Parameters.AddWithValue("@userid",userid);
        cmd.Parameters.AddWithValue("@username",username);
        cmd.Parameters.AddWithValue("@emailid",emailid);
        cmd.Parameters.AddWithValue("@phonenumber", phonenumber);
        cmd.Parameters.AddWithValue("@landlinenumber",landlinenumber);
        cmd.Parameters.AddWithValue("@occupation",occupation);
        
        scon.Open();
        int rowsaffected = cmd.ExecuteNonQuery();
        if (rowsaffected == 1)
        {
            //success
        }
        else
        {
            //failure
        }
        scon.Close();
        btnsave.Enabled = false;
        Response.Redirect("profile.aspx");
    }
    private void StartUpLoad()
    {
        string userid = Session["userid"].ToString();
        //get the file name of the posted image
        SqlConnection sqlConnection = new SqlConnection("Data Source=SAMARTH-PC\\SQLEXPRESS;Initial Catalog=apartment;Integrated Security=True");
        SqlCommand sqlCommand = new SqlCommand("select count(*) from imageinfo where id = @userid", sqlConnection);
        sqlCommand.Parameters.Add("@userid", userid);
        sqlConnection.Open();
        int present = (int)sqlCommand.ExecuteScalar();
        sqlConnection.Close();
        

        string filename = FileUpload1.FileName.ToString();
        string imgName = filename.Substring((filename.Length - 4), 4);
        imgName = Session["userid"].ToString() + imgName;

        //sets the image path
        string imgPath = "photos/" + imgName;
        //then save it to the Folder
        //FileUpload1.SaveAs(Server.MapPath(imgPath));

        //get the size in bytes that
        int imgSize = FileUpload1.PostedFile.ContentLength;
       //Label1.Text = imgSize.ToString();
        //validates the posted file before saving
        if (FileUpload1.PostedFile != null && FileUpload1.PostedFile.FileName != "")
        {
            if (FileUpload1.PostedFile.ContentLength > 5242880) // 5120 KB means 5MB
            {
                Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('File is too big')", true);
            }
            else
            {
                FileUpload1.SaveAs(Server.MapPath(imgPath));
                if (present == 1)
                {
                    ExecuteUpdate(imgSize, imgPath);
                    lblmsg.Text = "Image uploaded successfully";
                }
                else
                {

                    ExecuteInsert(imgSize, imgPath);
                    lblmsg.Text = "Image uploaded successfully";
                }
            }
        }
    }
    private void ExecuteInsert(int size, string path)
    {
        string id = Session["userid"].ToString();
        SqlConnection conn = new SqlConnection("Data Source=SAMARTH-PC\\SQLEXPRESS;Initial Catalog=apartment;Integrated Security=True");
        string sql = "INSERT INTO imageinfo (id,imagesize, imagepath) VALUES "
                    + " (@id,@imgsize,@imgpath)";
        try
        {

            conn.Open();
            SqlCommand cmd = new SqlCommand(sql, conn);
            SqlParameter[] param = new SqlParameter[3];

            param[0] = new SqlParameter("@id", SqlDbType.NVarChar, 50);
            param[1] = new SqlParameter("@imgsize", SqlDbType.BigInt, 9999);
            param[2] = new SqlParameter("@imgpath", SqlDbType.VarChar, 50);

            param[0].Value = id;
            param[1].Value = size;
            param[2].Value = path;

            for (int i = 0; i < param.Length; i++)
            {
                cmd.Parameters.Add(param[i]);
            }

            cmd.CommandType = CommandType.Text;
            cmd.ExecuteNonQuery();
        }
        catch (System.Data.SqlClient.SqlException ex)
        {
            string msg = "Insert Error:";
            msg += ex.Message;
            throw new Exception(msg);
        }
        finally
        {
            conn.Close();
        }
    }

    private void ExecuteUpdate(int size, string path)
    {
        string id = Session["userid"].ToString();
        SqlConnection conn = new SqlConnection("Data Source=SAMARTH-PC\\SQLEXPRESS;Initial Catalog=apartment;Integrated Security=True");
        string sql = "UPDATE imageinfo set imagesize=@imgsize,imagepath=@imgpath where id=@id";
        try
        {

            conn.Open();
            SqlCommand cmd = new SqlCommand(sql, conn);
            SqlParameter[] param = new SqlParameter[3];

            param[0] = new SqlParameter("@id", SqlDbType.NVarChar, 50);
            param[1] = new SqlParameter("@imgsize", SqlDbType.BigInt, 9999);
            param[2] = new SqlParameter("@imgpath", SqlDbType.VarChar, 50);

            param[0].Value = id;
            param[1].Value = size;
            param[2].Value = path;

            for (int i = 0; i < param.Length; i++)
            {
                cmd.Parameters.Add(param[i]);
            }

            cmd.CommandType = CommandType.Text;
            cmd.ExecuteNonQuery();
        }
        catch (System.Data.SqlClient.SqlException ex)
        {
            string msg = "Update Error:";
            msg += ex.Message;
            throw new Exception(msg);
        }
        finally
        {
            conn.Close();
        }
    }
    protected void btnUpload_Click(object sender, EventArgs e)
    {
        StartUpLoad();
    }
}