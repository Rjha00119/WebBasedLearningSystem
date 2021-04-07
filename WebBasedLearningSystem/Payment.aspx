<%@ Page Title="" Language="C#" MasterPageFile="~/learner.Master" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="WebBasedLearningSystem.Payment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style15 {
            width: 181px;
        }
        .auto-style16 {
            width: 36%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Repeater runat="server" ID="repeater1">
        <ItemTemplate>
              <table class="auto-style16">
        <tr>
            <td class="auto-style15">Course Id :
                <asp:Label ID="Label2" runat="server" Text='<%# Eval("C_id") %>'></asp:Label>
            </td>
            <td>Course Name:<asp:Label ID="Label5" runat="server" Text='<%# Eval("C_name") %>'></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style15">Course fee:<asp:Label ID="Label4" runat="server" Text='<%# Eval("C_Fee") %>'></asp:Label>
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="submit" />
            </td>
        </tr>
        <tr>
            <td class="auto-style15">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
        </ItemTemplate>
    </asp:Repeater>
  
</asp:Content>
