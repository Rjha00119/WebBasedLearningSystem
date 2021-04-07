<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="TrReg.aspx.cs" Inherits="WebBasedLearningSystem.TrReg" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style37 {
            font-size: xx-large;
        }
        .auto-style27 {
            background-color: #FFFFFF;
        }
        .auto-style28 {
            text-align: center;
            background-color: #FFFFFF;
            font-size: xx-large;
        }
        .auto-style26 {
            text-align: center;
            background-color: #3399FF;
            font-size: xx-large;
        }
        
        .auto-style15 {
            width: 154px;
            height: 34px;
            text-align: left;
            font-size: medium;
        }
        .auto-style29 {
            font-size: medium;
        }
        .auto-style31 {
            width: 314px;
            height: 27px;
        }
        .auto-style30 {
            width: 231px;
            background-color: #3366FF;
            font-size: medium;
        }
                
        .auto-style12 {
            font-size: large;
        }
        .auto-style32 {
            background-color: #3366FF;
            width: 314px;
        }
        .auto-style5 {
            width: 154px;
            height: 29px;
            text-align: left;
            font-size: medium;
        }
        .auto-style33 {
            height: 29px;
            text-align: left;
            width: 314px;
        }
        .auto-style11 {
            font-style: italic;
            font-size: large;
        }
        .auto-style6 {
            height: 29px;
            text-align: left;
        }
        .auto-style17 {
            width: 154px;
            text-align: left;
            height: 23px;
            font-size: medium;
        }
        .auto-style35 {
            background-color: #3366FF;
            width: 314px;
            height: 34px;
        }
        .auto-style36 {
            width: 334px;
            background-color: #3366FF;
            height: 34px;
        }
        .auto-style4 {
            width: 154px;
            text-align: left;
            height: 36px;
            font-size: medium;
        }
        .auto-style34 {
            font-size: x-large;
            background-color: #3366FF;
            width: 314px;
        }
        .auto-style7 {
            height: 71px;
        }
        .auto-style8 {
            text-align: left;
        }
        .auto-style38 {
            width: 154px;
            font-size: medium;
            background-color: #3366FF;
        }
        .auto-style39 {
            font-size: large;
            color: #000000;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--<form id="form2" runat="server">--%>
        
        <div>
            <table class="auto-style1" border="3">
                <tr>
                    <td colspan="3" class="auto-style19">
                        <address>
                            <span class="auto-style37"><strong><span class="auto-style27">Trainer </span></strong></span><span class="auto-style20"><span class="auto-style37"><strong><span class="auto-style27">Registration</span></strong></span></span><strong><br class="auto-style28" /></strong><span class="auto-style26"><strong><span class="auto-style27">For Registration Please fill this Form :</span></strong></span></address>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style15">
                        <address>
                            <span class="auto-style39"><strong><em>Trainer</em></strong></span><strong><span class="auto-style39"><em> Name:</em></span></strong></address>
                    </td>
                    <td class="auto-style31">
                        <address>
                            <asp:TextBox ID="TextBox11" runat="server" Height="29px" Width="270px"></asp:TextBox>
                        </address>
                    </td>
                    <td class="auto-style16">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" BorderStyle="Double" ControlToValidate="TextBox11" ErrorMessage="Trainer name should not be empty" ForeColor="#990000" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style15"><strong><em>User Id</em></strong></td>
                    <td class="auto-style31">
                        <asp:TextBox ID="TextBox12" runat="server" Height="30px" Width="270px"></asp:TextBox>
                    </td>
                    <td class="auto-style16">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox12" ErrorMessage="User id should not be blank" ForeColor="#990000" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style38">
                        <address class="auto-style12">
                            <strong>Age :</strong></address>
                    </td>
                    <td class="auto-style32">
                        <address class="auto-style24">
                            <asp:TextBox ID="TextBox13" runat="server" Height="29px" Width="270px"></asp:TextBox>
                        </address>
                    </td>
                    <td class="auto-style22">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox13" ErrorMessage="Enter the Age" ForeColor="#990000" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <address class="auto-style39">
                            <strong><em>Sex:</em></strong></address>
                    </td>
                    <td class="auto-style33">
                        <address class="auto-style23">
                            <strong>
                            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style11">
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                            </asp:DropDownList>
                            </strong>
                        </address>
                    </td>
                    <td class="auto-style6">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style17">
                        <address class="auto-style39">
                            <strong><em>Mobile :</em></strong></address>
                    </td>
                    <td class="auto-style32">
                        <address class="auto-style23">
                            <asp:TextBox ID="TextBox14" runat="server" Height="29px" Width="270px" MaxLength="10"></asp:TextBox>
                        </address>
                    </td>
                    <td class="auto-style18">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox14" ErrorMessage="Enter Mobile number" ForeColor="#990000" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style15">
                        <address class="auto-style39">
                            <strong><em>Email :</em></strong></address>
                    </td>
                    <td class="auto-style35">
                        <address>
                            <asp:TextBox ID="TextBox15" runat="server" Height="29px" Width="270px"></asp:TextBox>
                        </address>
                    </td>
                    <td class="auto-style36">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox15" ErrorMessage="Enter Email address" ForeColor="#990000" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style15"><strong><em>Qualification :</em></strong></td>
                    <td class="auto-style32">
                        <asp:TextBox ID="TextBox16" runat="server" Height="30px" Width="269px"></asp:TextBox>
                    </td>
                    <td class="auto-style23">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox16" ErrorMessage="RequiredFieldValidator" ForeColor="#990000" SetFocusOnError="True">Enter the qualification</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style15"><strong><em>Experience(in years) :</em></strong></td>
                    <td class="auto-style32">
                        <asp:TextBox ID="TextBox17" runat="server" Height="30px" Width="270px"></asp:TextBox>
                    </td>
                    <td class="auto-style23">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox17" ErrorMessage="Enter the experience" ForeColor="#990000" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <address class="auto-style39">
                            <strong><em>Address:</em></strong></address>
                    </td>
                    <td class="auto-style34">
                        <address>
                            <asp:TextBox ID="TextBox18" runat="server" Height="31px" Width="268px"></asp:TextBox>
                        </address>
                    
                    <td class="auto-style25">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TextBox18" CssClass="auto-style12" ErrorMessage="Enter the address" ForeColor="#990000" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </tr>
                <tr>
                    <td class="auto-style4"><strong><em>Password</em></strong></td>
                    <td class="auto-style34">
                        <asp:TextBox ID="TextBox19" runat="server" Height="32px" Width="269px"></asp:TextBox>
                    
                    <td class="auto-style25">
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox20" ControlToValidate="TextBox19" ErrorMessage="Password does not match" CssClass="auto-style12" ForeColor="#990000"></asp:CompareValidator>
                    </tr>
                <tr>
                    <td class="auto-style4"><strong><em>Retype your password :</em></strong></td>
                    <td class="auto-style34">
                        <asp:TextBox ID="TextBox20" runat="server" Height="30px" Width="270px"></asp:TextBox>
                    
                    <td class="auto-style25">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox20" ErrorMessage="Enter Your password" ForeColor="#990000" SetFocusOnError="True" CssClass="auto-style12"></asp:RequiredFieldValidator>
                    </tr>
                <tr>
                    <td class="auto-style7" colspan="3">
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
    
</asp:Content>
