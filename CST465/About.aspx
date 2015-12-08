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
        <img src="img/d7816108868e917606e3c77443b36f0b.jpg" alt="Photo of Robert Wolfgang O'McVanPfannkuchen (Company founder)" title="Robert Wolfgang O'McVanPfannkuchen" class="bobabout" />
        <p>
            This company is the result of the dream that our founder, Robert Wolfgang O'McVanPfannkuchen, had to sell 
            discount computer parts. 40 years later, here we are.
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
