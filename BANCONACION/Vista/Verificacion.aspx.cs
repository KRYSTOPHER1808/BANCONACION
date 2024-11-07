using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using Microsoft.Extensions.Configuration;
using ConfigurationBuilder = Microsoft.Extensions.Configuration.ConfigurationBuilder;


namespace BANCONACION.Vista
{
    public partial class Verificacion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RBNumero_CheckedChanged(object sender, EventArgs e)
        {
            PNLEnviarSMS.Visible = true;
            PNLEnviarEmail.Visible = false;
            
        }

        protected void RBEmail_CheckedChanged(object sender, EventArgs e)
        {
            PNLEnviarEmail.Visible = true;
            PNLEnviarSMS.Visible = false;
        }

        protected void BTNEnviar_Click(object sender, EventArgs e)
        {
            PNLCodigo.Visible= true;
            BTNContinuar.Visible= true;
            try
            {
                // Cargar la configuración desde appsettings.json
                var configuration = new ConfigurationBuilder()
                    .SetBasePath(Server.MapPath("~/"))  // Esto asegura que esté en la raíz del proyecto
                    .AddJsonFile("appsettings.json")
                    .Build();

                // Obtener la contraseña desde appsettings.json
                string appPassword = configuration["GmailAppPassword"];
                // Crear el mensaje de correo
                MailMessage mensaje = new MailMessage();
                mensaje.From = new MailAddress("gianpablo1808@gmail.com"); // Remitente
                mensaje.To.Add("gianpablo1808@gmail.com");                  // Destinatario
                mensaje.Subject = "Codigo de verificacion";
                mensaje.Body = "Este es su codigo de verificacion : ";
                mensaje.IsBodyHtml = true;  // Configura a true si el cuerpo tiene HTML

                // Configuración del cliente SMTP para Gmail
                SmtpClient clienteSmtp = new SmtpClient();
                clienteSmtp.Host = "smtp.gmail.com";
                clienteSmtp.Port = 587;
                clienteSmtp.Credentials = new NetworkCredential("gianpablo1808@gmail.com", appPassword);  // Contraseña de la aplicación
                clienteSmtp.EnableSsl = true;

                // Enviar el correo
                clienteSmtp.Send(mensaje);

                // Mensaje de confirmación
                Response.Write("Correo enviado exitosamente.");
            }
            catch (Exception ex)
            {
                // Manejo de errores
                Response.Write("Error al enviar correo: " + ex.Message);
            }
        }

        protected void BTNContinuar_Click(object sender, EventArgs e)
        {
            
        }
    }
}