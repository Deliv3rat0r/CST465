<%@ Page Title="" Language="C#" MasterPageFile="~/App_Master/BaseTemplate.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="CST465.About" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>About</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="header" runat="server">
    <h1>About</h1>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="nav" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="main" runat="server">
    <section class="col col_75">
        <h2>About Us</h2>
        <p>
            At our company we're really big fans of placeholder text. This very section is an example of how much we love placeholder text,
             because this section is, in fact, placeholder text.
        </p>
    </section>

    <section class="col col_25 contact">
        <h3>Our Location</h3>
        <p>3201 Campus Dr, Klamath Falls, OR 97601</p>
        <p>Located at the home of the owls.</p>
    </section>
    <div style="clear:both;"></div>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="footer" runat="server">
</asp:Content>
