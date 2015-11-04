<%@ Page Language="C#" MasterPageFile="~/App_Master/BaseTemplate.Master" AutoEventWireup="true" CodeBehind="UserProfile.aspx.cs" Inherits="CST465.UserProfile" %>



<asp:Content ContentPlaceHolderID="head" ID="head" runat="server">
    <title>User Profile</title>
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

            <asp:Label ID="lblFName" CssClass="lblBlock" AssociatedControlID="uxFName" runat="server">First Name:</asp:Label>
            <asp:TextBox ID="uxFName" Width="200px" runat="server" />
            <asp:RequiredFieldValidator ID="ReqFName" ControlToValidate="uxFName" Display="Dynamic" Text="*" ErrorMessage="First Name Required" runat="server" />

            <br />

            <asp:Label ID="lblLName" CssClass="lblBlock" AssociatedControlID="uxLName" runat="server">Last Name:</asp:Label>
            <asp:TextBox ID="uxLName" Width="200px" runat="server" />
            <asp:RequiredFieldValidator ID="ReqLName" ControlToValidate="uxLName" Display="Dynamic" Text="*" ErrorMessage="Last Name Required" runat="server" />

            <br />

            <asp:Label ID="lblAge" CssClass="lblBlock" AssociatedControlID="uxAge" runat="server">Age:</asp:Label>
            <asp:TextBox ID="uxAge" MaxLength="3" Width="25px" runat="server" />
            <asp:RequiredFieldValidator ID="ReqAge" ControlToValidate="uxAge" Display="Dynamic" Text="*" ErrorMessage="Age Required" runat="server" />
            <asp:RangeValidator ID="RangeAge" ControlToValidate="uxAge" MinimumValue="0" MaximumValue="200" Type="Integer" Display="Dynamic" Text="*" ErrorMessage="Age must be between 0 and 200" runat="server" />

            <br />

            <asp:Label ID="lblPhone" CssClass="lblBlock" AssociatedControlID="uxPhone" runat="server">Phone Number:</asp:Label>
            <asp:TextBox ID="uxPhone" Width="100px" runat="server" />
            <asp:RequiredFieldValidator ID="ReqPhone" ControlToValidate="uxPhone" Display="Dynamic" Text="*" ErrorMessage="Phone Number Required" runat="server" />

            <br />

            <asp:Label ID="lblEmail" CssClass="lblBlock" AssociatedControlID="uxEmail" runat="server">Email Address:</asp:Label>
            <asp:TextBox ID="uxEmail" Width="200px" runat="server" />
            <asp:RequiredFieldValidator ID="ReqEmail" ControlToValidate="uxEmail" Display="Dynamic" Text="*" ErrorMessage="Email Required" runat="server" />

            <br />

            <asp:Label ID="lblConfirmEmail" CssClass="lblBlock" AssociatedControlID="uxConfirmEmail" runat="server">Confirm Email:</asp:Label>
            <asp:TextBox ID="uxConfirmEmail" Width="200px" runat="server" />
            <asp:RequiredFieldValidator ID="ReqConfirmEmail" ControlToValidate="uxConfirmEmail" Display="Dynamic" Text="*" ErrorMessage="Confirm Email Required" runat="server" />
            <asp:CompareValidator ID="CompConfirmEmail" ControlToValidate="uxConfirmEmail" ControlToCompare="uxEmail" Display="Dynamic" Text="*" ErrorMessage="Email and Confirm Email must match" runat="server" />

            <br />

            <asp:Label ID="lblStreet" CssClass="lblBlock" AssociatedControlID="uxStreet" runat="server">Address:</asp:Label>
            <asp:TextBox ID="uxStreet" Width="200px" runat="server" />

            <br />

            <asp:Label ID="lblCity" CssClass="lblBlock" AssociatedControlID="uxCity" runat="server">City:</asp:Label>
            <asp:TextBox ID="uxCity" Width="200px" runat="server" />

            <br />

            <asp:Label ID="lblState" CssClass="lblBlock" AssociatedControlID="uxState" runat="server">State:</asp:Label>
            <asp:DropDownList ID="uxState" runat="server">
                <asp:ListItem Value="Oregon" Text="Oregon" />
                <asp:ListItem Value="Washington" Text="Washington" />
            </asp:DropDownList>

            <br />

            <asp:Label ID="lblZip" CssClass="lblBlock" AssociatedControlID="uxZip" runat="server">Zip:</asp:Label>
            <asp:TextBox ID="uxZip" Width="50px" runat="server" />
            <asp:RegularExpressionValidator ID="RegZip" ControlToValidate="uxZip" ValidationExpression="\d{5}(\-d{4})?" Display="Dynamic" Text="*" ErrorMessage="Must be a Zip Code" runat="server" />

            <br />

            <asp:Label ID="lblProfImg" CssClass="lblBlock" AssociatedControlID="uxProfImg" runat="server">Profile Image:</asp:Label>
            <asp:FileUpload ID="uxProfImg" runat="server" />
            <asp:CustomValidator ID="CustImg" ControlToValidate="uxProfImg" ClientValidationFunction="validateFile" OnServerValidate="CustImg_ServerValidate" Display="Dynamic" Text="*" ErrorMessage="Image Required" runat="server" />

            <br />

            <asp:Button ID="uxSaveBtn" Text="Save Profile" OnClick="uxSaveBtn_Click" runat="server" />

            <asp:ValidationSummary ID="VSView1" DisplayMode="BulletList" runat="server" />

        </asp:View>

        <asp:View ID="View2" runat="server">
            <!--<h1>View Profile</h1>-->

            <asp:Label ID="lblFnameV2" CssClass="lblBlockViewPage" runat="server"><strong>First Name: </strong></asp:Label>
            <asp:Literal ID="LitFName" runat="server" />

            <br />

            <asp:Label ID="lblLNameV2" CssClass="lblBlockViewPage" runat="server"><strong>Last Name: </strong></asp:Label>
            <asp:Literal ID="LitLName" runat="server" />

            <br />

            <asp:Label ID="lblAgeV2" CssClass="lblBlockViewPage" runat="server"><strong>Age: </strong></asp:Label>
            <asp:Literal ID="LitAge" runat="server" />

            <br />

            <asp:Label ID="lblPhoneV2" CssClass="lblBlockViewPage" runat="server"><strong>Phone Number: </strong></asp:Label>
            <asp:Literal ID="LitPhone" runat="server" />

            <br />

            <asp:Label ID="lblEmailV2" CssClass="lblBlockViewPage" runat="server"><strong>Email: </strong></asp:Label>
            <asp:Literal ID="LitEmail" runat="server" />

            <br />

            <asp:Label ID="lblStreetV2" CssClass="lblBlockViewPage" runat="server"><strong>Street: </strong></asp:Label>
            <asp:Literal ID="LitStreet" runat="server" />

            <br />

            <asp:Label ID="lblCityV2" CssClass="lblBlockViewPage" runat="server"><strong>City: </strong></asp:Label>
            <asp:Literal ID="LitCity" runat="server" />

            <br />

            <asp:Label ID="lblStateV2" CssClass="lblBlockViewPage" runat="server"><strong>State: </strong></asp:Label>
            <asp:Literal ID="LitState" runat="server" />

            <br />

            <asp:Label ID="lblZipV2" CssClass="lblBlockViewPage" runat="server"><strong>Zip: </strong></asp:Label>
            <asp:Literal ID="LitZip" runat="server" />

            <br />

            <asp:Label ID="lblImg" AssociatedControlID="uxImage" runat="server" />
            <asp:Image ID="uxImage" Width="200px" runat="server" />

        </asp:View>
    </asp:MultiView>
</asp:Content>



