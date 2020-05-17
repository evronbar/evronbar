using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class listitem
    {
        public string name;
        private string id;

        public string Id
        {
            get
            {
                return id;
            }

            set
            {
                id = value;
            }
        }
        public listitem(string name, string id)
        {
            this.name = name;
            this.id = id;
        }
        public override string ToString()
        {
            return this.name;
        }
    }
}
