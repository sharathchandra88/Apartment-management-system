using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class dts : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lbluname.Text = Session["userid"].ToString();
        lblusername.Text = Session["userid"].ToString();
        lbldate.Text = DateTime.Now.ToShortDateString();
        string userid = Session["userid"].ToString();
        SqlConnection sqlConnection = new SqlConnection("Data Source=SAMARTH-PC\\SQLEXPRESS;Initial Catalog=apartment;Integrated Security=True");
        SqlCommand sqlCommand = new SqlCommand("select ticketnumber,username,category,problemdescription,issuedate,problemstatus from dts where userid=@userid", sqlConnection);
        sqlCommand.Parameters.Add("@userid",userid);
        sqlConnection.Open();


        SqlDataReader reader = sqlCommand.ExecuteReader();
        userissue.DataSource = reader;
        userissue.DataBind();
        sqlConnection.Close();

    }
    protected void ddlcategory_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (int.Parse(ddlcategory.SelectedValue) == 12)
        {

            txtother.Visible = true;
        }
        else
        {
            txtother.Visible = false;
        }

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        string userid = Session["userid"].ToString();
        string contactnumber = txtcontactnumber.Text;
        string category = ddlcategory.SelectedItem.Text;
        string description = txtproblemdesc.Text;
        DateTime issuedate = DateTime.Now;
        string problemstatus = "open";
        string username=string.Empty;
        SqlConnection sqlConnection = new SqlConnection("Data Source=SAMARTH-PC\\SQLEXPRESS;Initial Catalog=apartment;Integrated Security=True");
        SqlCommand sqlCommand = new SqlCommand("select username from userprofile where userid = @userid", sqlConnection);
        sqlCommand.Parameters.Add("@userid", userid);

        sqlConnection.Open();

        SqlDataReader reader;

        reader = sqlCommand.ExecuteReader();



        while (reader.Read())
        {
            username = (string)reader["username"];
            

        }


        sqlConnection.Close();

        SqlConnection sqlConnection2 = new SqlConnection("Data Source=SAMARTH-PC\\SQLEXPRESS;Initial Catalog=apartment;Integrated Security=True");
        SqlCommand sqlCommand1 = new SqlCommand("insert into dts values(@userid,@username,@contactnumber,@category,@problemdescription,@issuedate,@problemstatus)", sqlConnection2);
        sqlCommand1.Parameters.Add("@userid", userid);
        sqlCommand1.Parameters.Add("@username", username);
        sqlCommand1.Parameters.Add("@contactnumber", contactnumber);
        sqlCommand1.Parameters.Add("@category",category );
        sqlCommand1.Parameters.Add("@problemdescription",description);
        sqlCommand1.Parameters.Add("@issuedate",issuedate);
        sqlCommand1.Parameters.Add("@problemstatus", problemstatus);


        sqlConnection2.Open();
        int rowsaffected = sqlCommand1.ExecuteNonQuery();
        if (rowsaffected == 1)
        {
            //success
        }
        else
        {
            //failure
        }
        sqlConnection2.Close();
        Response.Redirect("dts.aspx");

    }
}