using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class User
    {
        public int Id { get; set; }
        public int Aveilble { get; set; }
        public int Status { get; set; }
        public String Password { get; set; }
        public String Name { get; set; }
    }
}
