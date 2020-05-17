using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.OleDb;

namespace DAL
{
    public class Student
    {
        public static void AddStudent(string ID, string firstName, string lastName, string phoneNum)
        {
            string com = "insert into tblStudent(ID, firstName, lastName, phoneNum) VALUES ('" + ID + "','" + firstName + "','" + lastName + "','" + phoneNum + "')";

            oledbhelper.Execute(com);
        }

        public static DataTable GetAllID()
        {
            string com = "select * from tblStudent order by ID";
            return oledbhelper.GetTable(com);
        }

        public static DataTable GetAllFirstName()
        {
            string com = "select * from tblStudent order by firstName";
            return oledbhelper.GetTable(com);
        }
        public static DataTable GetAll()
        {
            string com = "select * from tblStudent order by firstName";
            return oledbhelper.GetTable(com);
        }
        public static DataTable GetAllLastName()
        {
            string com = "select * from tblStudent order by lastName";
            return oledbhelper.GetTable(com);
        }

        public static DataTable GetAllPhoneNum()
        {
            string com = "select * from tblStudent order by phoneNum";
            return oledbhelper.GetTable(com);
        }

        public static void UpdateFirstName(string firstName, string ID)
        {
            string com = "update tblStudent set firstName = '" + firstName + "' where  ID=" + ID;
            oledbhelper.Execute(com);
        }

        public static void UpdateLastName(string lastName, string ID)
        {
            string com = "update tblStudent set lastName = '" + lastName + "' where  ID=" + ID;
            oledbhelper.Execute(com);
        }
        public static void UpdatePhoneNum(string phoneNum, string ID)
        {
            string com = "update tblStudent set phoneNum = '" + phoneNum + "' where  ID=" + ID;
            oledbhelper.Execute(com);
        }
    }
}
