using System;
using System.Web.UI;

namespace BANCONACION.Vista
{
    public partial class ACBGmail : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // Lógica para abrir cuenta bancaria
        }

        protected void RadioButton4_CheckedChanged(object sender, EventArgs e)
        {
            // Lógica si se cambia el RadioButton4
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            // Muestra el modal al hacer clic en "términos y condiciones"
            Response.Redirect("TYC.aspx?");
        }

       
    }
}
