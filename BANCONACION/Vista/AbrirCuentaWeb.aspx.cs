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
        // Propiedades para almacenar los valores en ViewState
        public bool ValidarNM
        {
            get { return ViewState["validarNM"] != null && (bool)ViewState["validarNM"]; }
            set { ViewState["validarNM"] = value; }
        }
        public bool ValidarC
        {
            get { return ViewState["validarC"] != null && (bool)ViewState["validarC"]; }
            set { ViewState["validarC"] = value; }
        }

        public bool ValidarE
        {
            get { return ViewState["validarE"] != null && (bool)ViewState["validarE"]; }
            set { ViewState["validarE"] = value; }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void txtEmail_TextChanged(object sender, EventArgs e)
        {
            string email = txtEmail.Text;
            string pattern = @"^[a-zA-Z0-9._%+-]+@(gmail\.com|hotmail\.com)$";

            if (System.Text.RegularExpressions.Regex.IsMatch(email, pattern))
            {
                // Si el correo es válido
                lblEmailError.Visible = false;
                ValidarE = true;
            }
            else
            {
                // Si el correo es inválido
                lblEmailError.Text = "Por favor, ingresa un correo válido (@gmail.com o @hotmail.com)";
                lblEmailError.Visible = true;
                ValidarE = false;
            }
            VerificarValidacion();
        }

        private void VerificarValidacion()
        {
            // Verifica si el checkbox está seleccionado y ambas validaciones son verdaderas
            if (terminos.Checked && ValidarC && ValidarE & ValidarNM)
            {
                botonContinuar.Enabled = true;
            }
            else
            {
                botonContinuar.Enabled = false;
            }
        }

        protected void habilitarBoton(object sender, EventArgs e)
        {
            VerificarValidacion();
        }

        protected void botonContinuar_Click(object sender, EventArgs e)
        {
            string nombre = txtNombre.Text;
            string email = txtEmail.Text;
            Response.Redirect("AbrirCuentaWeb2.aspx?nombre=" + nombre + "&email=" + email);
        }

        protected void txtNombre_TextChanged(object sender, EventArgs e)
        {
            string input = txtNombre.Text;

            // Verifica si el input contiene solo dígitos
            if (!System.Text.RegularExpressions.Regex.IsMatch(input, @"^\d+$"))
            {
                lblNumeroError.Text = "Por favor, ingresa solo números.";
                lblNumeroError.Visible = true;
                txtNombre.Text = ""; // Borra el contenido si es inválido
                ValidarC = false;
            }
            else
            {
                lblNumeroError.Visible = false;
                ValidarC = true;
            }
            VerificarValidacion();
        }

        protected void numero_TextChanged(object sender, EventArgs e)
        {
            string input = numero.Text;

            // Verifica si el input contiene solo dígitos
            if (!System.Text.RegularExpressions.Regex.IsMatch(input, @"^\d+$"))
            {
                lblNumeroError2.Text = "Por favor, ingresa solo números.";
                lblNumeroError2.Visible = true;
                numero.Text = ""; // Borra el contenido si es inválido
                ValidarNM = false;
            }
            else
            {
                lblNumeroError2.Visible = false;
                ValidarNM = true;
            }
            VerificarValidacion();
        }
    }
}
