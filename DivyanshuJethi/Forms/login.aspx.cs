using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DivyanshuJethi.Forms
{
    
    public partial class login : System.Web.UI.Page
    {
        public string X { get; set; }
        public string useremail { get; set; }
        public string password { get; set; }
        public SqlConnection con = new SqlConnection("Data Source=HACKER\\SQLEXPRESS;Initial Catalog=uimofficialdb;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            

            string qry = "select * from student where name = @name and pass = @pass";
            SqlCommand cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@name", email.Text);
            cmd.Parameters.AddWithValue("@pass", pass.Text);
            con.Open();
            SqlDataReader reader;
            reader= cmd.ExecuteReader();
            while (reader.Read())
            {
                 useremail = reader[1].ToString();
                 password = reader[2].ToString();
            }
            if (email.Text == useremail && pass.Text == password)
            {
                Session["id"] = useremail;
                Response.Redirect("otp.aspx");
                
            }
            else
            {
                X = "password is incorrect";
            }
            
            con.Close();
        }
    }
}