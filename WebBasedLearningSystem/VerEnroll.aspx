<%@ Page Title="" Language="C#" MasterPageFile="~/learner.Master" AutoEventWireup="true" CodeBehind="VerEnroll.aspx.cs" Inherits="WebBasedLearningSystem.VerEnroll" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style15 {
            font-size: xx-large;
        }
        .auto-style16 {
            width: 145px;
        }
        .auto-style17 {
            width: 55%;
        }
        .auto-style18 {
            width: 55%;
            font-size: medium;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style17">
        <strong>Enrollment:</strong></p>
    <p class="auto-style18">
        <asp:Repeater runat="server" ID="repeater1">
        <ItemTemplate>
              <table class="auto-style18">
        <tr>
            <td>Course Id :<asp:Label ID="Label2" runat="server" Text='<%# Eval("C_id") %>'></asp:Label>
            </td>
            <br/>
            <br/>
            <td>Course Name:<asp:Label ID="Label3" runat="server" Text='<%# Eval("C_name") %>'></asp:Label>
            </td>
            <br/>
            <br/>
             <td>Course fee:<asp:Label ID="Label4" runat="server" Text='<%# Eval("C_Fee") %>'></asp:Label>
            </td>
            <br/>
            <br/>
        
        </tr>
    
    </table>
        </ItemTemplate>
    </asp:Repeater>
  
    </p>
    <table class="auto-style18">
        <tr>
            <td class="auto-style16">Course Id :</td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server" BorderStyle="Solid" Height="23px" MaxLength="50" Width="139px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style16">Course Fee:</td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server" BorderStyle="Solid" Height="23px" MaxLength="50" Width="139px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style16">Learner Name :</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" BorderStyle="Solid" Height="23px" MaxLength="50" Width="139px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Learner Name should not be blank" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style16">Mobile No:</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" BorderStyle="Solid" Height="23px" MaxLength="10" Width="139px" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Mobile no should not be blank" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style16">Email:</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" BorderStyle="Solid" Height="23px" MaxLength="50" Width="139px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Email Id should not be blank" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style16">Address:</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" BorderStyle="Solid" Height="23px" MaxLength="200" TextMode="MultiLine" Width="139px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style16">Payment Type :</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Height="29px" Width="96px">
                    <asp:ListItem>Online</asp:ListItem>
                    <asp:ListItem>Free</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style16">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" BorderStyle="Solid" Height="28px" OnClick="Button1_Click" Text="Enroll" Width="105px" />
                <asp:Label ID="Label5" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
