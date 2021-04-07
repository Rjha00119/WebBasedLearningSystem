<%@ Page Title="" Language="C#" MasterPageFile="~/trainer.Master" AutoEventWireup="true" CodeBehind="UploadCourseAssign.aspx.cs" Inherits="WebBasedLearningSystem.UploadCourseAssign" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style16 {
            width: 173px;
            font-size: large;
        }
        .auto-style17 {
            width: 69%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style15">
        <strong>Upload Course And assignment</strong></p>
    <table border="2" class="auto-style17">
        <tr>
            <td class="auto-style16"><strong>Course Id :</strong></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" BorderStyle="Solid" Height="29px" MaxLength="10" Width="186px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Course Id should not be blank" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style16"><strong>Course Name:</strong></td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" BorderStyle="Solid" Height="29px" MaxLength="29" Width="186px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Course name should not be blank" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style16"><strong>Course Trainer:</strong></td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" BorderStyle="Solid" Height="29px" MaxLength="48" Width="186px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Course Trainer should not be blank" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style16"><strong>Course Material:</strong></td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" BorderStyle="Solid" Height="29px" Width="212px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style16"><strong>Assignment:</strong></td>
            <td>
                <asp:FileUpload ID="FileUpload2" runat="server" BorderStyle="Solid" Height="29px" Width="212px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style16">
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" BorderStyle="Solid" Height="34px" OnClick="Button1_Click" Text="Submit" Width="105px" />
            </td>
        </tr>
    </table>
</asp:Content>
