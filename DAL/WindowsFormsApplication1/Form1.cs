using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using DAL;
namespace WindowsFormsApplication1
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
           foreach (DataRow dr in DAL.Student.GetAll().Rows)
            {
                listitem l = new listitem(dr["firstName"].ToString() + " " + dr["lastName"].ToString(),dr["ID"].ToString());
                comboBox1.Items.Add(l);
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            listitem l = (listitem)comboBox1.SelectedItem;
            MessageBox.Show(l.Id);
        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }
    }
}
