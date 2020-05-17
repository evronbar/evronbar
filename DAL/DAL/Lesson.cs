using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.OleDb;

namespace DAL
{
    public class Lesson
    {
        public static void AddLesson(string idTeacher, string idStudent, string dateTime, int time)
        {
            string com = "insert into tblLesson(idTeacher, idStudent, [dateTime], [time]) VALUES ('" + idTeacher + "','" + idStudent + "','" + dateTime + "'," + time + ")";

            oledbhelper.Execute(com);
        }

        public static DataTable GetAllIDTeacher()
        {
            string com = "select * from tblLesson order by idTeacher";
            return oledbhelper.GetTable(com);
        }

        public static DataTable GetAllIDStudent()
        {
            string com = "select * from tblLesson order by idStudent";
            return oledbhelper.GetTable(com);
        }

        public static DataTable GetAllDateTime()
        {
            string com = "select * from tblLesson order by dateTime";
            return oledbhelper.GetTable(com);
        }

        public static DataTable GetAllTime()
        {
            string com = "select * from tblLesson order by time";
            return oledbhelper.GetTable(com);
        }

        public static void UpdateIdTeacher(string idTeacher, string code)
        {
            string com = "update tblLesson set idTeacher = '" + idTeacher + "' where  code=" + code;
            oledbhelper.Execute(com);
        }

        public static void UpdateIdStudent(string idStudent, string code)
        {
            string com = "update tblLesson set idStudent = '" + idStudent + "' where  code=" + code;
            oledbhelper.Execute(com);
        }

        public static void UpdateDateTime(string dateTime, string code)
        {
            string com = "update tblLesson set dateTime = '" + dateTime + "' where  code=" + code;
            oledbhelper.Execute(com);
        }

        public static void UpdateTime(string time, string code)
        {
            string com = "update tblLesson set time = '" + time + "' where  code=" + code;
            oledbhelper.Execute(com);
        }

        public static void DeleteStudentLessons(string name)
        {
            string com = "DELETE * FROM tblLesson where idStudent='" + name+"'";
            oledbhelper.Execute(com);
        }
        public static void DeleteStudentLesson(int code,string name)
        {
            string com = "DELETE FROM tblLesson where idStudent='" + name + "' code =" + code;
            oledbhelper.Execute(com);
        }
    }
}
