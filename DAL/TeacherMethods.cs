using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.OleDb;

namespace DAL
{
    public class TeacherMethods
    {
        public static void addTeacher(int id, string firstname, string lastname, string cellphoneNum,int AmountOfLessons)
        {
            string com = "insert into Teachers (ID,FirstName,SurName,CellNum,LessonsAmount) VALUES ('" + id + "','" + firstname + "','" + lastname + "','" + cellphoneNum + "','" + AmountOfLessons + "')";

            oledbhelper.Execute(com);
        }
        public static DataTable getalltea()
        {
            string com = "select * from Teachers";
            return oledbhelper.GetTable(com);
        }
        public static void updateCellNum(string firstname, string lastname, string CellNum)
        {
            string com = "update Teachers set CellNum = '" + CellNum + "' where  FirstName='" + firstname + "' and SurName='" + lastname + "'";
            oledbhelper.Execute(com);
        }
        public static void updateAmountOfLessons(string firstname, string lastname, int AmountOfLessons)
        {
            string com = "update Teachers set LessonsAmount = '" + AmountOfLessons + "' where  FirstName='" + firstname + "' and SurName='" + lastname + "'";
            oledbhelper.Execute(com);
        }
        public static void deleteTeacher(int id)
        {
            string com = "DELETE FROM Teachers WHERE ID=" + id + "";
            oledbhelper.Execute(com);

        }
    }
}
