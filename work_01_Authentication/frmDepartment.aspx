<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmDepartment.aspx.cs" Inherits="work_01_Authentication.frmDepartment" %>

<%@ Register Src="~/DepartmntUserControl.ascx" TagPrefix="uc1" TagName="DepartmntUserControl" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" runat="server">
    <div class="row container">
        <h1>Department</h1>
        <div class="d-flex justify-content-center w-100">
            <uc1:DepartmntUserControl runat="server" id="DepartmntUserControl" />

            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DataObjectTypeName="work_01_Authentication.Department" DeleteMethod="Delete" InsertMethod="Insert" SelectMethod="Get" TypeName="work_01_Authentication.DepartmentGateway" UpdateMethod="Update"></asp:ObjectDataSource>
        </div>
    </div>


    <div class="row container">
        <div class="-flex justify-content-center w-100">
            <asp:GridView ID="GridView1" CssClass="table table-bordered w-100" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="departmentName" HeaderText="departmentName" SortExpression="departmentName" />
                    <asp:TemplateField ShowHeader="False">
                        <EditItemTemplate>
                            <asp:LinkButton ID="LinkButton1" CssClass="btn btn-success" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="LinkButton2" CssClass="btn btn-warning" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" CssClass="btn btn-primary" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="LinkButton2" CssClass="btn btn-danger" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#330099" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                <SortedAscendingCellStyle BackColor="#FEFCEB" />
                <SortedAscendingHeaderStyle BackColor="#AF0101" />
                <SortedDescendingCellStyle BackColor="#F6F0C0" />
                <SortedDescendingHeaderStyle BackColor="#7E0000" />
            </asp:GridView> 
         
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MadDBCon %>" DeleteCommand="DELETE FROM [department] WHERE [id] = @id" InsertCommand="INSERT INTO [department] ([departmentName]) VALUES (@departmentName)" SelectCommand="SELECT * FROM [department]" UpdateCommand="UPDATE [department] SET [departmentName] = @departmentName WHERE [id] = @id">
                <DeleteParameters>
                    <asp:Parameter Name="id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="departmentName" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="departmentName" Type="String" />
                    <asp:Parameter Name="id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
         
        </div>
    </div>



</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="server">
</asp:Content>
