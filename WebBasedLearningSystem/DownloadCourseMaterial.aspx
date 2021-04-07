<%@ Page Title="" Language="C#" MasterPageFile="~/learner.Master" AutoEventWireup="true" CodeBehind="DownloadCourseMaterial.aspx.cs" Inherits="WebBasedLearningSystem.DownloadCourseMaterial" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style16 {
            font-size: xx-large;
            text-decoration: underline;
        }
        .auto-style17 {
            width: 145px;
        }
        .auto-style18 {
            width: 145px;
            height: 33px;
            font-size: large;
        }
        .auto-style19 {
            height: 33px;
        }
        .auto-style20 {
            width: 145px;
            font-size: large;
        }
        .auto-style21 {
            width: 56%;
        }
        .auto-style22 {
            width: 145px;
            font-size: large;
            color: #000000;
            height: 33px;
        }
        .auto-style23 {
            height: 33px;
        }
        .auto-style24 {
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style16">
        <strong>Download Course Material</strong></p>
    <table border="3" class="auto-style21">
        <tr>
            <td class="auto-style18"><strong>Course Id:</strong></td>
            <td class="auto-style19">
                <asp:TextBox ID="TextBox2" runat="server" BorderStyle="Solid" Height="23px" MaxLength="10" Width="133px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox2" ErrorMessage="Required" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style20"><strong>Course Name:</strong></td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" BorderStyle="Solid" Height="23px" MaxLength="30" Width="133px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox3" CssClass="auto-style24" ErrorMessage="Required" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style17">
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" BorderStyle="Solid" Height="28px" Text="Download" Width="106px" OnClick="Button1_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
