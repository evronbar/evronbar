using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.OleDb;

namespace DAL
{
    public class LessonMethods
    {
        public static void addLesson(int id, string studID, string teaID,string LessonDate,int Hours)
        {
            string com = "insert into Lessons (LessonID,StudID,TeaID,DateOfLesson,[Hours]) VALUES ("+ id + ",'"  + studID + "','" + teaID +  "','" + LessonDate + "'," + Hours + ")";
            oledbhelper.Execute(com);
        }
        public static DataTable getallLessons()
        {
            string com = "select * from Lessons";
            return oledbhelper.GetTable(com);
        }
        public static void updateStudent(int iddddd,string studID)
        {
            string com = "update Lessons set StudID = '" + studID + "' where  LessonID=" + iddddd + "";
            oledbhelper.Execute(com);
        }
        public static void updateTeacher(int idd, string TeaID)
        {
            string com = "update Lessons set TeaID = '" + TeaID + "' where  LessonID=" + idd + "";
            oledbhelper.Execute(com);
        }
        public static void UpdateLessonDate(int idd , string LessonDate)
        {
            string com = "update Lessons set DateOfLesson = '" + (LessonDate) + "' where ID='" + idd + "'";
            oledbhelper.Execute(com);
        }
        public static void deleteLesson(int idd)
        {
            string com = "DELETE FROM Lessons WHERE ID=" + (idd) + "";
            oledbhelper.Execute(com);
        }
    }
}
