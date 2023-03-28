<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Teacher.aspx.cs" Inherits="work_01_Authentication.Ex_01" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="main" runat="server">
    <h2 class="display-6">Teacher Entry.....</h2>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" BackColor="#CCFFFF" Font-Bold="True" ForeColor="#FF3300" />
    <div class="row">
        <div class="col d-flex justify-content-center">
            <asp:FormView ID="FormView1" CssClass="table table-bordered col-md-9" runat="server" DefaultMode="Insert" DataKeyNames="id" DataSourceID="SqlDataSource1" BackColor="#990033" ForeColor="White" OnItemInserting="FormView1_ItemInserting">
                <EditItemTemplate>
                    id:
                    <asp:Label ID="idLabel1" runat="server" Text='<%# Eval("id") %>' />
                    <br />
                    Name:
                    <asp:TextBox ID="TeaNameTextBox" runat="server" Text='<%# Bind("TeaName") %>' />
                    <br />
                    Email:
                    <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                    <br />
                    ContactNo:
                    <asp:TextBox ID="ContactNoTextBox" runat="server" Text='<%# Bind("ContactNo") %>' />
                    <br />
                    joinDate:
                    <asp:TextBox ID="joinDateTextBox" runat="server" Text='<%# Bind("joinDate") %>' />
                    <br />
                    Department:
                    <asp:TextBox ID="departmentIdTextBox" runat="server" Text='<%# Bind("departmentId") %>' />
                    <br />
                    Salary:
                    <asp:TextBox ID="SalaryTextBox" runat="server" Text='<%# Bind("Salary") %>' />
                    <br />
                    picture:
                    <asp:TextBox ID="pictureTextBox" runat="server" Text='<%# Bind("picture") %>' />
                    <br />
                    Active?:
                    <asp:CheckBox ID="isActiveCheckBox" runat="server" Checked='<%# Bind("isActive") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    Name:
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name is Required!!!" ControlToValidate="TeaNameTextBox" ForeColor="#FFFFCC"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="TeaNameTextBox" CssClass="form-control" runat="server" Text='<%# Bind("TeaName") %>' /> 
                    Email:
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Email RequiredVali!!!" ControlToValidate="EmailTextBox" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="#FFFF99"></asp:RegularExpressionValidator>
                    <asp:TextBox ID="EmailTextBox" CssClass="form-control" runat="server" Text='<%# Bind("Email") %>' />
                    ContactNo:
                    <asp:TextBox ID="ContactNoTextBox" CssClass="form-control" runat="server" Text='<%# Bind("ContactNo") %>' />
                    joinDate:
                    <asp:TextBox ID="joinDateTextBox" CssClass="form-control" TextMode="Date"  runat="server" Text='<%# Bind("joinDate") %>' />
                    Department:
                   <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server" DataSourceID="SqlDataSource1" DataTextField="departmentName" SelectedValue='<%# Bind("DepartmentId") %>' DataValueField="id"></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MadDBCon %>" SelectCommand="SELECT * FROM [department]"></asp:SqlDataSource>
                    Salary:
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="FixSalariRequired!!!" ControlToValidate="SalaryTextBox" MaximumValue="50000" MinimumValue="15000" Type="Double" ForeColor="#FFFF99"></asp:RangeValidator>
                    <asp:TextBox ID="SalaryTextBox" CssClass="form-control" runat="server" Text='<%# Bind("Salary") %>' />
                    picture:
                    <asp:FileUpload ID="fupicture" CssClass="form-control" runat="server" />
                    Active?:
                    <asp:CheckBox ID="isActiveCheckBox" runat="server" Checked='<%# Bind("isActive") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CssClass="btn btn-primary" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CssClass="btn btn-warning" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    id:
                    <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                    <br />
                    TeaName:
                    <asp:Label ID="TeaNameLabel" runat="server" Text='<%# Bind("TeaName") %>' />
                    <br />
                    Email:
                    <asp:Label ID="EmailLabel" runat="server" Text='<%# Bind("Email") %>' />
                    <br />
                    ContactNo:
                    <asp:Label ID="ContactNoLabel" runat="server" Text='<%# Bind("ContactNo") %>' />
                    <br />
                    joinDate:
                    <asp:Label ID="joinDateLabel" runat="server" Text='<%# Bind("joinDate") %>' />
                    <br />
                    departmentId:
                    <asp:Label ID="departmentIdLabel" runat="server" Text='<%# Bind("departmentId") %>' />
                    <br />
                    Salary:
                    <asp:Label ID="SalaryLabel" runat="server" Text='<%# Bind("Salary") %>' />
                    <br />
                    picture:
                    <asp:Label ID="fuPicture" runat="server" Text='<%# Bind("picture") %>' />
                    <br />
                    isActive:
                    <asp:CheckBox ID="isActiveCheckBox" runat="server" Checked='<%# Bind("isActive") %>' Enabled="false" />
                    <br />
                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                </ItemTemplate>
            </asp:FormView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MadDBCon %>" DeleteCommand="DELETE FROM [Teacher] WHERE [id] = @id" InsertCommand="INSERT INTO [Teacher] ([TeaName], [Email], [ContactNo], [joinDate], [departmentId], [Salary], [picture], [isActive]) VALUES (@TeaName, @Email, @ContactNo, @joinDate, @departmentId, @Salary, @picture, @isActive)" SelectCommand="SELECT * FROM [Teacher]" UpdateCommand="UPDATE [Teacher] SET [TeaName] = @TeaName, [Email] = @Email, [ContactNo] = @ContactNo, [joinDate] = @joinDate, [departmentId] = @departmentId, [Salary] = @Salary, [picture] = @picture, [isActive] = @isActive WHERE [id] = @id">
                <DeleteParameters>
                    <asp:Parameter Name="id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="TeaName" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="ContactNo" Type="String" />
                    <asp:Parameter DbType="Date" Name="joinDate" />
                    <asp:Parameter Name="departmentId" Type="Int32" />
                    <asp:Parameter Name="Salary" Type="Decimal" />
                    <asp:Parameter Name="picture" Type="String" />
                    <asp:Parameter Name="isActive" Type="Boolean" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="TeaName" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="ContactNo" Type="String" />
                    <asp:Parameter DbType="Date" Name="joinDate" />
                    <asp:Parameter Name="departmentId" Type="Int32" />
                    <asp:Parameter Name="Salary" Type="Decimal" />
                    <asp:Parameter Name="picture" Type="String" />
                    <asp:Parameter Name="isActive" Type="Boolean" />
                    <asp:Parameter Name="id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </div>


    <div class="row">
        <div class="col d-flex justify-content-center">
            <asp:GridView ID="GridView1" runat="server" CssClass="table table-bordered" AutoGenerateColumns="False" CellPadding="3" DataKeyNames="id" DataSourceID="SqlDataSource" GridLines="Horizontal" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px">
                <AlternatingRowStyle BackColor="#F7F7F7" />
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="TeaName" HeaderText="Name" SortExpression="TeaName" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="ContactNo" HeaderText="ContactNo" SortExpression="ContactNo" />
                    <asp:TemplateField HeaderText="JoinDate" SortExpression="joinDate">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" TextMode="Date" Text='<%# Bind("joinDate","{0:yyyy-MM-dd}") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("joinDate","{0:yyyy-MM-dd}") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="DeptName" SortExpression="departmentId">
                        <EditItemTemplate>
                            <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="departmentName" DataValueField="id"></asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MadDBCon %>" SelectCommand="SELECT * FROM [department]"></asp:SqlDataSource>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("departmentName") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="Salary" HeaderText="Salary" SortExpression="Salary" />
                    <asp:TemplateField HeaderText="Picture" SortExpression="picture">
                        <EditItemTemplate>
                            <asp:FileUpload ID="fuPicture" CssClass="form-control pt-1" runat="server" />
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Image ID="Image1" runat="server" Width="60" Height="60" ImageUrl='<%# Bind("Picture", "~/Images/{0}") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:CheckBoxField DataField="isActive" HeaderText="Active" SortExpression="isActive" />
                    <asp:TemplateField ShowHeader="False">
                        <EditItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-primary fa fa-pencil" CausesValidation="False" CommandName="Edit" Text=""></asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CssClass="btn btn-danger fa fa-trash-o" CausesValidation="False" CommandName="Delete" Text=""></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                <SortedAscendingCellStyle BackColor="#F4F4FD" />
                <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                <SortedDescendingCellStyle BackColor="#D8D8F0" />
                <SortedDescendingHeaderStyle BackColor="#3E3277" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:MadDBCon %>" DeleteCommand="DELETE FROM [Teacher] WHERE [id] = @original_id AND [TeaName] = @original_TeaName AND [Email] = @original_Email AND [ContactNo] = @original_ContactNo AND [joinDate] = @original_joinDate AND [departmentId] = @original_departmentId AND [Salary] = @original_Salary AND (([picture] = @original_picture) OR ([picture] IS NULL AND @original_picture IS NULL)) AND (([isActive] = @original_isActive) OR ([isActive] IS NULL AND @original_isActive IS NULL))" InsertCommand="INSERT INTO [Teacher] ([TeaName], [Email], [ContactNo], [joinDate], [departmentId], [Salary], [picture], [isActive]) VALUES (@TeaName, @Email, @ContactNo, @joinDate, @departmentId, @Salary, @picture, @isActive)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT Te.id,Te.TeaName,Te.Email,Te.ContactNo,Te.joinDate,Te.Salary,Te.picture,Te.isActive,Te.departmentId,d.departmentName FROM [Teacher] Te INNER JOIN department d ON Te.departmentId=d.id" UpdateCommand="UPDATE [Teacher] SET [TeaName] = @TeaName, [Email] = @Email, [ContactNo] = @ContactNo, [joinDate] = @joinDate, [departmentId] = @departmentId, [Salary] = @Salary, [picture] = @picture, [isActive] = @isActive WHERE [id] = @original_id AND [TeaName] = @original_TeaName AND [Email] = @original_Email AND [ContactNo] = @original_ContactNo AND [joinDate] = @original_joinDate AND [departmentId] = @original_departmentId AND [Salary] = @original_Salary AND (([picture] = @original_picture) OR ([picture] IS NULL AND @original_picture IS NULL)) AND (([isActive] = @original_isActive) OR ([isActive] IS NULL AND @original_isActive IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_id" Type="Int32" />
                    <asp:Parameter Name="original_TeaName" Type="String" />
                    <asp:Parameter Name="original_Email" Type="String" />
                    <asp:Parameter Name="original_ContactNo" Type="String" />
                    <asp:Parameter DbType="Date" Name="original_joinDate" />
                    <asp:Parameter Name="original_departmentId" Type="Int32" />
                    <asp:Parameter Name="original_Salary" Type="Decimal" />
                    <asp:Parameter Name="original_picture" Type="String" />
                    <asp:Parameter Name="original_isActive" Type="Boolean" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="TeaName" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="ContactNo" Type="String" />
                    <asp:Parameter DbType="Date" Name="joinDate" />
                    <asp:Parameter Name="departmentId" Type="Int32" />
                    <asp:Parameter Name="Salary" Type="Decimal" />
                    <asp:Parameter Name="picture" Type="String" />
                    <asp:Parameter Name="isActive" Type="Boolean" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="TeaName" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="ContactNo" Type="String" />
                    <asp:Parameter DbType="Date" Name="joinDate" />
                    <asp:Parameter Name="departmentId" Type="Int32" />
                    <asp:Parameter Name="Salary" Type="Decimal" />
                    <asp:Parameter Name="picture" Type="String" />
                    <asp:Parameter Name="isActive" Type="Boolean" />
                    <asp:Parameter Name="original_id" Type="Int32" />
                    <asp:Parameter Name="original_TeaName" Type="String" />
                    <asp:Parameter Name="original_Email" Type="String" />
                    <asp:Parameter Name="original_ContactNo" Type="String" />
                    <asp:Parameter DbType="Date" Name="original_joinDate" />
                    <asp:Parameter Name="original_departmentId" Type="Int32" />
                    <asp:Parameter Name="original_Salary" Type="Decimal" />
                    <asp:Parameter Name="original_picture" Type="String" />
                    <asp:Parameter Name="original_isActive" Type="Boolean" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="server">
</asp:Content>
