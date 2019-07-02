<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AltaAlumno.aspx.cs" Inherits="PresentacionWeb.AltaAlumno" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<link href="Content/bootstrap.css" rel="stylesheet" />
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Ingrese Nuevo alumno</h2>
            <table style="width:100%;" class="table">
                <tr>
                    <td>DNI:</td>
                    <td>
                        <asp:TextBox ID="txtDNI" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Apellido:</td>
                    <td>
                        <asp:TextBox ID="txtApellido" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Nombre:</td>
                    <td>
                        <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <center><asp:Button ID="btnEnviar" CssClass="btn-primary" runat="server" Text="Enviar" OnClick="btnEnviar_Click" /></center>
                    </td>
                    <td>
                        <asp:Label ID="lblMessage" runat="server" Text=" "></asp:Label>
                    </td>
                </tr>
                </table>
            

        </div>
            
    </form>
</body>
</html>
