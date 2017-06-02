using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Predbiljezba : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
  

    protected void btnPosalji_Click(object sender, EventArgs e)
    {
        string connString = ConfigurationManager
            .ConnectionStrings["cnSeminar"].ConnectionString;

        using (SqlConnection conn = new SqlConnection(connString))

        {

            SqlCommand cmd = new SqlCommand("insert into Predbiljezba(Ime, Prezime, Adresa, Email, Datum, IdSeminar) values(@Ime, @Prezime, @Adresa, @Email, @Datum, @Seminar)", conn);
            cmd.Parameters.AddWithValue("@Ime", txtIme.Text);
            cmd.Parameters.AddWithValue("@Prezime", txtPrezime.Text);
            cmd.Parameters.AddWithValue("@Adresa", txtAdresa.Text);
            cmd.Parameters.AddWithValue("@Email", txtMail.Text);
            cmd.Parameters.AddWithValue("@Datum", Calendar.SelectedDate);
            cmd.Parameters.AddWithValue("@Seminar", ddl.SelectedIndex);
            conn.Open();
            cmd.ExecuteNonQuery();

            lblIspis.Text = txtIme.Text + " " +  "Vaša predbilježba je spremljena.";
            {
                Response.AddHeader("REFRESH", "3;URL=Default.aspx");
            }
        }
    }
}
