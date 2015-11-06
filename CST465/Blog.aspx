<%@ Page Title="" Language="C#" MasterPageFile="~/App_Master/BaseTemplate.Master" AutoEventWireup="true" CodeBehind="Blog.aspx.cs" Inherits="CST465.Blog" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="header" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="nav" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="main" runat="server">
    <asp:LoginView ID="uxLoginView" runat="server">
        <AnonymousTemplate>
            <asp:Label ID="lblAnonContent" runat="server">You must be signed in to post a blog entry.</asp:Label>
        </AnonymousTemplate>
        <LoggedInTemplate>
            <asp:Label ID="lblTitlebox" AssociatedControlID="uxBlogTitleBox" runat="server">Title: </asp:Label>
            <asp:TextBox ID="uxBlogTitleBox" runat="server" />
            <br />
            <br />
            <asp:Label ID="lblBlogEntryBox" AssociatedControlID="uxBlogEntryBox" runat="server">Message: </asp:Label>
            <asp:TextBox ID="uxBlogEntryBox" TextMode="MultiLine" runat="server" />
        </LoggedInTemplate>
    </asp:LoginView>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="footer" runat="server">
</asp:Content>
