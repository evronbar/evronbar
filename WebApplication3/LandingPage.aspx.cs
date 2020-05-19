using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL;
using System.Data.SqlClient;
using System.Data;


namespace ChessServer
{
    public partial class About : Page
    {
        //string connectionString = "@Data source = (localdb)\MSSQLLocalDB;Database=ChessDB;Trusted_Connection=True;";
        string connectionString = @"Data Source = (localdb)\MSSQLLocalDB; Initial Catalog = ChessDB; Integrated Security=True;";

        protected void Page_Load(object sender, EventArgs e)
        {
             
        }
      
        protected void btnSignUp_Click(object sender, EventArgs e)
        {
            /*
            using (SqlConnection sqlCon = new SqlConnection(connectionString))
            {
                sqlCon.Open();
                SqlCommand sqlCmd = new SqlCommand("UserAdd", sqlCon);
                sqlCmd.CommandType = CommandType.StoredProcedure;
                sqlCmd.Parameters.AddWithValue("@Name", UserNameSighIn.Value.Trim());
                sqlCmd.Parameters.AddWithValue("@Password", pswSign.Value.Trim());
                sqlCmd.ExecuteNonQuery();

                btnSignIn.InnerHtml = UserNameSighIn.Value.Trim();
                sqlCon.Close();
            }
            */
            
        }


        protected void SignInSubmit_Click(object sender, EventArgs e)
        {
            SqlConnection sqlCon = new SqlConnection(connectionString);
            string query = String.Format("Select * from table1 Where Name = '{0}' and Password = '{1}'",Name.Value.Trim(), Psw.Value.Trim());
            SqlDataAdapter sda = new SqlDataAdapter(query, sqlCon);

            DataTable dtb1 = new DataTable();
            sda.Fill(dtb1);
            if(dtb1.Rows.Count == 1)
            {
                btnSignIn.InnerHtml = "Success";
            } else
            {
                btnSignIn.InnerHtml = "HACKERRRR";
            }
        }
    }
}