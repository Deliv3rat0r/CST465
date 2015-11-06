<%@ Page Title="" Language="C#" MasterPageFile="~/App_Master/BaseTemplate.Master" AutoEventWireup="true" CodeBehind="UserManagement.aspx.cs" Inherits="CST465.Admin.UserManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="header" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="nav" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="main" runat="server">

    <asp:Label ID="lblRoles" AssociatedControlID="uxRoles" runat="server">Roles: </asp:Label>
    <br />
    <asp:ListBox ID="uxRoles" runat="server">

    </asp:ListBox>

    <br /><br />

    <asp:Label ID="lblRoleName" AssociatedControlID="uxRoleName" runat="server">Role Name:</asp:Label>
    <br />
    <asp:TextBox ID="uxRoleName" runat="server" />

    <br /><br />

    <asp:Button ID="btnAddRole" Text="Add Role" OnClick="btnAddRole_Click" runat="server" />
    <asp:Button ID="btnDeleteRole" Text="Delete Role" OnClick="btnDeleteRole_Click" runat="server" />
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="footer" runat="server">
</asp:Content>
