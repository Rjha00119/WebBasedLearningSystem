<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="HelpSupportMan.aspx.cs" Inherits="WebBasedLearningSystem.HelpSupportMan" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style18 {
            font-size: xx-large;
        }
        .auto-style19 {
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style18">
        <strong><em>Help &amp; Support Management(Contact us section) :</em></strong></p>
    <p class="auto-style18">
        <asp:GridView ID="GridView1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" CssClass="auto-style19" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AutoGenerateColumns="false">
            <Columns>
                <asp:TemplateField HeaderText="Name">
                <ItemTemplate>
                    <asp:Label ID="label1" Text='<%# Eval("Name") %>' runat="server"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

                <asp:TemplateField HeaderText="Email">
                <ItemTemplate>
                    <asp:Label ID="label2" Text='<%# Eval("Email") %>' runat="server"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

                <asp:TemplateField HeaderText="Contact Number">
                <ItemTemplate>
                    <asp:Label ID="label3" Text='<%# Eval("Mobile") %>' runat="server"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

                <asp:TemplateField HeaderText="Messege/Query">
                <ItemTemplate>
                    <asp:Label ID="label4" Text='<%# Eval("Query") %>' runat="server"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
    </p>
    <p>
        &nbsp;</p>
</asp:Content>
