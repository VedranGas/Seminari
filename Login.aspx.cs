using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Cache.SetNoStore();
    }

    protected void btnLogiranje_Click(object sender, EventArgs e)

    {

        string ime = txtIme2.Text;
        string sifra = txtSifra.Text;
        {
            
            using (SqlConnection connection = new SqlConnection())

            {


                connection.ConnectionString = ConfigurationManager.ConnectionStrings["cnSeminar"].ToString();
                connection.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = connection;
                {
                    try
                    {
                        string commandText = ("SELECT Sifra FROM Zaposlenik WHERE Ime= '" + ime + "'");
                        cmd.CommandText = commandText;
                        cmd.CommandType = CommandType.Text;
                        object pwd = cmd.ExecuteScalar();
                        cmd.Dispose();
                        connection.Close();

                        string correctPwd = pwd.ToString();
                        //string hashedPass = BCrypt.Net.BCrypt.HashPassword(sifra);

                        bool value = BCrypt.Net.BCrypt.Verify(sifra, correctPwd);
                        if (value == true)


                            Response.Redirect("~/MemberPages/Members.aspx");
                    }

                    catch (Exception)

                    {
                        lblResult.Text = "Unijeli ste krivo ime ili šifru!";

                    }                 
                }
            }
        }
    }
}
    



