using System;
using System.Collections.Generic;
using System.Drawing;
using System.Windows.Forms;

namespace PPE
{
    public partial class FRM_DialogueLivreLiseuse : Form
    {
        public FRM_DialogueLivreLiseuse()
        {
            InitializeComponent();

        }

        public FRM_DialogueLivreLiseuse(List<Liseuse.Livre> livres)
        {
            InitializeComponent();

            foreach (Liseuse.Livre livre in livres)
            {
                LB_Livres.Items.Add(livre);
            }

        }

        protected override void OnPaintBackground(PaintEventArgs e)
        {
            RectangleF fond = new Rectangle(0, 0, this.Width, this.Height);
            RectangleF dessus_fond = new Rectangle(5, 20, this.Width - 10, this.Height - 40);

            e.Graphics.FillRectangle(new Pen(Color.FromArgb(241, 64, 75)).Brush, fond);
            e.Graphics.FillRectangle(Brushes.White, dessus_fond);


        }

        private void BTN_CLOSE_Click(object sender, EventArgs e)
        {

        }
    }
}
