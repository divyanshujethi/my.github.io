using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DivyanshuJethi.Admin
{
    public partial class adminDashboard : System.Web.UI.Page
    {
        public string Countrow { get; set; }
        public string Countstu { get; set; }
        public string Countord { get; set; }

        public SqlConnection con = new SqlConnection("Data Source=HACKER\\SQLEXPRESS;Initial Catalog=uimofficialdb;Integrated Security=True");
        public SqlDataReader READERS;
        protected void Page_Load(object sender, EventArgs e)
        {
            string qry = "SELECT count(*) FROM course;";
            SqlCommand cmd = new SqlCommand(qry, con);
            SqlDataReader reader;
            con.Open();
            reader = cmd.ExecuteReader();
            
            while (reader.Read())
            {
                Countrow = reader[0].ToString();
            }
            con.Close();    
            string qrys = "SELECT count(*) FROM student;";
            SqlCommand cmds = new SqlCommand(qrys, con);
            con.Open();
            reader = cmds.ExecuteReader();

            while (reader.Read())
            {
                Countstu = reader[0].ToString();
            }
            con.Close();
            string qryx = "SELECT count(*) FROM student;";
            SqlCommand cmdx = new SqlCommand(qryx, con);
            con.Open();
            reader = cmds.ExecuteReader();

            while (reader.Read())
            {
                Countord = reader[0].ToString();
            }
            con.Close();
            con.Close();
            string Nqry= "SELECT * FROM courseorder;";
            SqlCommand Ncmd = new SqlCommand(Nqry, con);
            con.Open();
            READERS = Ncmd.ExecuteReader();
        }
    }
}