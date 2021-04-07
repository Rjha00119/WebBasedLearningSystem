<%@ Page Title="" Language="C#" MasterPageFile="~/learner.Master" AutoEventWireup="true" CodeBehind="Account.aspx.cs" Inherits="WebBasedLearningSystem.Account" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style15 {
            width: 60%;
            height: 280px;
            font-size: larger;
            color: #000000;
            border-style: solid;
            border-width: 2px;
            margin-left: 0px;
        }
        .auto-style17 {
            width: 573px;
        }
        .auto-style22 {
            width: 215px;
        }
        .auto-style23 {
            height: 26px;
        }
        .auto-style24 {
            width: 215px;
            height: 26px;
        }
        .auto-style25 {
            width: 573px;
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Account Management&nbsp; </h2><br />

    <table align="center" cellpadding="2" class="auto-style15">
        <tr>
            <td class="auto-style24"><strong>Learner Id :</strong></td>
            <td class="auto-style25">
                <strong>
                <asp:Label ID="Label2" runat="server"></asp:Label>
                </strong>
            </td>
        </tr>
        <tr>
            <td class="auto-style22"><strong>Learner Name :</strong></td>
            <td class="auto-style17">
                <strong>
                <asp:Label ID="Label3" runat="server"></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server" Height="19px" Width="141px" Visible="False" MaxLength="30"></asp:TextBox>
                </strong>
            </td>
        </tr>
        <tr>
            <td class="auto-style22"><strong>UserId :</strong></td>
            <td class="auto-style17">
                <strong>
                <asp:Label ID="Label4" runat="server"></asp:Label>
                </strong>
            </td>
        </tr>
        <tr>
            <td class="auto-style22"><strong>Date Of Birth :</strong></td>
            <td class="auto-style17">
                <strong>
                <asp:Label ID="Label5" runat="server"></asp:Label>
                </strong>
            </td>
        </tr>
        <tr>
            <td class="auto-style22"><strong>Sex :</strong></td>
            <td class="auto-style17">
                <strong>
                <asp:Label ID="Label6" runat="server"></asp:Label>
                </strong>
            </td>
        </tr>
        <tr>
            <td class="auto-style22"><strong>Mobile :</strong></td>
            <td class="auto-style17">
                <strong>
                <asp:Label ID="Label7" runat="server"></asp:Label>
                <asp:TextBox ID="TextBox3" runat="server" Height="19px" Width="141px" Visible="False" MaxLength="10"></asp:TextBox>
                </strong>
            </td>
        </tr>
        <tr>
            <td class="auto-style22"><strong>Email :</strong></td>
            <td class="auto-style17">
                <strong>
                <asp:Label ID="Label8" runat="server"></asp:Label>
                </strong>
            </td>
        </tr>
        <tr>
            <td class="auto-style22"><strong>Address :</strong></td>
            <td class="auto-style17">
                <strong>
                <asp:Label ID="Label9" runat="server"></asp:Label>
                <asp:TextBox ID="TextBox4" runat="server" Height="19px" Width="141px" Visible="False" MaxLength="90"></asp:TextBox>
                </strong>
            </td>
        </tr>
        <tr>
            <td class="auto-style22"><strong>
                <asp:LinkButton ID="LinkButton2" runat="server" CssClass="auto-style13" OnClick="LinkButton2_Click">Edit</asp:LinkButton>
                </strong></td>
            <td class="auto-style17"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" BorderColor="#3399FF" BorderStyle="Solid" Height="29px" Text="Save" Width="78px" OnClick="Button1_Click" Visible="False" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" BorderColor="#3399FF" BorderStyle="Solid" Height="29px" OnClick="Button2_Click" Text="Cancel" Width="78px" Visible="False" />
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style23" colspan="2"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                <asp:Label ID="Label10" runat="server"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</strong></td>
            </strong>
        </tr>
    </table>

</asp:Content>
