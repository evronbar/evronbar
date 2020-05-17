using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.OleDb;


namespace DAL
{
    public class UserMethods
    {
        public static void AddUser(int Id, string pass, string name)
        {
            string com = "insert into table1 (Id,Aveilble,Status,Password,Name) VALUES ('" + Id + "','" + null + "','" + 0 + "','" + pass + "','" + name + "')";
            oledbhelper.Execute(com);
        }
        public static bool DoesUserIdExist(int Id)
        {
            string com = "select * from table1 where ID = '" + Id + "'";
            DataTable table1 = oledbhelper.GetTable(com);
            if (table1.Rows.Count != 0)
            {
                return true;
            }
            return false;
        }

        public static bool doesUserNameExistreturnid(string Name)
        {
            string com = "select * from table1 where Name = '" + Name + "'";
            DataTable table1 = oledbhelper.GetTable(com);
            if (table1.Rows.Count == 0)
            {
                return false;
            }

            else
            {
                string id = "select id * from table1 where Name = ' " + Name + "'";

            }
            return true;



        }

        public static int NameGetId(string Name)
        {

            if (doesUserNameExistreturnid(Name))
            {
                string id = "select id * from table1 where Name = ' " + Name + "'";

                return int.Parse(id);
            }

            else
                return 0;//אם ID שווה לאפס אין ID 
        }

        public static bool IsMatchingPass(int id, string Pass)
        {
            string com = "select Pass from table1 where ID = '" + id + "'";
            foreach (DataRow dr in oledbhelper.GetTable(com).Rows)
            {
                if (Pass == (dr["Pass"]).ToString())
                {
                    return true;
                }
            }
            return false;
        }
        public static DataTable Getallusers()
        {
            string com = "select * from ";
            return oledbhelper.GetTable(com);
        }

        public static void ChangePass(string pass, int Id)
        {
            string com = "update User set Password   = '" + pass + "' where ID ='" + Id + "'";
            oledbhelper.Execute(com);
        }
        public static DataTable GetPass(int Id)
        {
            string com = "select Pass from Users where ID ='" + Id + "'";
            return oledbhelper.GetTable(com);
        }



        public static void Aveilblefalse(int Id)
        {
            string com = "update User set Aveilble   = '" + false + "' where ID ='" + Id + "'";
            oledbhelper.Execute(com);
        }

        public static void Aveilbletrue(int Id)
        {
            string com = "update User set Aveilble   = '" + true + "' where ID ='" + Id + "'";
            oledbhelper.Execute(com);
        }

        public static DataTable Getallconnectedusers()
        {
            string com = "select * from where Aveilble = '" + true + "'";
            return oledbhelper.GetTable(com);
        }
        /*
        public static int Connecting2Users(int id)
        {
            //Getallconnectedusers();
            Aveilblefalse(id);
            DataTable dataTable = Getallconnectedusers();
            string com = "SELECT user FROM Dual WHERE ROWNUM = 1";
             

        }
        */
    }
}
