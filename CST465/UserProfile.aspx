<%@ Page Language="C#" MasterPageFile="~/App_Master/BaseTemplate.Master" AutoEventWireup="true" CodeBehind="UserProfile.aspx.cs" Inherits="CST465.UserProfile" %>



<asp:Content ContentPlaceHolderID="head" ID="head" runat="server">
    <script type="text/javascript">
        function validateFile(sender, args) {
            var allowedExtensions = ['jpg', 'gif', 'png'];
            var fileExtension = args.Value.split(/(\.)/g).pop();
            args.IsValid = false;
            for (var i = 0; i < allowedExtensions.length; i++) {
                if (fileExtension == allowedExtensions[i]) {
                    args.IsValid = true;
                }
            }
        }
    </script>
</asp:Content>
<asp:Content ContentPlaceHolderID="header" ID="header" runat="server">
    <h1>User Profile</h1>
</asp:Content>
<asp:Content ContentPlaceHolderID="nav" ID="nav" runat="server">
    <p>Nav would go here</p>
</asp:Content>
<asp:Content ContentPlaceHolderID="main" ID="main" runat="server">
    <asp:MultiView ID="uxMultiView" ActiveViewIndex="0" runat="server">
        <asp:View ID="View1" runat="server">
            <!--<h1>Edit Profile</h1>-->

            <asp:Label ID="lblFName" AssociatedControlID="uxFName" runat="server">First Name:</asp:Label>
            <asp:TextBox ID="uxFName" runat="server" />
            <asp:RequiredFieldValidator ID="ReqFName" ControlToValidate="uxFName" Display="Dynamic" Text="*" ErrorMessage="First Name Required" runat="server" />

            <br />

            <asp:Label ID="lblLName" AssociatedControlID="uxLName" runat="server">Last Name:</asp:Label>
            <asp:TextBox ID="uxLName" runat="server" />
            <asp:RequiredFieldValidator ID="ReqLName" ControlToValidate="uxLName" Display="Dynamic" Text="*" ErrorMessage="Last Name Required" runat="server" />

            <br />

            <asp:Label ID="lblAge" AssociatedControlID="uxAge" runat="server">Age:</asp:Label>
            <asp:TextBox ID="uxAge" MaxLength="3" runat="server" />
            <asp:RequiredFieldValidator ID="ReqAge" ControlToValidate="uxAge" Display="Dynamic" Text="*" ErrorMessage="Age Required" runat="server" />
            <asp:RangeValidator ID="RangeAge" ControlToValidate="uxAge" MinimumValue="0" MaximumValue="200" Type="Integer" Display="Dynamic" Text="*" ErrorMessage="Age must be between 0 and 200" runat="server" />

            <br />

            <asp:Label ID="lblPhone" AssociatedControlID="uxPhone" runat="server">Phone Number:</asp:Label>
            <asp:TextBox ID="uxPhone" runat="server" />
            <asp:RequiredFieldValidator ID="ReqPhone" ControlToValidate="uxPhone" Display="Dynamic" Text="*" ErrorMessage="Phone Number Required" runat="server" />

            <br />

            <asp:Label ID="lblEmail" AssociatedControlID="uxEmail" runat="server">Email Address:</asp:Label>
            <asp:TextBox ID="uxEmail" runat="server" />
            <asp:RequiredFieldValidator ID="ReqEmail" ControlToValidate="uxEmail" Display="Dynamic" Text="*" ErrorMessage="Email Required" runat="server" />

            <br />

            <asp:Label ID="lblConfirmEmail" AssociatedControlID="uxConfirmEmail" runat="server">Confirm Email:</asp:Label>
            <asp:TextBox ID="uxConfirmEmail" runat="server" />
            <asp:RequiredFieldValidator ID="ReqConfirmEmail" ControlToValidate="uxConfirmEmail" Display="Dynamic" Text="*" ErrorMessage="Confirm Email Required" runat="server" />
            <asp:CompareValidator ID="CompConfirmEmail" ControlToValidate="uxConfirmEmail" ControlToCompare="uxEmail" Display="Dynamic" Text="*" ErrorMessage="Email and Confirm Email must match" runat="server" />

            <br />

            <asp:Label ID="lblStreet" AssociatedControlID="uxStreet" runat="server">Address:</asp:Label>
            <asp:TextBox ID="uxStreet" runat="server" />

            <br />

            <asp:Label ID="lblCity" AssociatedControlID="uxCity" runat="server">City:</asp:Label>
            <asp:TextBox ID="uxCity" runat="server" />

            <br />

            <asp:Label ID="lblState" AssociatedControlID="uxState" runat="server">State:</asp:Label>
            <asp:DropDownList ID="uxState" runat="server">
                <asp:ListItem Value="Oregon" Text="Oregon" />
                <asp:ListItem Value="Washington" Text="Washington" />
            </asp:DropDownList>

            <br />

            <asp:Label ID="lblZip" AssociatedControlID="uxZip" runat="server">Zip:</asp:Label>
            <asp:TextBox ID="uxZip" runat="server" />
            <asp:RegularExpressionValidator ID="RegZip" ControlToValidate="uxZip" ValidationExpression="\d{5}(\-d{4})?" Display="Dynamic" Text="*" ErrorMessage="Must be a Zip Code" runat="server" />

            <br />

            <asp:Label ID="lblProfImg" AssociatedControlID="uxProfImg" runat="server">Profile Image:</asp:Label>
            <asp:FileUpload ID="uxProfImg" runat="server" />
            <asp:CustomValidator ID="CustImg" ControlToValidate="uxProfImg" ClientValidationFunction="validateFile" OnServerValidate="CustImg_ServerValidate" Display="Dynamic" Text="*" ErrorMessage="Image Required" runat="server" />

            <br />

            <asp:Button ID="uxSaveBtn" Text="Save Profile" OnClick="uxSaveBtn_Click" runat="server" />

            <asp:ValidationSummary ID="VSView1" DisplayMode="BulletList" runat="server" />

        </asp:View>

        <asp:View ID="View2" runat="server">
            <!--<h1>View Profile</h1>-->

            <asp:Label ID="lblFnameV2"  runat="server"><strong>First Name: </strong></asp:Label>
            <asp:Literal ID="LitFName" runat="server" />

            <br />

            <asp:Label ID="lblLNameV2"  runat="server"><strong>Last Name: </strong></asp:Label>
            <asp:Literal ID="LitLName" runat="server" />

            <br />

            <asp:Label ID="lblAgeV2"  runat="server"><strong>Age: </strong></asp:Label>
            <asp:Literal ID="LitAge" runat="server" />

            <br />

            <asp:Label ID="lblPhoneV2"  runat="server"><strong>Phone Number: </strong></asp:Label>
            <asp:Literal ID="LitPhone" runat="server" />

            <br />

            <asp:Label ID="lblEmailV2"  runat="server"><strong>Email: </strong></asp:Label>
            <asp:Literal ID="LitEmail" runat="server" />

            <br />

            <asp:Label ID="lblStreetV2"  runat="server"><strong>Street: </strong></asp:Label>
            <asp:Literal ID="LitStreet" runat="server" />

            <br />

            <asp:Label ID="lblCityV2"  runat="server"><strong>City: </strong></asp:Label>
            <asp:Literal ID="LitCity" runat="server" />

            <br />

            <asp:Label ID="lblStateV2" runat="server"><strong>State: </strong></asp:Label>
            <asp:Literal ID="LitState" runat="server" />

            <br />

            <asp:Label ID="lblZipV2"  runat="server"><strong>Zip: </strong></asp:Label>
            <asp:Literal ID="LitZip" runat="server" />

            <br />

            <asp:Label ID="lblImg" AssociatedControlID="uxImage" runat="server" />
            <asp:Image ID="uxImage" runat="server" />

        </asp:View>
    </asp:MultiView>
</asp:Content>
<asp:Content ContentPlaceHolderID="footer" ID="footer" runat="server">
    <p>This is where a footer would go</p>
</asp:Content>


