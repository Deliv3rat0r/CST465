<%@ Page Title="" Language="C#" MasterPageFile="~/App_Master/BaseTemplate.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CST465.Default1" %>
<%@ Register Src="~/FeaturedProducts.ascx" TagPrefix="UCP" TagName="FeaturedProducts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Dealimiter</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="header" runat="server">
    <h1>Dealimiter</h1>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="nav" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="main" runat="server">

    <UCP:FeaturedProducts ID="uxFeaturedUserControl" runat="server" />

</asp:Content>

