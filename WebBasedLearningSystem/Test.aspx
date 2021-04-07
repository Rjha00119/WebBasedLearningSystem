<%@ Page Title="" Language="C#" MasterPageFile="~/learner.Master" AutoEventWireup="true" CodeBehind="Test.aspx.cs" Inherits="WebBasedLearningSystem.Test" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style15 {
            font-size: xx-large;
        }
        .auto-style16 {
            font-size: large;
            width: 143px;
        }
        .auto-style17 {
            width: 143px;
        }
        .auto-style18 {
            width: 64%;
        }
        .auto-style19 {
            font-size: large;
            width: 143px;
            height: 35px;
        }
        .auto-style20 {
            height: 35px;
        }
        .auto-style21 {
            font-size: large;
            width: 143px;
            color: #000000;
            height: 52px;
        }
        .auto-style22 {
            height: 52px;
        }
        .auto-style23 {
            font-size: large;
            width: 143px;
            color: #000000;
            height: 48px;
        }
        .auto-style24 {
            height: 48px;
        }
        .auto-style25 {
            font-size: medium;
        }
        .auto-style26 {
            font-size: large;
            width: 143px;
            height: 44px;
            color: #000000;
            text-decoration: none;
        }
        .auto-style27 {
            height: 44px;
            color: #000000;
            font-size: large;
        }
        .auto-style28 {
            font-size: large;
            color: #000000;
            height: 24px;
        }
        .auto-style29 {
            font-size: xx-large;
        }
        .auto-style30 {
            font-size: medium;
            width: 946px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style15">
        <strong>Download Test </strong>
    </p>
    <p class="auto-style30">
        <strong>* This field is not a mandatory field</strong></p>
    <table class="auto-style18" border="2">
        <tr>
            <td class="auto-style21"><strong>Test Id:*</strong></td>
            <td class="auto-style22">
                <asp:TextBox ID="TextBox1" runat="server" BorderStyle="Solid" Height="21px" Width="165px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style23"><strong>Test Name:</strong></td>
            <td class="auto-style24">
                <asp:TextBox ID="TextBox2" runat="server" BorderStyle="Solid" Height="21px" MaxLength="25" Width="165px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Test Name Should not be blank" SetFocusOnError="True" CssClass="auto-style25"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style26"><strong>Test Subject:</strong></td>
            <td class="auto-style27">
                <asp:TextBox ID="TextBox3" runat="server" BorderStyle="Solid" Height="21px" MaxLength="45" Width="165px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style17">
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" BorderStyle="Solid" Height="27px" Text="Download" Width="101px" OnClick="Button1_Click1" />
            </td>
        </tr>
    </table>
</asp:Content>
