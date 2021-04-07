<%@ Page Title="" Language="C#" MasterPageFile="~/learner.Master" AutoEventWireup="true" CodeBehind="Notification.aspx.cs" Inherits="WebBasedLearningSystem.Notification1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style16 {
            font-size: xx-large;
        }
        .auto-style17 {
            font-size: x-large;
        }
        .auto-style18 {
            text-decoration: none;
            font-size: medium;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <strong>
    <asp:Label ID="Label2" runat="server" CssClass="auto-style16" Text="Notification"></asp:Label>
    <br />
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:Panel ID="Panel2" runat="server" BorderColor="#CC3300" BorderStyle="Solid" Height="127px" Width="499px" Visible="False">
                <asp:Label ID="Label3" runat="server" CssClass="auto-style17"></asp:Label>
                <br />
                <br />
                <br />
                <br />
                <br />
                <em>
                <asp:HyperLink ID="HyperLink7" runat="server" CssClass="auto-style18" NavigateUrl="~/AllNotification.aspx">View All Notifications</asp:HyperLink>
                </em>
            </asp:Panel>
            <asp:Timer ID="Timer1" runat="server" Interval="1000" OnTick="Timer1_Tick"></asp:Timer>
        </ContentTemplate>
    </asp:UpdatePanel>
    <br />
    </strong>
</asp:Content>
