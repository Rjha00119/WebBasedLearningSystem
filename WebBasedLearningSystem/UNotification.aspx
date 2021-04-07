<%@ Page Title="" Language="C#" MasterPageFile="~/trainer.Master" AutoEventWireup="true" CodeBehind="UNotification.aspx.cs" Inherits="WebBasedLearningSystem.Notification" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style18 {
            width: 85px;
        }
        .auto-style19 {
            width: 60%;
        }
        .auto-style20 {
            margin-left: 6px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style15">
        <strong>Notfication&nbsp; Management</strong></p>
    <table class="auto-style19">
        <tr>
            <td class="auto-style14" colspan="2"><strong><em>Type your Messege here to Send a Notification to a Learner.</em></strong></td>
        </tr>
        <tr>
            <td class="auto-style18">Messege:-</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" BorderColor="#CC3300" BorderStyle="Solid" CssClass="auto-style20" Height="69px" MaxLength="3500" TextMode="MultiLine" Width="414px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style18">&nbsp;</td>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" BorderColor="#CC3300" BorderStyle="Solid" Height="30px" OnClick="Button1_Click" Text="Submit " Width="86px" />
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
