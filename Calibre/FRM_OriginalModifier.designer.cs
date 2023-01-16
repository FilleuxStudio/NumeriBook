namespace PPE
{
    partial class FRM_OriginalModifier
    {
        /// <summary>
        /// Variable nécessaire au concepteur.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Nettoyage des ressources utilisées.
        /// </summary>
        /// <param name="disposing">true si les ressources managées doivent être supprimées ; sinon, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Code généré par le Concepteur Windows Form

        /// <summary>
        /// Méthode requise pour la prise en charge du concepteur - ne modifiez pas
        /// le contenu de cette méthode avec l'éditeur de code.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FRM_OriginalModifier));
            this.P_OriginalModifier = new System.Windows.Forms.Panel();
            this.B_Mod = new System.Windows.Forms.Button();
            this.LBL_Titre = new System.Windows.Forms.Label();
            this.PB_Emoticone = new System.Windows.Forms.PictureBox();
            this.B_OkError = new System.Windows.Forms.Button();
            this.LBL_Message2 = new System.Windows.Forms.Label();
            this.LBL_Message = new System.Windows.Forms.Label();
            this.B_Cancel = new System.Windows.Forms.Button();
            this.P_OriginalModifier.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.PB_Emoticone)).BeginInit();
            this.SuspendLayout();
            // 
            // P_OriginalModifier
            // 
            this.P_OriginalModifier.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.P_OriginalModifier.Controls.Add(this.B_Cancel);
            this.P_OriginalModifier.Controls.Add(this.B_Mod);
            this.P_OriginalModifier.Controls.Add(this.LBL_Titre);
            this.P_OriginalModifier.Controls.Add(this.PB_Emoticone);
            this.P_OriginalModifier.Controls.Add(this.B_OkError);
            this.P_OriginalModifier.Controls.Add(this.LBL_Message2);
            this.P_OriginalModifier.Controls.Add(this.LBL_Message);
            this.P_OriginalModifier.Location = new System.Drawing.Point(1, 2);
            this.P_OriginalModifier.Name = "P_OriginalModifier";
            this.P_OriginalModifier.Size = new System.Drawing.Size(362, 121);
            this.P_OriginalModifier.TabIndex = 13;
            // 
            // B_Mod
            // 
            this.B_Mod.Location = new System.Drawing.Point(185, 80);
            this.B_Mod.Name = "B_Mod";
            this.B_Mod.Size = new System.Drawing.Size(75, 29);
            this.B_Mod.TabIndex = 16;
            this.B_Mod.Text = "Modifier";
            this.B_Mod.UseVisualStyleBackColor = true;
            this.B_Mod.Click += new System.EventHandler(this.B_OkError_Click);
            // 
            // LBL_Titre
            // 
            this.LBL_Titre.AutoSize = true;
            this.LBL_Titre.Font = new System.Drawing.Font("Arial Rounded MT Bold", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.LBL_Titre.Location = new System.Drawing.Point(26, 6);
            this.LBL_Titre.Name = "LBL_Titre";
            this.LBL_Titre.Size = new System.Drawing.Size(67, 15);
            this.LBL_Titre.TabIndex = 15;
            this.LBL_Titre.Text = "Attention";
            // 
            // PB_Emoticone
            // 
            this.PB_Emoticone.Image = ((System.Drawing.Image)(resources.GetObject("PB_Emoticone.Image")));
            this.PB_Emoticone.Location = new System.Drawing.Point(22, 24);
            this.PB_Emoticone.Name = "PB_Emoticone";
            this.PB_Emoticone.Size = new System.Drawing.Size(76, 85);
            this.PB_Emoticone.TabIndex = 14;
            this.PB_Emoticone.TabStop = false;
            // 
            // B_OkError
            // 
            this.B_OkError.Location = new System.Drawing.Point(104, 80);
            this.B_OkError.Name = "B_OkError";
            this.B_OkError.Size = new System.Drawing.Size(75, 29);
            this.B_OkError.TabIndex = 13;
            this.B_OkError.Text = "Original";
            this.B_OkError.UseVisualStyleBackColor = true;
            this.B_OkError.Click += new System.EventHandler(this.B_OkError_Click);
            // 
            // LBL_Message2
            // 
            this.LBL_Message2.AutoSize = true;
            this.LBL_Message2.Font = new System.Drawing.Font("Arial Rounded MT Bold", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.LBL_Message2.Location = new System.Drawing.Point(140, 24);
            this.LBL_Message2.Name = "LBL_Message2";
            this.LBL_Message2.Size = new System.Drawing.Size(167, 18);
            this.LBL_Message2.TabIndex = 12;
            this.LBL_Message2.Text = "Quel version voulez ";
            // 
            // LBL_Message
            // 
            this.LBL_Message.AutoSize = true;
            this.LBL_Message.Font = new System.Drawing.Font("Arial Rounded MT Bold", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.LBL_Message.Location = new System.Drawing.Point(165, 42);
            this.LBL_Message.Name = "LBL_Message";
            this.LBL_Message.Size = new System.Drawing.Size(110, 18);
            this.LBL_Message.TabIndex = 11;
            this.LBL_Message.Text = "vous ouvrir ?";
            // 
            // B_Cancel
            // 
            this.B_Cancel.Location = new System.Drawing.Point(266, 80);
            this.B_Cancel.Name = "B_Cancel";
            this.B_Cancel.Size = new System.Drawing.Size(75, 29);
            this.B_Cancel.TabIndex = 17;
            this.B_Cancel.Text = "Annuler";
            this.B_Cancel.UseVisualStyleBackColor = true;
            this.B_Cancel.Click += new System.EventHandler(this.B_Cancel_Click);
            // 
            // FRM_OriginalModifier
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(366, 127);
            this.Controls.Add(this.P_OriginalModifier);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Name = "FRM_OriginalModifier";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Form1";
            this.P_OriginalModifier.ResumeLayout(false);
            this.P_OriginalModifier.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.PB_Emoticone)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel P_OriginalModifier;
        private System.Windows.Forms.Label LBL_Titre;
        private System.Windows.Forms.PictureBox PB_Emoticone;
        private System.Windows.Forms.Button B_OkError;
        private System.Windows.Forms.Label LBL_Message2;
        private System.Windows.Forms.Label LBL_Message;
        private System.Windows.Forms.Button B_Mod;
        private System.Windows.Forms.Button B_Cancel;
    }
}

