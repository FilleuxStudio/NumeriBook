using System;
using System.Windows.Forms;

namespace PPE
{
    public partial class FRM_LivreExisteDeja : Form
    {
        public FRM_LivreExisteDeja()
        {
            InitializeComponent();
        }

        private void P_Error_Paint(object sender, PaintEventArgs e)
        {

        }

        private void B_OkError_Click(object sender, EventArgs e)
        {
            this.Dispose();
        }
    }
}
