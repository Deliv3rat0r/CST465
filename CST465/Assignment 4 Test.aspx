<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Assignment 4 Test.aspx.cs" Inherits="CST465.Assignment_4_Test" %>
<%@ Register TagPrefix="CSET" TagName="EssayQuestion" Src="~/EssayQuestion.ascx" %>
<%@ Register TagPrefix="CSET" TagName="MultiChoiceQuestion" Src="~/MultipleChoiceQuestion.ascx" %>
<%@ Register TagPrefix="CSET" Assembly="CST465" Namespace="CST465" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Assignment 4 Test</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Assignment 4 Test</h1>
        <hr />

        <CSET:EssayQuestion ID="uxEssayQuestion" QuestionText="What did you do last summer?" runat="server" />
        
        <br />
        <br />
        
        <CSET:MultiChoiceQuestion ID="uxMultiChoiceQuestion" QuestionText="Who am I?" runat="server">
            <Items>
                <asp:ListItem Text="Bob" Value="Bob" />
                <asp:ListItem Text="Jon" Value="Jon" />
                <asp:ListItem Text="Frank" Value="Frank" />
                <asp:ListItem Text="Jimmy" Value="Jimmy" />
            </Items>
        </CSET:MultiChoiceQuestion>

        <br />
        <br />

        <CSET:TrueFalseQuestion ID="uxTrueFalseQuestion" runat="server" />
        
        <br />
        <br />
        
        <CSET:ShortTextQuestion ID="uxShortAnswerQuestion" runat="server" /> 

        <br />
        <br />

        <asp:Button ID="uxBtnSubmit" Text="Submit" OnClick="uxBtnSubmit_Click" runat="server" /> 

        <br />
        <br />

        <asp:Literal ID="litOutput" runat="server" />

    </div>
    </form>
</body>
</html>
