<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Fpassword.aspx.cs" Inherits="WebBasedLearningSystem.Fpassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style40 {
            font-size: xx-large;
        }
        .auto-style35 {
            text-align: center;
            width: 631px;
            height: 389px;
            font-size: small;
            background-color: #6699FF;
        }
        .auto-style37 {
            height: 389px;
        }
        .auto-style33 {
            width: 199px;
        }
        .auto-style26 {
            font-size: xx-large;
        }
        .auto-style42 {
            width: 347px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style40">
        <strong><em>Forget Password</em></strong></p>
    <table class="auto-style30">
        <tr>
            <td class="auto-style42">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/img/ForgotPassword.png" />
            </td>
                        <td class="auto-style35" rowspan="1">
                            <table cellpadding="3" cellspacing="3" class="auto-style37" border="2">
                                <tr>
                                    <td class="auto-style31" colspan="0"><strong>User Id:</strong></td>
                                    <td class="auto-style33"><strong>
                                        <asp:TextBox ID="TextBox6" runat="server" CssClass="auto-style26" Height="42px" Width="182px"></asp:TextBox>
                                        </strong>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox6" ErrorMessage="User Id should not blank" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                    </td>
                                    <td rowspan="5">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style31" colspan="0"><strong>User Type</strong></td>
                                    <td class="auto-style33"><strong>
                                        <asp:TextBox ID="TextBox7" runat="server" CssClass="auto-style26" Height="40px" Width="180px"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox7" ErrorMessage="User Type should not blank" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                        </strong></td>
                                </tr>
                                <tr>
                                    <td class="auto-style31" colspan="0"><strong>Password:</strong></td>
                                    <td class="auto-style33"><strong>
                                        <asp:TextBox ID="TextBox8" runat="server" CssClass="auto-style26" Height="42px" Width="182px"></asp:TextBox>
                                        </strong>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox8" ErrorMessage="Password should not be empty" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style31" colspan="0"><strong>Confirm Password:</strong></td>
                                    <td class="auto-style33"><strong>
                                        <asp:TextBox ID="TextBox9" runat="server" CssClass="auto-style26" Height="41px" Width="182px"></asp:TextBox>
                                        </strong>
                                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox8" ControlToValidate="TextBox9" ErrorMessage="Password does't match" SetFocusOnError="True"></asp:CompareValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style31" colspan="0"><strong>
                                        <asp:Label ID="Label1" runat="server"></asp:Label>
                                        </strong></td>
                                    <td class="auto-style33">
                                        <asp:Button ID="Button1" runat="server" BorderStyle="Solid" Height="32px" OnClick="Button1_Click1" Text="Submit" Width="82px" />
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
