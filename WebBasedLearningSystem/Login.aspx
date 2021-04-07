
<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebBasedLearningSystem.Login" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style42">
        <tr>
            <td class="auto-style37">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
            <td class="auto-style41">
                <table class="auto-style39" border="3">
                    <tr>
                        <td colspan="2" class="auto-style40">
                            <span class="auto-style43"><strong>Login</strong></span>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style38"><strong>User Id</strong></td>
                        <td class="auto-style45">
                            <asp:TextBox ID="TextBox1" runat="server" Width="177px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style38"><strong>Password</strong></td>
                        <td class="auto-style45">
                            <asp:TextBox ID="TextBox2" runat="server" Width="177px" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style38">&nbsp;</td>
                        <td class="auto-style45">
                            <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" Width="62px" BorderStyle="Solid" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong><asp:Label ID="Label1" runat="server" CssClass="auto-style12"></asp:Label>
                                </strong>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                    </tr>
                </table>
            </td>
            <td class="auto-style44">&nbsp;</td>
        </tr>
    </table>
    <p>
        Forget password click <asp:HyperLink ID="HyperLink6" runat="server" CssClass="auto-style9" NavigateUrl="~/Fpassword.aspx" style="text-decoration: none">here</asp:HyperLink>
</p>
    <p>
        For Learner Registration click
        <asp:HyperLink ID="HyperLink5" runat="server" CssClass="auto-style9" NavigateUrl="~/Reg.aspx" style="text-decoration: none">here</asp:HyperLink>
</p>
    <p>
        For Trainer Registration Click
        <asp:HyperLink ID="HyperLink7" runat="server" CssClass="auto-style19" NavigateUrl="~/TrReg.aspx" style="text-decoration: none">here</asp:HyperLink>
</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style37 {
            width: 268px;
        }
        .auto-style38 {
            width: 63px;
        }
        .auto-style39 {
            width: 424px;
        }
        .auto-style40 {
            text-align: center;
            background-color: #3399FF;
        }
        .auto-style41 {
            width: 210px;
            background-color: #3399FF;
        }
        .auto-style42 {
            width: 942px;
            height: 107px;
        }
        .auto-style43 {
            font-size: xx-large;
        }
        .auto-style44 {
            width: 117px;
        }
        .auto-style45 {
            width: 233px;
        }
    </style>
</asp:Content>

