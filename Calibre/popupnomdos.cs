using System;
using System.Windows.Forms;

namespace PPE
{
    public partial class popupnomdos : Form
    {
        public int confirme = 0;
        public popupnomdos()
        {
            InitializeComponent();
        }

        public void BTN_continu_Click(object sender, EventArgs e)
        {
            confirme = 1;
            this.Close();
        }

        public void BTN_annule_Click(object sender, EventArgs e)
        {
            confirme = 0;
            this.Close();
        }
    }
}
