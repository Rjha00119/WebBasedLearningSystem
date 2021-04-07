<%@ Page Title="" Language="C#" MasterPageFile="~/learner.Master" AutoEventWireup="true" CodeBehind="ComplaintFeedback.aspx.cs" Inherits="WebBasedLearningSystem.ComplaintFeedback" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style15 {
        font-size: xx-large;
    }
    .auto-style16 {
        font-size: large;
    }
        .auto-style17 {
            width: 47%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style15">
    <strong>
    <asp:Label ID="Label2" runat="server" Text="Complaint &amp; Feedback Form"></asp:Label>
    </strong>
</p>
<p class="auto-style15">
    <strong>
    <asp:Label ID="Label3" runat="server" CssClass="auto-style16" Text="We would Love to hear your thoughts, Concerns or problems with anything So we can improve!!"></asp:Label>
    </strong>
</p>
    <p class="auto-style15">
        <strong>For Complaints , Fill this Form Below:</strong></p>
    <table class="auto-style17">
        <tr>
            <td class="auto-style16"><strong>Query Type:</strong></td>
            <td><strong>
                <asp:DropDownList ID="DropDownList1" runat="server" BackColor="#CCCCCC">
                    <asp:ListItem>Complaint</asp:ListItem>
                    <asp:ListItem>Feedback</asp:ListItem>
                </asp:DropDownList>
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style16"><strong>Describe Complaint/Feedback:</strong></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" AutoCompleteType="DisplayName" BorderColor="Black" BorderStyle="Solid" Height="94px" MaxLength="290" Width="257px" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style16"><strong>Learner id :</strong></td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" BorderColor="#333333" BorderStyle="Solid" Height="27px" MaxLength="20" Width="257px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <br />
                <asp:Label ID="Label4" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" BackColor="#CCCCCC" BorderStyle="Groove" Height="34px" OnClick="Button1_Click" Text="Submit Complaint/Feedback" Width="180px" />
            </td>
        </tr>
    </table>
</asp:Content>
