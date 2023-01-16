using System;
using System.Windows.Forms;

namespace PPE
{
    public partial class FRM_Erreur : Form
    {
        public FRM_Erreur()
        {
            InitializeComponent();
        }

        private void B_OkError_Click(object sender, EventArgs e)
        {
            this.Dispose();
        }
    }
}
