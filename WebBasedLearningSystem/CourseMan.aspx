<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="CourseMan.aspx.cs" Inherits="WebBasedLearningSystem.CourseMan" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style15 {
        font-size: xx-large;
    }
        .auto-style16 {
            color: #FF3300;
            background-color: #FFFFFF;
        }
        .auto-style17 {
            width: 176px;
        }
        .auto-style18 {
            width: 88px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style15">
        <strong><em>Course Mangement</em></strong></p>
    <p>
       <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="C_ID" DataSourceID="SqlDataSource7" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnDataBinding="GridView1_SelectedIndexChanged" OnDataBound="GridView1_SelectedIndexChanged" ShowHeaderWhenEmpty="True">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="C_ID" HeaderText="C_ID" ReadOnly="True" SortExpression="C_ID" InsertVisible="False" />
                <asp:BoundField DataField="C_NAME" HeaderText="C_NAME" SortExpression="C_NAME" />
                <asp:BoundField DataField="C_DURATION" HeaderText="C_DURATION" SortExpression="C_DURATION" />
                <asp:BoundField DataField="C_FEE" HeaderText="C_FEE" SortExpression="C_FEE" />
                <asp:BoundField DataField="C_TRAINER" HeaderText="C_TRAINER" SortExpression="C_TRAINER" />
                <asp:BoundField DataField="Details" HeaderText="Details" SortExpression="Details" />
            </Columns>
            <FooterStyle BorderStyle="Dashed" HorizontalAlign="Center" VerticalAlign="Middle" Wrap="True" />
        </asp:GridView> 
        <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:WebBasedLearningSystemConnectionString2 %>" DeleteCommand="DELETE FROM [COURSE] WHERE [C_ID] = @C_ID" InsertCommand="INSERT INTO [COURSE] ([C_NAME], [C_DURATION], [C_FEE], [C_TRAINER], [Details]) VALUES (@C_NAME, @C_DURATION, @C_FEE, @C_TRAINER, @Details)" SelectCommand="SELECT * FROM [COURSE]" UpdateCommand="UPDATE [COURSE] SET [C_NAME] = @C_NAME, [C_DURATION] = @C_DURATION, [C_FEE] = @C_FEE, [C_TRAINER] = @C_TRAINER, [Details] = @Details WHERE [C_ID] = @C_ID" OnSelecting="SqlDataSource7_Selecting">
            <DeleteParameters>
                <asp:Parameter Name="C_ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="C_NAME" Type="String" />
                <asp:Parameter Name="C_DURATION" Type="String" />
                <asp:Parameter Name="C_FEE" Type="String" />
                <asp:Parameter Name="C_TRAINER" Type="String" />
                <asp:Parameter Name="Details" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="C_NAME" Type="String" />
                <asp:Parameter Name="C_DURATION" Type="String" />
                <asp:Parameter Name="C_FEE" Type="String" />
                <asp:Parameter Name="C_TRAINER" Type="String" />
                <asp:Parameter Name="Details" Type="String" />
                <asp:Parameter Name="C_ID" Type="Int32" />
            </UpdateParameters>

        </asp:SqlDataSource>
</p>
    <p>
        &nbsp;</p>
<p class="auto-style15">
        <strong><em><span class="auto-style16">Add&nbsp; course :</span><table class="auto-style10">
            <tr>
                <td class="auto-style18">C_NAME</td>
                <td class="auto-style17"><strong><em>
                    <asp:TextBox ID="TextBox2" runat="server" Height="30px" Width="280px"></asp:TextBox>
                    </em></strong></td>
            </tr>
            <tr>
                <td class="auto-style18">C_DURATION</td>
                <td class="auto-style17"><strong><em>
                    <asp:TextBox ID="TextBox3" runat="server" Height="30px" Width="280px"></asp:TextBox>
                    </em></strong></td>
            </tr>
            <tr>
                <td class="auto-style18">C_FEE</td>
                <td class="auto-style17"><strong><em>
                    <asp:TextBox ID="TextBox4" runat="server" Height="30px" Width="280px"></asp:TextBox>
                    </em></strong></td>
            </tr>
            <tr>
                <td class="auto-style18">C_TRAINER</td>
                <td class="auto-style17"><strong><em>
                    <asp:TextBox ID="TextBox5" runat="server" Height="30px" Width="280px"></asp:TextBox>
                    </em></strong></td>
            </tr>
            <tr>
                <td class="auto-style18">Details</td>
                <td class="auto-style17">
        <strong><em>
                    <asp:TextBox ID="TextBox6" runat="server" Height="30px" Width="280px" MaxLength="1000" TextMode="MultiLine"></asp:TextBox>
                    </em></strong></td>
            </tr>
            <tr>
                <td colspan="2">
        <strong><em>
                    <asp:Button ID="Button1" runat="server" BackColor="#CC3300" BorderStyle="Solid" OnClick="Button1_Click" Text="ADD" Width="98px" Height="33px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server" ForeColor="#663300"></asp:Label>
        </em></strong>
                </td>
            </tr>
        </table>
        </em></strong></p>
</asp:Content>
