using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnlogin_Click(object sender, EventArgs e)
    {
        string username = txtusername.Text.Trim();
        string password = txtpassword.Text.Trim();

    
        SqlConnection sqlConnection = new SqlConnection("Data Source=SAMARTH-PC\\SQLEXPRESS;Initial Catalog=apartment;Integrated Security=True");
        SqlCommand sqlCommand = new SqlCommand("select * from apartmentlogin where username = @username and pass = @password", sqlConnection);
        sqlCommand.Parameters.Add("@username", username);
        sqlCommand.Parameters.Add("@password", password);
        sqlConnection.Open();

        SqlDataReader reader;
        
        reader = sqlCommand.ExecuteReader();



        while (reader.Read())
        {
                string uname = (string)reader["username"];
                string pass = (string)reader["pass"];
                string role = (string)reader["roletype"];
                Session["userid"] = uname;
                if (role.Equals("admin"))
                {
                    
                    Response.Redirect("welcome.aspx");
                }
                else
                {
                    Response.Redirect("welcome.aspx");
                }
            }
          if (!reader.Read())
            {
              /*  btn.Attributes.Add("onClick", "javascript:alert('invalid username/password');");*/

                //Response.Write("<script language=javascript>alert('Invalid username/password')</script>");
                lblinvalidaccess.Text = "Invalid Username/Password";
                warning.Visible = true;
            }
        

    }


   
}