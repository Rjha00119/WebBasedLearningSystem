<%@ Page Title="" Language="C#" MasterPageFile="~/learner.Master" AutoEventWireup="true" CodeBehind="Enrollment.aspx.cs" Inherits="WebBasedLearningSystem.Enrollment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" OnRowCommand="GridView1_RowCommand" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" >
        <Columns>
            <asp:TemplateField HeaderText="Course ID">
                <ItemTemplate>
                    <asp:Label ID="label1" Text='<%# Eval("C_id") %>' runat="server"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Course Name">
                <ItemTemplate>
                <asp:Label ID="label2" Text='<%# Eval("C_Name") %>' runat="server"></asp:Label>
                    </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Course Duration">
                <ItemTemplate>
                <asp:Label ID="label3" Text='<%# Eval("C_duration") %>' runat="server"></asp:Label>
                    </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Course Fee">
                <ItemTemplate>
                <asp:Label ID="label4" Text='<%# Eval("C_Fee") %>' runat="server"></asp:Label>
                    </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Course Trainer">
                <ItemTemplate>
                <asp:Label ID="label5" Text='<%# Eval("C_Trainer") %>' runat="server"></asp:Label>
                    </ItemTemplate>
            </asp:TemplateField>
            

                 <asp:TemplateField HeaderText="Enroll">
                <ItemTemplate>
                <asp:LinkButton ID="LinkButton1" Text="Enroll" runat="server" CommandName="Enroll" CommandArgument='<%# Eval("c_ID") %>'/> 
                    </ItemTemplate>
            </asp:TemplateField>
                    
                
            
        </Columns>
        
    </asp:GridView>
    <%--<asp:Repeater runat="server" ID="Repeater1">
        <ItemTemplate>
            <table>
                <tr>
                    <td>Course Id</td>
                    <td><%# Eval("c_id") %></td>
                </tr>
                <tr>
                    <td>Course Name</td>
                    <td><%# Eval("c_name") %></td>
                </tr>
                <tr>
                    <td>Course Fee</td>
                    <td><%# Eval("c_fee") %></td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:Repeater>--%>
    </asp:Content>
