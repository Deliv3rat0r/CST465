<%@ Page Title="" Language="C#" MasterPageFile="~/App_Master/BaseTemplate.Master" AutoEventWireup="true" CodeBehind="Blog.aspx.cs" Inherits="CST465.Blog" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Blog</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="header" runat="server">
    <h1>Blog</h1>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="nav" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="main" runat="server">
    <asp:SqlDataSource ID="uxBlogSql"
        ConnectionString="<%$ConnectionStrings:DB_CST465 %>"
        SelectCommandType="StoredProcedure"
        SelectCommand="Blog_GetList"
        InsertCommandType="StoredProcedure"
        InsertCommand="Blog_InsertUpdate"
        runat="server"></asp:SqlDataSource>
    <asp:LoginView ID="uxLoginView" runat="server">
        <AnonymousTemplate>
            <asp:Label ID="lblAnonContent" runat="server">You must be signed in to post a blog entry.</asp:Label>
        </AnonymousTemplate>
        <LoggedInTemplate>
            <asp:UpdatePanel ID="uxBlogUpdate" runat="server">
                <ContentTemplate>

                    <asp:FormView ID="uxFormView" DataSourceID="uxBlogSql" DefaultMode="Insert" Width="100%" runat="server">
                        <InsertItemTemplate>
                            <asp:Label ID="lblTitlebox" AssociatedControlID="uxBlogTitleBox" runat="server">Title: </asp:Label>
                            <br />
                            <asp:TextBox ID="uxBlogTitleBox" Text='<%#Bind("Title") %>' runat="server" />
                            <br />
                            <br />
                            <asp:Label ID="lblBlogEntryBox" AssociatedControlID="uxBlogEntryBox" runat="server">Message: </asp:Label>
                            <br />
                            <asp:TextBox ID="uxBlogEntryBox" Width="275px" Height="75px" Text='<%#Bind("Content") %>' TextMode="MultiLine" runat="server" />
                            <br />
                            <asp:Button ID="btnInsertBlog" Text="Submit" CommandName="Insert" runat="server" />
                            <hr  />
                        </InsertItemTemplate>
                    </asp:FormView>

                    <asp:Repeater ID="uxBlogRepeater" DataSourceID="uxBlogSql" runat="server">
                        <ItemTemplate>
                            <article>
                                <h1><%# Eval("Title") %></h1>
                                <p><%# Eval("Content") %></p>
                            </article>
                        </ItemTemplate>
                    </asp:Repeater>

                </ContentTemplate>
            </asp:UpdatePanel>

        </LoggedInTemplate>
    </asp:LoginView>
</asp:Content>

