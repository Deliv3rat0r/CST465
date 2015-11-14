<%@ Page Title="" Language="C#" MasterPageFile="~/App_Master/BaseTemplate.Master" AutoEventWireup="true" CodeBehind="Results.aspx.cs" Inherits="CST465.Results" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Results</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="header" runat="server">
    <h1>Results</h1>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="nav" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="main" runat="server">
    <asp:Repeater ID="uxRepeatQA" runat="server">
        <ItemTemplate>
            <strong><%# Eval("QuestionText") %></strong>
            <br />
            <%# Eval("Answer") %>
            <br /><br />
        </ItemTemplate>
    </asp:Repeater>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="footer" runat="server">
</asp:Content>
