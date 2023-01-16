using System;
using System.Windows.Forms;

namespace PPE
{
    public partial class FRM_OriginalModifier : Form
    {
        int Frm;
        public FRM_OriginalModifier()
        {
            InitializeComponent();
        }

        private void B_OkError_Click(object sender, EventArgs e)
        {
            if (sender.ToString().Contains("Original"))
            {
                Frm = 1;
            }
            if (sender.ToString().Contains("Modifier"))
            {
                Frm = 2;
            }
            this.Close();
        }
        public int Choix()
        {
            return Frm;
        }

        private void B_Cancel_Click(object sender, EventArgs e)
        {
            Frm = 3;
            this.Close();
        }
    }
}
