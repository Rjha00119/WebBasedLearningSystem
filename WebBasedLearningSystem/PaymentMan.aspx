<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" Codefile="PaymentMan.aspx.cs" Inherits="WebBasedLearningSystem.PaymentMan" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style15 {
            font-size: xx-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style15">
        <strong>Payment Management:</strong></p>
    <p class="auto-style15">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false"  Height="137px" Width="907px" OnRowDeleting="GridView1_RowDeleting" OnRowCommand="GridView1_RowCommand" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
            <asp:TemplateField HeaderText="Payment Id">
                <ItemTemplate>
                    <asp:Label ID="label1" Text='<%# Eval("P_ID") %>' runat="server"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Mobile ">
                <ItemTemplate>
                <asp:Label ID="label2" Text='<%# Eval("Mobile") %>' runat="server"></asp:Label>
                    </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Email ">
                <ItemTemplate>
                <asp:Label ID="label3" Text='<%# Eval("Email") %>' runat="server"></asp:Label>
                    </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Mode">
                <ItemTemplate>
                <asp:Label ID="label4" Text='<%# Eval("Mode") %>' runat="server"></asp:Label>
                    </ItemTemplate>
            </asp:TemplateField>
            
                 <asp:TemplateField HeaderText="Status">
                <ItemTemplate>
                <asp:Label ID="label5" Text='<%# Eval("Status") %>' runat="server"></asp:Label>
                    </ItemTemplate>
            </asp:TemplateField>
                <asp:TemplateField>
                    <ItemTemplate>
                      <asp:Button ID="Button1" runat="server" Text="Delete"  CommandName="delete"/>
                    </ItemTemplate>
                </asp:TemplateField>
                  </Columns>
        </asp:GridView>
    </p>
</asp:Content>
