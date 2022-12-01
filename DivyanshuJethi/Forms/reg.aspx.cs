using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace DivyanshuJethi.Forms
{
    public partial class reg : System.Web.UI.Page
    {
        public SqlConnection con = new SqlConnection("Data Source=HACKER\\SQLEXPRESS;Initial Catalog=uimofficialdb;Integrated Security=True");
        public string X { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string qry = "select * from student where name = @name";
            SqlCommand cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@name", email.Text);
            con.Open();
            SqlDataReader reader;
            reader = cmd.ExecuteReader();
            if(reader.HasRows) {
                while (reader.Read()){
                    if (email.Text == reader[1].ToString())
                    {
                        X = "Email Alrady Register";
                    }
                }
                
            }
            else
            {
                con.Close();
                con.Open();
                string qrys = "insert into student(name,pass,username) values(@name , @pass ,@username)";
                SqlCommand cmds = new SqlCommand(qrys, con);
                cmds.Parameters.AddWithValue("@name", email.Text);
                cmds.Parameters.AddWithValue("@pass", pass.Text);
                cmds.Parameters.AddWithValue("@username", name.Text);
                cmds.ExecuteNonQuery();

                Response.Redirect("login.aspx");
            }
            
            
            
        }
    }
}