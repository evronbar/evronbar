using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.OleDb;

namespace DAL
{
    public class Teacher
    {
        public static void AddTeacher(string ID, string firstName, string lastName, string phoneNum)
        {
            string com = "insert into tblTeacher([ID], firstName, lastName, phoneNum) VALUES ('" + ID + "','" + firstName + "','" + lastName + "','" + phoneNum + "')";

            oledbhelper.Execute(com);
        }

        public static DataTable GetAllID()
        {
            string com = "select * from tblTeacher order by ID";
            return oledbhelper.GetTable(com);
        }

        public static DataTable GetAllFirstName()
        {
            string com = "select * from tblTeacher order by firstName";
            return oledbhelper.GetTable(com);
        }

        public static DataTable GetAllLastName()
        {
            string com = "select * from tblTeacher order by firstName";
            return oledbhelper.GetTable(com);
        }

        public static DataTable GetAllPhoneNum()
        {
            string com = "select * from tblTeacher order by firstName";
            return oledbhelper.GetTable(com);
        }

        public static void UpdateFirstName(string firstName, string ID)
        {
            string com = "update tblTeacher set firstName = '" + firstName + "' where  ID=" + ID;
            oledbhelper.Execute(com);
        }

        public static void UpdateLastName(string lastName, string ID)
        {
            string com = "update tblTeacher set lastName = '" + lastName + "' where  ID=" + ID;
            oledbhelper.Execute(com);
        }

        public static void UpdatePhoneNum(string phoneNum, string ID)
        {
            string com = "update tblTeacher set phoneNum = '" + phoneNum + "' where  ID=" + ID;
            oledbhelper.Execute(com);
        }
    }
}
