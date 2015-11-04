<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="MultipleChoiceQuestion.ascx.cs" Inherits="CST465.MultipleChoiceQuestion" %>

<asp:Label ID="lblRadListAnswers" AssociatedControlID="uxRadListAnswers" runat="server"></asp:Label>
<asp:RadioButtonList ID="uxRadListAnswers" runat="server">

</asp:RadioButtonList>
<asp:RequiredFieldValidator ID="reqRadListAnswers" ControlToValidate="uxRadListAnswers" Display="Dynamic" ErrorMessage="No answer selected" Text="*" runat="server" />

