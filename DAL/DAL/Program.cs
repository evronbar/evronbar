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
            Student.GetAllID();
            Student.GetAllFirstName();
            Student.GetAllLastName();
            Student.GetAllPhoneNum();
            Student.AddStudent("12345", "shlomo", "david", "0536579998");
        }
    }
}
