using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

   
    protected void btnKreiraj_Click(object sender, EventArgs e)
    {
        string connString = ConfigurationManager.ConnectionStrings["cnSeminar"].ConnectionString;

        using (SqlConnection conn = new SqlConnection(connString))

        {
            //var salt = BCrypt.Net.BCrypt.GenerateSalt(10);
            string sifra = txtSifra.Text;
            string hashedSifra = BCrypt.Net.BCrypt.HashPassword(sifra);


            SqlCommand cmd = new SqlCommand("insert into Zaposlenik(Ime, Sifra, Email) values(@Ime, @Sifra, @Email)", conn);
            cmd.Parameters.AddWithValue("@Ime", txtIme.Text);
            cmd.Parameters.AddWithValue("@Sifra", hashedSifra);
            cmd.Parameters.AddWithValue("@Email", txtMail.Text);

            conn.Open();
            cmd.ExecuteNonQuery();

            if(txtIme != null && txtSifra != null)
            {
                Response.Redirect("~/Default.aspx");
            }
            else
            {
                lblText.Text = "Unesite podatke za registraciju";
            }

        }
    }
}