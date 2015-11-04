<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="EssayQuestion.ascx.cs" Inherits="CST465.EssayQuestion" %>

<asp:Label ID="lblQuestion" AssociatedControlID="uxQuestionBox" runat="server"> </asp:Label>
<asp:TextBox ID="uxQuestionBox" TextMode="MultiLine" runat="server" />
<asp:RequiredFieldValidator ID="reqQuestion" ControlToValidate="uxQuestionBox" Display="Dynamic" ErrorMessage="Question textbox left blank" Text="*" runat="server" />
