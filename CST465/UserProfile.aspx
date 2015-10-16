﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserProfile.aspx.cs" Inherits="CST465.UserProfile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:MultiView ID="uxMultiView" ActiveViewIndex="0" runat="server" >
            <asp:View ID="View1" runat="server">

                <asp:Label ID="lblFName" AssociatedControlID="uxFName" runat="server">First Name:</asp:Label>
                <asp:TextBox ID="uxFName" runat="server" />
                <asp:RequiredFieldValidator ID="ReqFName" ControlToValidate="uxFName" Display="Dynamic" Text="*" ErrorMessage="First Name Required" runat="server" />

                <asp:Label ID="lblLName" AssociatedControlID="uxLName" runat="server">Last Name:</asp:Label>
                <asp:TextBox ID="uxLName" runat="server" />
                <asp:RequiredFieldValidator ID="ReqLName" ControlToValidate="uxLName" Display="Dynamic" Text="*" ErrorMessage="Last Name Required" runat="server" />

                <asp:Label ID="lblAge" AssociatedControlID="uxAge" runat="server">Age:</asp:Label>
                <asp:TextBox ID="uxAge" MaxLength="3"  runat="server" />
                <asp:RequiredFieldValidator ID="ReqAge" ControlToValidate="uxAge" Display="Dynamic" Text="*" ErrorMessage="Age Required" runat="server" />
                <asp:RangeValidator ID="RangeAge" ControlToValidate="uxAge" MinimumValue="0" MaximumValue="200" Type="Integer" Display="Dynamic" Text="*" ErrorMessage="Age must be between 0 and 200" runat="server" />

                <asp:Label ID="lblPhone" AssociatedControlID="uxPhone" runat="server">Phone Number:</asp:Label>
                <asp:TextBox ID="uxPhone" runat="server" />
                <asp:RequiredFieldValidator ID="ReqPhone" ControlToValidate="uxPhone" Display="Dynamic" Text="*" ErrorMessage="Phone Number Required" runat="server" />


                <asp:Label ID="lblEmail" AssociatedControlID="uxEmail" runat="server">Email Address:</asp:Label>
                <asp:TextBox ID="uxEmail" runat="server" />
                <asp:RequiredFieldValidator ID="ReqEmail" ControlToValidate="uxEmail" Display="Dynamic" Text="*" ErrorMessage="Email Required" runat="server" />

                <asp:Label ID="lblConfirmEmail" AssociatedControlID="uxConfirmEmail" runat="server">Confirm Email:</asp:Label>
                <asp:TextBox ID="uxConfirmEmail" runat="server" />
                <asp:RequiredFieldValidator ID="ReqConfirmEmail" ControlToValidate="uxConfirmEmail" Display="Dynamic" Text="*" ErrorMessage="Confirm Email Required" runat="server" />
                <asp:CompareValidator ID="CompConfirmEmail" ControlToValidate="uxConfirmEmail" ControlToCompare="uxEmail" Display="Dynamic" Text="*" ErrorMessage="Email and Confirm Email must match" runat="server" />

                <asp:Label ID="lblStreet" AssociatedControlID="uxStreet" runat="server">Address:</asp:Label>
                <asp:TextBox ID="uxStreet" runat="server" />

                <asp:Label ID="lblCity" AssociatedControlID="uxCity" runat="server">City:</asp:Label>
                <asp:TextBox ID="uxCity" runat="server" />

                <asp:Label ID="lblState" AssociatedControlID="uxState" runat="server">State:</asp:Label>
                <asp:DropDownList ID="uxState" runat="server">
                    <asp:ListItem Value="Oregon" Text="Oregon" />
                    <asp:ListItem Value="Washington" Text="Washington" />
                </asp:DropDownList>

                <asp:Label ID="lblZip" AssociatedControlID="uxZip" runat="server">Zip:</asp:Label>
                <asp:TextBox ID="uxZip" runat="server" />
                <asp:RegularExpressionValidator ID="RegZip" ControlToValidate="uxZip" ValidationExpression="\d{5}(\-d{4})?" Display="Dynamic" Text="*" ErrorMessage="Must be a Zip Code" runat="server" />

                <asp:Label ID="lblProfImg" AssociatedControlID="uxProfImg" runat="server">Profile Image:</asp:Label>
                <asp:FileUpload ID="uxProfImg" runat="server" />

                <asp:Button ID="uxSaveBtn" Text="Save Profile" runat="server" />

                <asp:ValidationSummary ID="VSView1" DisplayMode="BulletList"  runat="server" />
            
            </asp:View>

            <asp:View ID="View2" runat="server">

            </asp:View>
        </asp:MultiView>
    </div>
    </form>
</body>
</html>
