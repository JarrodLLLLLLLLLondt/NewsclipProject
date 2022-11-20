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
    
    public partial class WebForm1 : System.Web.UI.Page
    {
       
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        SqlDataReader Reader = null;

        

        // on page load, display info in input fields.
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack) 
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("SELECT * FROM Newscliptable WHERE Id = 0", con);
                Reader = cmd.ExecuteReader();

                while (Reader.Read())
                {
                    nametxt.Text = Reader["Name"].ToString().Trim();
                    Surntxt.Text = Reader["Surname"].ToString().Trim();
                    Phonetxt.Text = Reader["Phone"].ToString().Trim();
                    Emailtxt.Text = Reader["Email"].ToString().Trim();
                    Agetxt.Text = Reader["Age"].ToString().Trim();
                    Loctxt.Text = Reader["Location"].ToString().Trim();
                    Qualtxt.Text = Reader["Qualifications"].ToString().Trim();
                    Biotxt.Text = Reader["Bio"].ToString().Trim();

                }
                Reader.Close();
            }
           
        }

       
   
        protected void Button1_Click(object sender, EventArgs e)
        {
            

        }

        // save button: saves to the database and clears input fields.
        protected void Button2_Click(object sender, EventArgs e)
        {
            con.Open();
            using (SqlCommand cmd = new SqlCommand("UPDATE NewsclipTable SET Name = '" + nametxt.Text.Trim() + "', Surname = '" + Surntxt.Text.Trim() + "', Phone = '" + Phonetxt.Text.Trim() + "', Email = '" + Emailtxt.Text.Trim() + "', Age = '" + Agetxt.Text.Trim() + "', Location = '" + Loctxt.Text.Trim() + "', Qualifications = '" + Qualtxt.Text.Trim() + "', Bio = '" + Biotxt.Text.Trim() + "', Image = @Image WHERE Id = 0", con)) 
            {
                SqlParameter sqlparam = cmd.Parameters.Add("@Image", SqlDbType.VarBinary);

                if (Uploader.HasFile)
                {
                    Stream Img = Uploader.PostedFile.InputStream;
                    using (MemoryStream memstream = new MemoryStream())
                    {
                        Img.CopyTo(memstream);
                        sqlparam.Value = memstream.ToArray();

                    }
                }
                else
                    sqlparam.Value = Array.Empty<byte>();
                    cmd.ExecuteNonQuery();
            }
              
            con.Close();
            nametxt.Text = "";
            Surntxt.Text = "";
            Phonetxt.Text = "";
            Emailtxt.Text = "";
            Agetxt.Text = "";
            Loctxt.Text = "";
            Qualtxt.Text = "";
            Biotxt.Text = "";
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            
            
        }
    }
}