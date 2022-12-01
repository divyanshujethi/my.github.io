using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DivyanshuJethi.Forms
{
    public partial class forget : System.Web.UI.Page
    {
        public SqlConnection con = new SqlConnection("Data Source=HACKER\\SQLEXPRESS;Initial Catalog=uimofficialdb;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            emails.Value = Session["emailid"].ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            string qrys = "UPDATE student SET pass = @pass WHERE name=@name;";
            SqlCommand cmds = new SqlCommand(qrys, con);
            cmds.Parameters.AddWithValue("@name", Session["emailid"].ToString());
            cmds.Parameters.AddWithValue("@pass", pass.Text);
            cmds.ExecuteNonQuery();

            Response.Redirect("login.aspx");
        }
    }
}