<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AbrirCuentaWeb.aspx.cs" Inherits="BANCONACION.Vista.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Abrir Cuenta Banco de la Nación</title>

    <link rel="stylesheet" href="Estilos/EstilosAbrirCuentaWeb.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>Ingresa tus datos y abre una cuenta de banco al instante:</h2>

            <label for="tipoDocumento">Tipo de Documento:</label>
            <asp:DropDownList ID="tipoDocumento" runat="server" required="true">
                <asp:ListItem Value="DNI">DNI</asp:ListItem>
                <asp:ListItem Value="Carnet de Extranjería">Carnet de Extranjería</asp:ListItem>
            </asp:DropDownList>

            <label for="id">Número de Documento:</label>
            <asp:TextBox ID="txtNombre" runat="server" required="true" />

            <label for="gmail">Email:</label>
            <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" required="true" />

            <label for="operador">Operador:</label>
            <asp:DropDownList ID="operador" runat="server" required="true">
                <asp:ListItem Value="claro">Claro</asp:ListItem>
                <asp:ListItem Value="movistar">Movistar</asp:ListItem>
                <asp:ListItem Value="entel">Entel</asp:ListItem>
                <asp:ListItem Value="bitel">Bitel</asp:ListItem>
            </asp:DropDownList>

            <label for="numero">Número de Celular:</label>
            <asp:TextBox ID="numero" runat="server" TextMode="SingleLine" MaxLength="9" required="true" pattern="[0-9]{9}" inputmode="tel" />


            <label class="clase">
                <asp:CheckBox ID="terminos" runat="server" OnCheckedChanged="habilitarBoton" AutoPostBack="true" />
                Acepto los términos y condiciones
            </label>

            <asp:Button ID="botonContinuar" runat="server" Text="Siguiente" Enabled="false" Height="45px" OnClick="botonContinuar_Click" Width="138px" />
        </div>
    </form>

</body>
</html>

