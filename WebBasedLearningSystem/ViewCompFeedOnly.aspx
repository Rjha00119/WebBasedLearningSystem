<%@ Page Title="" Language="C#" MasterPageFile="~/trainer.Master" AutoEventWireup="true" CodeBehind="ViewCompFeedOnly.aspx.cs" Inherits="WebBasedLearningSystem.ViewCompFeedOnly" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" AutoGenerateColumns="false" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
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
            </Columns>
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#0000A9" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#000065" />
    </asp:GridView>
</asp:Content>
