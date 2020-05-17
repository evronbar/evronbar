using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.OleDb;

namespace DAL
{
    class Program
    {
        static void Main(string[] args)
        {
            //StudentMethods.deleteStud(212223);
            StudentMethods.addStud(956234, "Drake", "Bell", "911");
            //TeacherMethods.deleteTeacher(31415);
            //LessonMethods.deleteLesson(0);
            //TeacherMethods.addTeacher(31415, "Albert", "Einstein", "0521643812", 6);
            //LessonMethods.addLesson(2, "91154","65342", "2002/6/9", 7);
            //LessonMethods.UpdateLessonDate(2,"2001/09/11");
            //StudentMethods.addStud(91142069, "George W", "Bush", "911");
            //LessonMethods.updateStudent(1, "91142069");
            //LessonMethods.updateTeacher(1, "365124");
        }
    }
}
