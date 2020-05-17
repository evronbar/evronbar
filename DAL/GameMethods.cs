using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.OleDb;

namespace DAL
{
    public class GameMethods
    {
        public static void Add(int Id, string pass, string name)
        {
           // string com = "insert into table1 (Id,Aveilble,Status,Password,Name) VALUES ('" + Id + "','" + null + "','" + 0 + "','" + pass + "','" + name + "')";
           // oledbhelper.Execute(com);
        }
        public static DataTable GetallGamesOfUser(int Id)
        {
            string com = "select * from gamesTable where PId1 = '" + Id + "' and PId2 = '" + Id +"'";
            return oledbhelper.GetTable(com);
        }


    }
}
