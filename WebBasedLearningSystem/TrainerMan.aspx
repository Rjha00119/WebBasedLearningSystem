<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="TrainerMan.aspx.cs" Inherits="WebBasedLearningSystem.TrainerMan" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style15 {
        font-size: xx-large;
        color: #CC3300;
    }
        .auto-style16 {
            color: #000000;
        }
        .auto-style17 {
            font-size: xx-large;
            color: #000000;
        }
        .auto-style18 {
            color: #000000;
            font-size: large;
        }
        .auto-style19 {
            font-size: xx-large;
            color: #000000;
            text-decoration: none;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style19">
        <strong>Trainer Management:</strong></p>
    <p class="auto-style15">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false"  Height="100%" Width="100%" OnRowDeleting="GridView1_RowDeleting"  OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CssClass="auto-style18" OnRowCommand="GridView1_RowCommand">
            <Columns>
            <asp:TemplateField HeaderText="Trainer Id">
                <ItemTemplate>
                    <asp:Label ID="label1" Text='<%# Eval("T_ID") %>' runat="server"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Trainer Name ">
                <ItemTemplate>
                <asp:Label ID="label2" Text='<%# Eval("T_NAME") %>' runat="server"></asp:Label>
                    </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="User Id ">
                <ItemTemplate>
                <asp:Label ID="label3" Text='<%# Eval("UserId") %>' runat="server"></asp:Label>
                    </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Age">
                <ItemTemplate>
                <asp:Label ID="label4" Text='<%# Eval("Age") %>' runat="server"></asp:Label>
                    </ItemTemplate>
            </asp:TemplateField>
            
                 <asp:TemplateField HeaderText="Sex">
                <ItemTemplate>
                <asp:Label ID="label5" Text='<%# Eval("Sex") %>' runat="server"></asp:Label>
                    </ItemTemplate>
            </asp:TemplateField>
                 <asp:TemplateField HeaderText="Mobile">
                <ItemTemplate>
                <asp:Label ID="label6" Text='<%# Eval("Mobile") %>' runat="server"></asp:Label>
                    </ItemTemplate>
            </asp:TemplateField>
                 <asp:TemplateField HeaderText="Email">
                <ItemTemplate>
                <asp:Label ID="label7" Text='<%# Eval("EMAIL") %>' runat="server"></asp:Label>
                    </ItemTemplate>
            </asp:TemplateField>
                 <asp:TemplateField HeaderText="Qualification">
                <ItemTemplate>
                <asp:Label ID="label8" Text='<%# Eval("QUALIFICATION") %>' runat="server"></asp:Label>
                    </ItemTemplate>
            </asp:TemplateField >
                          <asp:TemplateField HeaderText="Experience">
                <ItemTemplate>
                <asp:Label ID="label9" Text='<%# Eval("EXPERIENCE") %>' runat="server"></asp:Label>
                    </ItemTemplate>
            </asp:TemplateField >
                          <asp:TemplateField HeaderText="Address">
                <ItemTemplate>
                <asp:Label ID="label10" Text='<%# Eval("Address") %>' runat="server"></asp:Label>
                    </ItemTemplate>
            </asp:TemplateField >
                <asp:TemplateField>
                    <ItemTemplate>
                     <asp:Button ID="Button1" runat="server" Text="Delete"  CommandName="delete"/>
                    </ItemTemplate>
                </asp:TemplateField>
                  </Columns>
        </asp:GridView>
</p>
</asp:Content>
