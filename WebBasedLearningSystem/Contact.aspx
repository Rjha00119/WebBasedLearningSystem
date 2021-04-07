<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="WebBasedLearningSystem.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

    .auto-style40 {
        width: 445px;
    }
    .auto-style41 {
        width: 458px;
    }
        .auto-style42 {
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style30">
    <tr>
        <td>&nbsp;</td>
        <td>
            <table class="auto-style30">
                <tr>
                    <td class="auto-style41">
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/img/contactus.jpg" Width="407px" />
                    </td>
                    <td>
                <table style="color: Black">
                    <tr>
                        <td colspan="2" class="auto-style42">
                            <strong><em>For getting anytype of help &amp; support please fill&nbsp; this Form:</em></strong></td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <h1 align="left" style="color: Black">Contact Us </h1>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="helvetica" Font-Size="12pt" Text="Name"></asp:Label>
                            &nbsp; </td>
                        <td class="auto-style40">
                            <asp:TextBox ID="txtName" runat="server" Height="30px" Width="142px" MaxLength="45"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="Required"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Names="helvetica" Font-Size="12pt" Text="Email Id"></asp:Label>
                        </td>
                        <td class="auto-style40">
                            <asp:TextBox ID="txtEmail" runat="server" Height="31px" Width="142px" MaxLength="90"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtEmail" ErrorMessage="Required"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;<asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Names="helvetica" Font-Size="12pt" Text="Contact No "></asp:Label>
                        </td>
                        <td class="auto-style40">
                            <asp:TextBox ID="txtContact" runat="server" Height="31px" Width="148px" MaxLength="10"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Names="helvetica" Font-Size="12pt" Text="Query"></asp:Label>
                        </td>
                        <td class="auto-style40">
                            <asp:TextBox ID="TextBox1" runat="server" Height="43px" MaxLength="5000" TextMode="MultiLine" Width="197px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="btnSubmit" runat="server" CssClass="btnBlue" OnClick="btnSubmit_Click" Text="Submit" />
                        </td>
                        <td class="auto-style40"></td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Label ID="Label8" runat="server"></asp:Label>
                        </td>
                    </tr>
                </table>
                    </td>
                </tr>
            </table>
        </td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
