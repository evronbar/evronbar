using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.OleDb;

namespace DAL
{
    public class StudentMethods
    {
        public static void addStud(int id, string firstname, string lastname,string cellphoneNum)
        {
            string com = "insert into Students (StudID,FirstName,SurName,CellNum) VALUES ('" + id + "','" + firstname + "','" + lastname + "','" + cellphoneNum + "')";
            oledbhelper.Execute(com);
        }
        public static DataTable getallstud()
        {
            string com = "select * from Students";
            return oledbhelper.GetTable(com);
        }
        public static void updateCellNum(string firstname,string lastname, string CellNum)
        {
            string com = "update Students set CellNum = '" + CellNum + "' where  FirstName='" + firstname + "' and SurName='" + lastname +"'";
            oledbhelper.Execute(com);
        }
        public static void deleteStud(int id)
        {
            string com = "DELETE FROM Students WHERE StudID=" + id + "";
           oledbhelper.Execute(com);

        }
    }
}
