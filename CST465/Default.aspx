<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CST465.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label AssociatedControlID="uxName" runat="server" />
        <asp:Textbox ID="uxName" runat="server" />

        <asp:DropDownList ID="uxUserType" runat="server">
            <asp:ListItem Value="Student" Text="Student" />
            <asp:ListItem Value="Faculty/Staff" Text="Faculty/Staff" />
        </asp:DropDownList>
        
        <asp:Label AssociatedControlID="uxHobby" ID="lblHobby" runat="server" />
        <asp:TextBox ID="uxHobby" runat="server" />

        <asp:Label AssociatedControlID="uxBand" ID="lblBand" runat="server" />
        <asp:TextBox ID="uxBand" runat="server" />

        <asp:Label AssociatedControlID="uxBiography" ID="lblBiography" runat="server" />
        <asp:TextBox TextMode="MultiLine" ID="uxBiography" runat="server" />

        <asp:Table runat="server">
            <asp:TableHeaderRow runat="server">
                <asp:TableHeaderCell>
                    <asp:Label ID="lblCoursePrefix" AssociatedControlID="uxCoursePrefix" Text="Course Prefix" runat="server" />
                </asp:TableHeaderCell>
                <asp:TableHeaderCell>
                    <asp:Label ID="lblCourseNumber" AssociatedControlID="uxCourseNumber" Text="Course Number" runat="server" />
                </asp:TableHeaderCell>
                <asp:TableHeaderCell>
                    <asp:Label ID="lblCourseDescription" AssociatedControlID="uxCourseDescription" Text="Course Description" runat="server" />
                </asp:TableHeaderCell>
            </asp:TableHeaderRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:TextBox ID="uxCoursePrefix" runat="server" />
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="uxCourseNumber" runat="server" />
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="uxCourseDescription" runat="server" />
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>

        <asp:Button Text="Save Profile" ID="uxSubmit" runat="server" />

    </div>
    </form>
</body>
</html>
