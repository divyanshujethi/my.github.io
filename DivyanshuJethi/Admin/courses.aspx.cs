using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DivyanshuJethi.Admin
{
    public partial class courses : System.Web.UI.Page
    {
        public SqlConnection con = new SqlConnection("Data Source=HACKER\\SQLEXPRESS;Initial Catalog=uimofficialdb;Integrated Security=True");
        public SqlDataReader READERS;
        protected void Page_Load(object sender, EventArgs e)
        {
            string Nqry = "SELECT * FROM course;";
            SqlCommand Ncmd = new SqlCommand(Nqry, con);
            con.Open();
            READERS = Ncmd.ExecuteReader();
        }
    }
}