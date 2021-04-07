<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Signout.aspx.cs" Inherits="WebBasedLearningSystem.Signout" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style26 {
            font-size: xx-large;
        }
        .auto-style27 {
            color: #CC3300;
        }
        .auto-style28 {
            text-decoration: none;
            font-size: large;
        }
        .auto-style29 {
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style26">
        <em>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style27">&nbsp;You have Sucessfully Logout.</span></em></p>
    <p>
        <span class="auto-style29">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; For Login click </span>
        <asp:HyperLink ID="HyperLink6" runat="server" CssClass="auto-style28" NavigateUrl="~/home.aspx">Here</asp:HyperLink>
    </p>
</asp:Content>
