<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ACBGmail.aspx.cs" Inherits="BANCONACION.Vista.ACBGmail" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Abrir Cuenta Bancaria</title>
    <link href="Estilos/ACBGmail.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server" class="form-container">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

        <div class="form-header">
            <asp:Label ID="Label1" runat="server" Text="Abrir Cuenta Bancaria con Gmail" CssClass="form-title"></asp:Label>
        </div>

        <div class="form-group">
            <asp:Label ID="Label2" runat="server" Text="Correo Electrónico (Gmail):" CssClass="form-label"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-input"></asp:TextBox>
        </div>

        <div class="form-group">
            <asp:Label ID="Label3" runat="server" Text="Nota: Este correo se empleará para enviar la información contractual." CssClass="form-note"></asp:Label>
        </div>

        <div class="form-group">
            <asp:Label ID="Label4" runat="server" Text="¿En qué moneda quiere abrir su cuenta?" CssClass="form-label"></asp:Label>
            <div class="radio-group">
                <asp:RadioButton ID="RadioButton1" runat="server" Text="Soles" GroupName="Moneda" CssClass="form-radio" />
                <asp:RadioButton ID="RadioButton2" runat="server" Text="Dólares" GroupName="Moneda" CssClass="form-radio" />
            </div>
        </div>

        <div class="form-group">
            <asp:Label ID="Label5" runat="server" Text="Declaro que:" CssClass="form-label"></asp:Label>
        </div>

        <div class="form-group">
            <asp:Label ID="Label6" runat="server" Text="¿Tienes residencia fiscal o tributaria fuera del Perú?" CssClass="form-label"></asp:Label>
            <div class="radio-group">
                <asp:RadioButton ID="RadioButton3" runat="server" Text="Sí" GroupName="ResidenciaFiscal" CssClass="form-radio" />
                <asp:RadioButton ID="RadioButton4" runat="server" Text="No" GroupName="ResidenciaFiscal" CssClass="form-radio" OnCheckedChanged="RadioButton4_CheckedChanged" AutoPostBack="true" />
            </div>
        </div>

        <div class="form-group">
            <asp:CheckBox ID="CheckBox1" runat="server" Text="He leído y acepto los " CssClass="form-checkbox" />
            <asp:LinkButton ID="LinkButton1" runat="server" CssClass="terms-link" OnClick="LinkButton1_Click">términos y condiciones</asp:LinkButton>
        </div>

        <div class="form-group">
            <asp:Button ID="Button1" runat="server" Text="Abrir Cuenta" CssClass="btn btn-primary" OnClick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" Text="Cancelar" CssClass="btn btn-secondary" />
        </div>
    </form>
</body>
</html>


