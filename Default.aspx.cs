using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.IO;

namespace Newsclip_Project
{
    public partial class Default : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        SqlDataReader Reader = null;
        protected void Page_Load(object sender, EventArgs e)
        {

            byte[] bArray = null;
           con.Open();
           SqlCommand cmd = new SqlCommand("SELECT * FROM Newscliptable WHERE Id = 0", con);
            Reader = cmd.ExecuteReader();
            
            while (Reader.Read())
            {
                lblName.Text = Reader["Name"].ToString();
                lblSurname.Text = Reader["Surname"].ToString();
                Phonelbl.Text = Reader["Phone"].ToString();
                Emaillbl.Text = Reader["Email"].ToString();
                Age.Text = Reader["Age"].ToString();
                Location.Text = Reader["Location"].ToString();
                Quallbl.Text = Reader["Qualifications"].ToString();
                Biolbl.Text = Reader["Bio"].ToString();
                bArray = (byte[])Reader["Image"];
                
            }
            
            pfpIcon.ImageUrl = "data:image/png;base64," + Convert.ToBase64String(bArray,0,bArray.Length) ;

            con.Close();
            Reader.Close();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}