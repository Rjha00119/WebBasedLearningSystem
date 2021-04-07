<%@ Page Title="" Language="C#" MasterPageFile="~/trainer.Master" AutoEventWireup="true" CodeBehind="UploadTest.aspx.cs" Inherits="WebBasedLearningSystem.UploadTeat" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style18 {
            width: 79%;
        }
        .auto-style17 {
            font-size: xx-large;
        }
        .auto-style16 {
            width: 176px;
        }
        .auto-style19 {
            width: 619px;
        }
        .auto-style20 {
            font-size: large;
            width: 176px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table border="2" class="auto-style18">
        <tr>
            <td class="auto-style17" colspan="2"><strong><em>Upload Test</em></strong></td>
        </tr>
        <tr>
            <td class="auto-style20"><strong>Test Id:</strong></td>
            <td class="auto-style19">
                <asp:TextBox ID="TextBox1" runat="server" BorderStyle="Solid" Height="21px" MaxLength="15" Width="136px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Test Id should not be blank." SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style20"><strong>Test Name :</strong></td>
            <td class="auto-style19">
                <asp:TextBox ID="TextBox2" runat="server" BorderStyle="Solid" Height="21px" MaxLength="45" Width="136px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Test name should not be blank" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style20"><strong>Test Subject:</strong></td>
            <td class="auto-style19">
                <asp:TextBox ID="TextBox3" runat="server" BorderStyle="Solid" Height="21px" MaxLength="29" Width="136px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Test Subject Should not be blank." SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style20"><strong>Test Paper:</strong></td>
            <td class="auto-style19">
                <asp:FileUpload ID="FileUpload1" runat="server" BorderStyle="Solid" Height="23px" Width="218px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style16">
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
            <td class="auto-style19">
                <asp:Button ID="Button1" runat="server" BorderStyle="Solid" Height="29px" OnClick="Button1_Click" Text="Upload" Width="116px" />
            </td>
        </tr>
    </table>
</asp:Content>
