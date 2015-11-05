<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Assignment 4 Test.aspx.cs" Inherits="CST465.Assignment_4_Test" %>
<%@ Register TagPrefix="CSET" TagName="EssayQuestion" Src="~/EssayQuestion.ascx" %>
<%@ Register TagPrefix="CSET" TagName="MultiChoiceQuestion" Src="~/MultipleChoiceQuestion.ascx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Assignment 4 Test</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <ol>
            <CSET:EssayQuestion ID="uxEssayQuestion" QuestionText="What did you do last summer?" runat="server" />
        
            <br />
        
            <CSET:MultiChoiceQuestion ID="uxMultiChoiceQuestion" QuestionText="Who am I?" runat="server" />
        </ol>

    </div>
    </form>
</body>
</html>
