<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Verificacion.aspx.cs" Inherits="BANCONACION.Vista.Verificacion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="height: 369px">
            <asp:Label ID="lblituloVeri" runat="server" Text="Elige un metodo de verificación"></asp:Label>
            <br />
            <asp:RadioButton ID="RBNumero" runat="server" GroupName="EleccionVerificacion" OnCheckedChanged="RBNumero_CheckedChanged" Text="Numero de Celular"  AutoPostBack="true"/>
            <asp:RadioButton ID="RBEmail" runat="server" GroupName="EleccionVerificacion" OnCheckedChanged="RBEmail_CheckedChanged" Text="Email" AutoPostBack="true"/>
            <br />
            <br />
            <asp:Panel ID="PNLEnviarSMS" runat="server" Height="16px" Visible="False">
                <asp:Label ID="lblEnviarSMS" runat="server" Text="Enviar SMS al numero: "></asp:Label>
            </asp:Panel>
            <asp:Panel ID="PNLEnviarEmail" runat="server" Height="19px" Visible="False">
                    <asp:Label ID="lblEnviarEmail" runat="server" Text="Enviar al correo:"></asp:Label>
            </asp:Panel>
            <asp:Button ID="BTNEnviar" runat="server" Text="Enviar" Height="48px"  Width="138px" OnClick="BTNEnviar_Click" />
            <asp:Panel ID="PNLCodigo" runat="server" Height="84px" Visible="false">
                <asp:Label ID="lblTituloCodigo" runat="server" Text="Te hemos enviado un codigo de verificación"></asp:Label>
                <br />
                <asp:TextBox ID="TXTCodigo" runat="server"></asp:TextBox>
                <br />
                <asp:Label ID="lblVolverAEnviarCodigo" runat="server" Text="No he recibio el codigo"></asp:Label>
            </asp:Panel>
            
            <asp:Button ID="BTNContinuar" runat="server" Height="52px" Text="Continuar" Width="135px" Visible="False" OnClick="BTNContinuar_Click" />
            
            <br />
        </div>
        
    </form>
</body>
</html>
