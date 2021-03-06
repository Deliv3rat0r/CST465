﻿<%@ Page Title="" Language="C#" MasterPageFile="~/App_Master/BaseTemplate.Master" AutoEventWireup="true" CodeBehind="ManageProducts.aspx.cs" Inherits="CST465.Admin.ManageProducts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Manage Products</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="header" runat="server">
    <h1>Manage Products</h1>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="nav" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="main" runat="server">
    
    <asp:SqlDataSource ID="uxProductSql"
        ConnectionString="<%$ConnectionStrings:DB_CST465 %>"
        SelectCommandType="StoredProcedure"
        SelectCommand="Product_GetList"
        InsertCommandType="StoredProcedure"
        InsertCommand="Product_InsertUpdate"
        UpdateCommandType="StoredProcedure"
        UpdateCommand="Product_InsertUpdate"
        runat="server"></asp:SqlDataSource>

    <asp:UpdatePanel ID="uxProductUpdate" runat="server">
        <ContentTemplate>
            <asp:FormView ID="uxFormView" Width="100%" DataSourceID="uxProductSql" DefaultMode="Insert" runat="server">
                <InsertItemTemplate>

                    <asp:Label ID="lblProductName" AssociatedControlID="uxProductName" runat="server">Product Name:</asp:Label>
                    <br />
                    <asp:TextBox ID="uxProductName" Text='<%#Bind("Name") %>' runat="server" />
                    <br />
                    <br />
                    <asp:Label ID="lblProductDescription" AssociatedControlID="uxProductDescription" runat="server">Product Description:</asp:Label>
                    <br />
                    <asp:TextBox ID="uxProductDescription" TextMode="MultiLine" Width="275px" Height="75px" Text='<%#Bind("Description") %>' runat="server" />
                    <br />
                    <br />
                    <asp:Label ID="lblProductPrice" AssociatedControlID="uxProductPrice" runat="server">Product Price:</asp:Label>
                    <br />
                    <asp:TextBox ID="uxProductPrice" Text='<%#Bind("Price") %>' runat="server" />
                    <br />
                    <br />
                    <asp:Label ID="lblProductFeatured" AssociatedControlID="uxProductFeatured" runat="server">Featured Product:</asp:Label>
                    <br />
                    <asp:CheckBox ID="uxProductFeatured" Checked='<%#Bind("Featured") %>' runat="server" />
                    <br />
                    <asp:Button ID="btnInsertProduct" Text="Submit" CommandName="Insert" runat="server" />
                    <hr />

                </InsertItemTemplate>
            </asp:FormView>


            <asp:GridView ID="uxGridView" AutoGenerateColumns="false" Width="100%" DataSourceID="uxProductSql"
                DataKeyNames="ID" AllowSorting="true" AllowPaging="true" PageSize="10" CssClass="datagrid" HeaderStyle-CssClass="gridview_header" runat="server">
                <Columns>
                    <%--<asp:BoundField DataField="ID" HeaderText="ID" />--%>
                    <asp:BoundField DataField="Name" SortExpression="Name" HeaderStyle-CssClass="gridview_header" HeaderText="Name" />
                    <asp:BoundField DataField="Description" SortExpression="Description" HeaderText="Description" />
                    <asp:BoundField DataField="Price" SortExpression="Price" HeaderText="Price" />
                    <asp:BoundField DataField="Featured" SortExpression="Featured" HeaderText="Featured" />

                    <%--<asp:TemplateField>
                        <ItemTemplate>
                            <span style="font-weight: bold; color: green;">
                                <%#Eval("ID") %>
                                <%#Eval("Name") %>
                                <%#Eval("Description") %>
                                <%#Eval("Price") %>
                                <%#Eval("Featured") %>
                            </span>
                        </ItemTemplate>
                    </asp:TemplateField>--%>

                    <asp:CommandField ItemStyle-CssClass="gridview_edit" ShowEditButton="true" />

                </Columns>
            </asp:GridView>

        </ContentTemplate>
    </asp:UpdatePanel>

</asp:Content>
