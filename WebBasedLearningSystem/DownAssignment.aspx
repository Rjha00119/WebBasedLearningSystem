<%@ Page Title="" Language="C#" MasterPageFile="~/learner.Master" AutoEventWireup="true" CodeBehind="DownAssignment.aspx.cs" Inherits="WebBasedLearningSystem.DownAssignment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style21 {
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style21">
        <strong>Assignment Download</strong></p>
    <p class="auto-style21">
        <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" AutoGenerateColumns="false" OnRowCommand="GridView1_RowCommand" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
           <Columns>
                <asp:TemplateField HeaderText="Course Id">
                    <ItemTemplate>
                        <asp:Label ID="label1" Text='<%# Eval("C_ID") %>' runat="server"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Course Name">
                    <ItemTemplate>
                        <asp:Label ID="label2" Text='<%# Eval("C_NAME") %>' runat="server"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                          <asp:TemplateField HeaderText="Trainer Name">
                    <ItemTemplate>
                        <asp:Label ID="label3" Text='<%# Eval("C_Trainer") %>' runat="server"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Download">
                    <ItemTemplate>
                        <asp:Button ID="Button1" runat="server" Text="Download Now" CommandName="Download" CommandArgument='<%# Eval("ASSIGNMENT") %>' />
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
    </p>
</asp:Content>
