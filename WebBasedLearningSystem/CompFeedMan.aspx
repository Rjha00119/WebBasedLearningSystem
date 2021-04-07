<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="CompFeedMan.aspx.cs" Inherits="WebBasedLearningSystem.CompFeedMan" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style15 {
            font-size: xx-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style15">
        <strong>Complaint and feedback Management</strong></p>
    <p class="auto-style15">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" OnRowCommand="GridView1_RowCommand" OnSelectedIndexChanged="Page_Load" OnRowDeleting="GridView1_RowDeleting">
            <Columns>
            <asp:TemplateField HeaderText="CompFeed Id">
                <ItemTemplate>
                    <asp:Label ID="label1" Text='<%# Eval("CompFeed_ID") %>' runat="server"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Learner Id">
                <ItemTemplate>
                <asp:Label ID="label2" Text='<%# Eval("L_ID") %>' runat="server"></asp:Label>
                    </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="CompFeed Msg">
                <ItemTemplate>
                <asp:Label ID="label3" Text='<%# Eval("CompFeed_MSG") %>' runat="server"></asp:Label>
                    </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Type">
                <ItemTemplate>
                <asp:Label ID="label4" Text='<%# Eval("Type") %>' runat="server"></asp:Label>
                    </ItemTemplate>
            </asp:TemplateField>
            
                    
                <asp:TemplateField HeaderText="Delete">
                    <ItemTemplate>
                      <asp:Button ID="Button1" runat="server" Text="Delete"  CommandName="Delete"/>
                        </ItemTemplate>
                    </asp:TemplateField>
            
        </Columns>
        </asp:GridView>
    </p>
</asp:Content>
