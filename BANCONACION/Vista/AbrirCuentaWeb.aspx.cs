using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BANCONACION.Vista
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void habilitarBoton(object sender, EventArgs e)
        {
            // Verifica si el checkbox está seleccionado
            if (terminos.Checked)
            {
                // Si está seleccionado, habilita el botón
                botonContinuar.Enabled = true;
            }
            else
            {
                // Si no está seleccionado, deshabilita el botón
                botonContinuar.Enabled = false;
            }
        }

        protected void botonContinuar_Click(object sender, EventArgs e)
        {

            string nombre = txtNombre.Text;
            string email = txtEmail.Text;
            Response.Redirect("AbrirCuentaWeb2.aspx?nombre=" + nombre + "&email=" + email);
        }
    }
}