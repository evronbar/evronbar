using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication3
{
    public partial class ProfilePage : System.Web.UI.Page
    {
        string connectionString = @"Data Source = (localdb)\MSSQLLocalDB; Initial Catalog = ChessDB; Integrated Security=True;";

        protected void Page_Load(object sender, EventArgs e)
        {
            int totalGames = 0;
            string user = Session["username"].ToString().Trim();
            string enemy = "";
            
            usernameHeader.InnerHtml = user;

            SqlConnection connection = new SqlConnection(connectionString);

            connection.Open();


            using (SqlCommand cmd = new SqlCommand(("SELECT * FROM gamesTable WHERE Player1 = '" + user + "' OR Player2 = '" + user + "';"), connection))
            using (SqlDataReader reader = cmd.ExecuteReader())
            {
                while (reader.Read())
                {
                    if (reader["Player1"].ToString() == user)
                    {
                        enemy = reader["Player2"].ToString().Trim();
                    }
                    else if (reader["Player2"].ToString() == user)
                    {
                        enemy = reader["Player1"].ToString().Trim();
                    }

                    string winner = reader["Winner"].ToString().Trim();
                    ListItem game = new ListItem();

                    if (winner == user)
                    {
                        //GamesListBox.Items.Add(user + " won against " + enemy);
                        game = new ListItem((user + " won against " + enemy).ToString());
                        game.Attributes.Add("style", "color: #44bd32");
                    }
                    else if (winner == enemy)
                    {
                        //GamesListBox.Items.Add(user + " lost against " + enemy);
                        game = new ListItem((user + " lost against " + enemy).ToString());
                        game.Attributes.Add("style", "color: #c23616");
                    }
                    GamesListBox.Items.Add(game);
                    totalGames++;
                }
            }
            

            TotalGames.Text = "Total Games: " + totalGames;

            using (SqlCommand cmd = new SqlCommand(("SELECT * FROM table1 WHERE Name = '" + user + "';"), connection))
            using (SqlDataReader reader = cmd.ExecuteReader())
            {
                while(reader.Read())
                {
                    userAvatar.Src = reader["Icon"].ToString();
                }
            }

                connection.Close();
        }


    }
}