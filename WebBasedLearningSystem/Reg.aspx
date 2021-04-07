<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reg.aspx.cs" Inherits="WebBasedLearningSystem.Reg1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.11.0/themes/smoothness/jquery-ui.css"/>
    <script src="http://code.jquery.com/jquery-1.10.2.js"></script>
    <script src="http://code.jquery.com/ui/1.11.0/jquery-ui.js"></script>

    <script type="text/javascript" language="javascript">
        $(function () {
            $("#<%=TextBox2.ClientID %>").datepicker({
                changeMonth: true,
                changeYear: true,
                dateFormat: "dd-mm-yy",
                yearRange: '1950:2028'
            });
        });
    </script>
    <style type="text/css">


        .auto-style1 {
            width: 100%;
            background-color: #00FF99;
            height: 646px;
        }
        .auto-style8 {
            text-align: left;
        }
        .auto-style12 {
            font-size: large;
        }
        .auto-style15 {
            width: 110px;
            height: 34px;
            text-align: left;
        }
        .auto-style16 {
            height: 34px;
            text-align: left;
        }
        .auto-style4 {
            width: 110px;
            text-align: left;
            height: 36px;
        }
        .auto-style5 {
            width: 110px;
            height: 29px;
            text-align: left;
        }
        .auto-style6 {
            height: 29px;
            text-align: left;
        }
        .auto-style17 {
            width: 110px;
            text-align: left;
            height: 23px;
        }
        .auto-style18 {
            height: 23px;
        }
        .auto-style11 {
            font-style: italic;
            font-size: large;
        }
        .auto-style7 {
            height: 71px;
        }
        .auto-style19 {
            text-align: left;
            height: 61px;
        }
        .auto-style20 {
            font-size: xx-large;
        }
        .auto-style21 {
            width: 110px;
            text-align: left;
            height: 46px;
        }
        .auto-style22 {
            text-align: left;
            height: 46px;
        }
        .auto-style23 {
            height: 34px;
        }
        .auto-style24 {
            height: 31px;
        }
        .auto-style25 {
            height: 36px;
        }
        </style>
</head>
<body>
    <form id="form2" runat="server">
        <div>
            <table class="auto-style1" border="3">
                <tr>
                    <td colspan="2" class="auto-style19">
                        <address>
                            <strong><span class="auto-style20">Learner Registration</span><br class="auto-style20" />
                            </strong><span class="auto-style20"><strong>For Registration Please fill this Form :</strong></span></address>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style15">
                        <address>
                            <strong>Learner Name:</strong></address>
                    </td>
                    <td class="auto-style16">
                        <address>
                            <strong>
                            <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style11" Height="30px" MaxLength="90" Width="268px"></asp:TextBox>
                            </strong>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" BorderStyle="Double" ControlToValidate="TextBox1" ErrorMessage="Learner name should not be empty" ForeColor="#990000" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </address>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style15">
                        <strong><em>User Id</em></strong></td>
                    <td class="auto-style16">
                            <strong>
                            <asp:TextBox ID="TextBox8" runat="server" CssClass="auto-style11" Height="30px" MaxLength="12" Width="268px"></asp:TextBox>
                            </strong>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox8" ErrorMessage="User id should not be blank" ForeColor="#990000" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style21">
                        <address>
                            <strong>DOB</strong></address>
                    </td>
                    <td class="auto-style22">
                        <address class="auto-style24">
                            <strong>
                            <asp:TextBox ID="TextBox2" runat="server" OnTextChanged="TextBox2_TextChanged" CssClass="auto-style11" Height="30px" Width="268px"></asp:TextBox>
                            </strong>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Please Enter DOB" ForeColor="#993300" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </address>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <address>
                            <strong>Sex:</strong></address>
                    </td>
                    <td class="auto-style6">
                        <address class="auto-style23">
                            <strong>
                            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style11">
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                            </asp:DropDownList>
                            </strong>
                        </address>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style17">
                        <address>
                            <strong>Mobile :</strong></address>
                    </td>
                    <td class="auto-style18">
                        <address class="auto-style23">
                            <strong>
                            <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style11" Height="30px" MaxLength="10" Width="268px"></asp:TextBox>
                            </strong>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Enter Mobile number" ForeColor="#990000" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </address>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style15">
                        <address>
                            <strong>Email :</strong></address>
                    </td>
                    <td class="auto-style23">
                        <address>
                            <strong>
                            <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style11" Height="30px" MaxLength="90" Width="268px"></asp:TextBox>
                            </strong>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Enter Email address" ForeColor="#990000" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </address>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <address>
                            <strong>Address:</strong></address>
                    </td>
                    <td class="auto-style25">
                        <address>
                            <strong>
                        <asp:TextBox ID="TextBox5" runat="server" CssClass="auto-style11" Height="30px" MaxLength="2000" Width="268px"></asp:TextBox>
                            </strong>
                        </address>
                    </tr>
                <tr>
                    <td class="auto-style4">
                        <strong><em>Password</em></strong></td>
                    <td class="auto-style25">
                        <asp:TextBox ID="TextBox7" runat="server" Height="26px" TextMode="Password" Width="269px"></asp:TextBox>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox7" ControlToValidate="TextBox6" ErrorMessage="Password does not match"></asp:CompareValidator>
                    </tr>
                <tr>
                    <td class="auto-style4">
                        <strong><em>Retype your password :</em></strong></td>
                    <td class="auto-style25">
                        <asp:TextBox ID="TextBox6" runat="server" Height="26px" TextMode="Password" Width="269px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox6" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                    </tr>
                <tr>
                    <td class="auto-style7" colspan="2">
                        <div class="auto-style8">
                            <address>
                                <strong>
                                <asp:Button ID="Button1" runat="server" BorderStyle="Solid" CssClass="auto-style11" OnClick="Button1_Click" Text="Submit" Width="88px" />
                                <asp:Label ID="Label1" runat="server" CssClass="auto-style12"></asp:Label>
                                </strong>
                            </address>
                        </div>
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
    
    
</body>
</html>
