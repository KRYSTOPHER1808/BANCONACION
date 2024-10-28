<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TYC.aspx.cs" Inherits="BANCONACION.Vista.TYC" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Términos y Condiciones</title>
    <link href="Estilos/TYC.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server" class="terms-container">
        <div class="terms-content">
            <asp:Label ID="Label1" runat="server" Text="Términos y Condiciones" CssClass="terms-title"></asp:Label>
            <p class="terms-intro">
                Términos y Condiciones para la Solicitud de Cuenta de Ahorros
            </p>
            <p class="terms-text">
                Bienvenido a Banco de la Nación, donde nos complace acompañarte en el camino hacia tus metas financieras. Antes de proceder con la solicitud de tu cuenta de ahorros, te invitamos a revisar detenidamente los siguientes términos y condiciones. Estos términos rigen la relación entre tú, como titular de la cuenta, y Banco de la Nación, el proveedor de servicios financieros.
            </p>

            <div class="terms-section">
                <strong>1. Elegibilidad:</strong>
                <p>Para solicitar una cuenta de ahorros en Banco de la Nación, debes cumplir con los requisitos de elegibilidad establecidos por la institución. Esto puede incluir, entre otros, la edad mínima, la presentación de documentos de identificación válidos y la verificación de antecedentes.</p>
            </div>

            <div class="terms-section">
                <strong>2. Tipo de Cuenta:</strong>
                <p>Selecciona el tipo de cuenta de ahorros que mejor se adapte a tus necesidades. Banco de la Nación ofrece diversas opciones con características y beneficios específicos. Asegúrate de revisar las condiciones asociadas a cada tipo de cuenta antes de tomar tu decisión.</p>
            </div>

            <div class="terms-section">
                <strong>3. Depósitos y Retiros:</strong>
                <p>Puedes realizar depósitos en tu cuenta de ahorros en cualquier momento, ya sea en sucursales, cajeros automáticos o mediante servicios en línea. Además, podrás efectuar retiros según los límites y restricciones establecidos por Banco de la Nación.</p>
            </div>

            <div class="terms-section">
                <strong>4. Tasas de Interés:</strong>
                <p>Consulta las tasas de interés aplicables a tu cuenta de ahorros. Banco de la Nación se reserva el derecho de ajustar estas tasas de acuerdo con las condiciones del mercado financiero.</p>
            </div>

            <div class="terms-section">
                <strong>5. Comisiones y Tarifas:</strong>
                <p>Revisa la lista de comisiones y tarifas asociadas a la cuenta de ahorros. Banco de la Nación podrá aplicar cargos por servicios específicos o ajustar las tarifas según sus políticas vigentes.</p>
            </div>

            <div class="terms-section">
                <strong>6. Uso de Servicios en Línea:</strong>
                <p>Si optas por utilizar servicios bancarios en línea, asegúrate de entender y aceptar los términos relacionados con la seguridad, la privacidad y el acceso a la información de tu cuenta.</p>
            </div>

            <div class="terms-section">
                <strong>7. Responsabilidad del Titular de la Cuenta:</strong>
                <p>Como titular de la cuenta, eres responsable de mantener la confidencialidad de tu información personal y de realizar notificaciones inmediatas en caso de pérdida, robo o acceso no autorizado a tus detalles de cuenta.</p>
            </div>

            <div class="terms-section">
                <strong>8. Cierre de Cuenta:</strong>
                <p>Banco de la Nación se reserva el derecho de cerrar tu cuenta de ahorros en caso de incumplimiento de los términos y condiciones establecidos, actividades fraudulentas o por razones legales.</p>
            </div>

            <div class="terms-section">
                <strong>9. Modificaciones de Términos:</strong>
                <p>Banco de la Nación puede actualizar estos términos y condiciones en cualquier momento. Te notificaremos sobre cambios significativos con anticipación.</p>
            </div>

            <div class="terms-section">
                <strong>10. Contacto:</strong>
                <p>Si tienes alguna pregunta o inquietud sobre tu cuenta de ahorros, no dudes en comunicarte con nuestro servicio de atención al cliente.</p>
            </div>

            <p class="terms-conclusion">Al continuar con la solicitud de tu cuenta de ahorros, aceptas y reconoces estos términos y condiciones. Gracias por elegir Banco de la Nación como tu socio financiero. ¡Esperamos brindarte una experiencia bancaria excepcional!</p>
        </div>
    </form>
</body>
</html>
