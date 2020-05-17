using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.OleDb;
namespace DAL
{
    public class oledbhelper
    {
        static OleDbConnection cn = new OleDbConnection(ConnectionString);
        public static string ConnectionString
        {

            get
            {
                //return @" Provider = Microsoft.ACE.OLEDB.12.0; Data Source = C:\Users\NAVA\Desktop\myfirstsql\db1.accdb";
                return @"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=D:\yeet\SQLProj\DAL\DAL\DrivingSchool.accdb ";
                // return @"Provider =Microsoft.ACE.OLEDB.12.0;Data Source=C:\Users\NAVA\Desktop\db1.accdb";
                // return @"Provider =Microsoft.ACE.OLEDB.12.0;Data Source=F:\Game\GameDB.accdb";
            }
        }

        //שאילתות עדכון מבנה ה –Database ושאילתות עדכון ,מחיקה והוספת רשומות.

        public static void Execute(string com)
        {
            //Connection  יצירת אובייקט מסוג 
           
          
            // command יצירת אובייקט מסוג 
            if (cn.State != ConnectionState.Open)
            {
                cn.Open();
            }

            OleDbCommand command = new OleDbCommand();
            command.Connection = cn;
            command.CommandText = com;

            try
            {
                command.ExecuteNonQuery();
            }
            catch (Exception e)
            {
                throw;
            }

        }
        public static DataTable GetTable(string com)
        {

            if (cn.State != ConnectionState.Open)
            {
                cn.Open();
            }

            OleDbCommand command = new OleDbCommand();
            command.Connection = cn;
            command.CommandText = com;
            //יצירת אובייקט מסוג דטהסט - אוסף טבלאות בזיכרון המחשב

            DataTable dt = new DataTable();
            dt.TableName = "Student";
            //יצירת אובייקט אדפטר מטרתו לתאם בין הדטהסט לדטהבייס
            OleDbDataAdapter adapter = new OleDbDataAdapter(command);

            try
            {
                //הפעולה פותחת את הדטהבייס ומחזירה את כל הנתונים לתוך טבלה חדשה בדטהסט

                adapter.Fill(dt);
            }
            catch
            {
                throw;
            }
            finally
            {
            }
            return dt;
        }
    }
}

