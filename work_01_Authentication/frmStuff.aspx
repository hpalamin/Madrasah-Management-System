<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmStuff.aspx.cs" Inherits="work_01_Authentication.Stuff" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" runat="server">
    <div class="row">
        <div class="col">
            <h3 class="display-4 text-center">Stuff ListView</h3>
            <asp:ListView ID="ListView1" runat="server"
                SelectMethod="ListView1_GetData"
                InsertMethod="ListView1_InsertItem"
                UpdateMethod="ListView1_UpdateItem"
                ItemPlaceholderID="itemHolder"
                DeleteMethod="ListView1_DeleteItem"
                InsertItemPosition="LastItem"
                DataKeyNames="id"
                ItemType="work_01_Authentication.Models.Stuff" OnItemInserting="ListView1_ItemInserting" OnItemCommand="ListView1_ItemCommand">
                <ItemTemplate>
                    <tr>
                        <td><%# Eval("id") %></td>
                        <td><%# Eval("StufName") %></td>
                        <td><%# Eval("joinDate") %></td>
                        <td><%# Eval("ContactNo") %></td>
                        <td><%# Eval("salary") %></td>
                        <td><%# Eval("Address") %></td>
                        <td>
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("picture","~/Images/{0}") %>' Width="40" />
                        </td>
                        <td>
                            <asp:Button ID="btnEdit" runat="server" Text="Edit" CommandName="Edit" CssClass="btn btn-outline-success fa fa-pencil" CausesValidation="false" />
                            <asp:Button ID="btnDelete" runat="server" Text="Delete" CommandName="Delete" CssClass="btn btn-outline-danger fa fa-trash-o" CausesValidation="false" />
                        </td>
                    </tr>
                </ItemTemplate>
                <EditItemTemplate></EditItemTemplate>
                <InsertItemTemplate>
                    <tr>
                        <td>Not Required</td>
                        <td>
                            <asp:TextBox ID="txtStufName" CssClass="form-control" Text='<%# Bind("stufName") %>' runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="txtJoinDate" TextMode="Date" CssClass="form-control" Text='<%# Bind("JoinDate") %>' runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="TextCotactNo" CssClass="form-control" Text='<%# Bind("ContactNo") %>' runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="TextSalary" CssClass="form-control" Text='<%# Bind("Salary") %>' runat="server"></asp:TextBox>
                        </td><td>
                            <asp:TextBox ID="TextAddress" CssClass="form-control" Text='<%# Bind("Address") %>' runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:FileUpload ID="fuPicture" CssClass="form-control" runat="server" />
                            <asp:HiddenField ID="HiddenField1" Value='<%# Bind("picture") %>' runat="server" />
                        </td>
                       
                        <td>
                            <asp:Button ID="btnInsert" runat="server" Text="Insert" CommandName="Insert" CssClass="btn btn-outline-primary btn-sm" CausesValidation="false" />
                            <asp:Button ID="btnCancel" runat="server" Text="Cancel" CommandName="Cancel" CssClass="btn btn-outline-warning btn-sm" CausesValidation="false" />
                        </td>
                    </tr>
                    
                </InsertItemTemplate>
                <LayoutTemplate>
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th>Stuff ID</th>
                                <th>Stuff Name</th>
                                <th>JoinDate</th>
                                <th>CotactNo</th>
                                <th>Salary</th>
                                <th>Address</th>
                                <th>Picture</th>
                            </tr>
                        </thead>
                        <tbody id="itemHolder" runat="server"></tbody>
                    </table>
                </LayoutTemplate>
            </asp:ListView>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="server">
</asp:Content>
