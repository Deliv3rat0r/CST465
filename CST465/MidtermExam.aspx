<%@ Page Title="" Language="C#" MasterPageFile="~/App_Master/BaseTemplate.Master" AutoEventWireup="true" CodeBehind="MidtermExam.aspx.cs" Inherits="CST465.MidtermExam" %>
<%@ Register TagPrefix="CSET" TagName="EssayQuestion" Src="~/EssayQuestion.ascx" %>
<%@ Register TagPrefix="CSET" TagName="MultiChoiceQuestion" Src="~/MultipleChoiceQuestion.ascx" %>
<%@ Register TagPrefix="CSET" Assembly="CST465" Namespace="CST465" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Midterm Exam</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="header" runat="server">
    <h1>Midterm Exam</h1>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="nav" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="main" runat="server">

    <asp:PlaceHolder ID="uxQuestions" runat="server">
        <h2>True/False</h2>
        <CSET:TrueFalseQuestion ID="uxTFQ1" runat="server" /><br />
        <CSET:TrueFalseQuestion ID="uxTFQ2" runat="server" /><br />
        <CSET:TrueFalseQuestion ID="uxTFQ3" runat="server" /><br />
        <CSET:TrueFalseQuestion ID="uxTFQ4" runat="server" /><br />
        <CSET:TrueFalseQuestion ID="uxTFQ5" runat="server" /><br />
        <CSET:TrueFalseQuestion ID="uxTFQ6" runat="server" /><br />
        <CSET:TrueFalseQuestion ID="uxTFQ7" runat="server" /><br />
        <CSET:TrueFalseQuestion ID="uxTFQ8" runat="server" /><br />
        <CSET:TrueFalseQuestion ID="uxTFQ9" runat="server" /><br />
        <CSET:TrueFalseQuestion ID="uxTFQ10" runat="server" />

        <br /><br />

        <h2>Essay</h2>
        <CSET:EssayQuestion ID="uxEssayQ1" runat="server" QuestionText="Place the following events in order of when they occur in the page lifecycle:" Answer="Load, Init, Request Arrives, PreRender, Load ViewState, Input Control Event Handling"/>
        <br />
        <CSET:EssayQuestion ID="uxEssayQ2" runat="server" QuestionText="What is the purpose of the doctype  declaration at the top of a web page?" />
        <br />
        <CSET:EssayQuestion ID="uxEssayQ3" runat="server" QuestionText="What is the order of precedence for the same style defined in the following ways?" Answer="Style tag in document head, Extenal Style Sheet referenced by the link tag in document head" />
        <br />
        <CSET:EssayQuestion ID="uxEssayQ4" runat="server" QuestionText="What is the order of precedence for CSS for referencing elements in the following ways" Answer='By Element Name, By ID, By CSS Class, Inline using the style="" attribute' />
        <br />
        <CSET:EssayQuestion ID="uxEssayQ5" runat="server" QuestionText="Explain why the alt attribute of the img tag is important" />
        <br />
        <CSET:EssayQuestion ID="uxEssayQ6" runat="server" QuestionText="What is the purpose of name mangling?" />
        <br />
        <CSET:EssayQuestion ID="uxEssayQ7" runat="server" QuestionText="Explain the difference between redirects that use a 301 HTTP status code and ones that use a 302 HTTP status code "/>

        <br /><br />

        <h2>MultipleChoice</h2>
        <CSET:MultiChoiceQuestion ID="uxMultiQ1" runat="server" QuestionText="HTML Stands for">
            <Items>
                <asp:ListItem Text="HoTMaiL" Value="HoTMaiL" />
                <asp:ListItem Text="Highly Transferable Modeling Language" Value="Highly Transferable Modeling Language" />
                <asp:ListItem Text="HyperText Markup Language" Value="HyperText Markup Language" />
                <asp:ListItem Text="High Traffic Masking Language" Value="High Traffic Masking Language" />
            </Items>
        </CSET:MultiChoiceQuestion><br />
        <CSET:MultiChoiceQuestion ID="uxMultiQ2" runat="server" QuestionText="All controls that ask for user input should have an associated">
            <Items>
                <asp:ListItem Text="Label" Value="Label" />
                <asp:ListItem Text="Validator" Value="Validator" />
                <asp:ListItem Text="Event Handler" Value="Event Handler" />
                <asp:ListItem Text="Ferret" Value="Ferret" />
            </Items>
        </CSET:MultiChoiceQuestion><br />
        <CSET:MultiChoiceQuestion ID="uxMultiQ3" runat="server" QuestionText="The living version of a page within the web browser is called the">
            <Items>
                <asp:ListItem Text="Output Rendering Model" Value="Output Rendering Model" />
                <asp:ListItem Text="Document Object Model" Value="Document Object Model" />
                <asp:ListItem Text="Box Model" Value="Box Model" />
                <asp:ListItem Text="Underwear Model" Value="Underwear Model" />
            </Items>
        </CSET:MultiChoiceQuestion><br />
        <CSET:MultiChoiceQuestion ID="uxMultiQ4" runat="server" QuestionText="Which of the following elements is most appropriate for presenting the user with a list of items in no particular order?">
            <Items>
                <asp:ListItem Text="ol" Value="ol" />
                <asp:ListItem Text="ul" Value="ul" />
                <asp:ListItem Text="dl" Value="dl" />
                <asp:ListItem Text="dropdownliste" Value="dropdownliste" />
            </Items>
        </CSET:MultiChoiceQuestion><br />
        <CSET:MultiChoiceQuestion ID="uxMultiQ5" runat="server" QuestionText="What is the difference between the ViewStateMode and EnableViewState properties in the <%@ Page %> declaration?">
            <Items>
                <asp:ListItem Text="ViewStateMode was introduced in ASP.NET 4 to allow more than true/false values, but currently there is no distinguishable difference in functionality" Value="ViewStateMode was introduced in ASP.NET 4 to allow more than true/false values, but currently there is no distinguishable difference in functionality" />
                <asp:ListItem Text="When ViewState is disabled via ViewStateMode, it can't be enabled at the control level" Value="When ViewState is disabled via ViewStateMode, it can't be enabled at the control level" />
                <asp:ListItem Text="When ViewState is disabled via EnableViewState, it can't be enabled at the control level" Value="When ViewState is disabled via EnableViewState, it can't be enabled at the control level" />
                <asp:ListItem Text="When ViewState is enabled via ViewStateMode, it can't be disabled at the control level" Value="When ViewState is enabled via ViewStateMode, it can't be disabled at the control level" />
                <asp:ListItem Text="When ViewState is enabled via EnableViewState, it can't be disabled at the control level" Value="When ViewState is enabled via EnableViewState, it can't be disabled at the control level" />
            </Items>
        </CSET:MultiChoiceQuestion>

        <br /><br />

        <h2>Short Answer</h2>
        <CSET:ShortTextQuestion ID="uxShortQ1" runat="server" />
        <br /><br />
        <CSET:ShortTextQuestion ID="uxShortQ2" runat="server" />
        <br /><br />
        <CSET:ShortTextQuestion ID="uxShortQ3" runat="server" />
        <br /><br />
        <CSET:ShortTextQuestion ID="uxShortQ4" runat="server" />
        <br /><br />
        <CSET:ShortTextQuestion ID="uxShortQ5" runat="server" />
        <br /><br />
        <CSET:ShortTextQuestion ID="uxShortQ6" runat="server" />
        <br /><br />
        <CSET:ShortTextQuestion ID="uxShortQ7" runat="server" />

    </asp:PlaceHolder>

    <br /><br />

    <asp:Button ID="uxSubmitbtn" Text="Submit" OnClick="uxSubmitbtn_Click" runat="server" />
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="footer" runat="server">
</asp:Content>
