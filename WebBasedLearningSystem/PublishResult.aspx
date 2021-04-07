<%@ Page Title="" Language="C#" MasterPageFile="~/trainer.Master" AutoEventWireup="true" CodeBehind="PublishResult.aspx.cs" Inherits="WebBasedLearningSystem.PublishResult" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style16 {
            width: 51%;
        }
        .auto-style17 {
            width: 107px;
        }
        .auto-style18 {
            width: 107px;
            font-size: large;
        }
        .auto-style19 {
            width: 243px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style15">
        <strong>Result:</strong></p>
    <table class="auto-style16" border="3">
        <tr>
            <td class="auto-style18"><strong>Result Id :</strong></td>
            <td class="auto-style19">
                <asp:TextBox ID="TextBox1" runat="server" BorderColor="Black" BorderStyle="Solid" Height="23px" MaxLength="10" Width="145px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Result id should not be blank" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style18"><strong>Result Name:</strong></td>
            <td class="auto-style19">
                <asp:TextBox ID="TextBox2" runat="server" BorderColor="Black" BorderStyle="Solid" Height="23px" MaxLength="40" Width="145px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style18"><strong>Result Details:</strong></td>
            <td class="auto-style19">
                <asp:FileUpload ID="FileUpload1" runat="server" BorderStyle="Solid" Height="32px" Width="219px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style17">
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
            <td class="auto-style19">
                <asp:Button ID="Button1" runat="server" BorderColor="Black" BorderStyle="Solid" OnClick="Button1_Click" Text="Upload Result" Width="109px" Height="31px" />
            </td>
        </tr>
    </table>
</asp:Content>
