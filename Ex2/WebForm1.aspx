<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Ex2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Имя пользователя:
            <asp:TextBox ID="UserNameBox" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="UserNameValidator" runat="server" ControlToValidate="UserNameBox" ErrorMessage="Поле не должно быть пустым."></asp:RequiredFieldValidator>
            <br />
            Пароль:
            <asp:TextBox ID="PasswordBox" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="PasswordValidator" runat="server" ControlToValidate="PasswordBox" ErrorMessage="Должен содержать не менее 8 символов." ValidationExpression="\w{8,}"></asp:RegularExpressionValidator>
            <br />
            Подтверждения пароля: <asp:TextBox ID="RepeatPasswordBox" runat="server"></asp:TextBox>
            <asp:CompareValidator ID="RepeatPasswordValidator" runat="server" ControlToCompare="PasswordBox" ControlToValidate="RepeatPasswordBox" ErrorMessage="Пароли не совпадают."></asp:CompareValidator>
            <br />
            Эл. почта:
            <asp:TextBox ID="MailBox" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="MailValidator" runat="server" ControlToValidate="MailBox" ErrorMessage="Неправильный формат эл. почты." ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            <br />
            Возраст:
            <asp:TextBox ID="AgeValidate" runat="server"></asp:TextBox>
            <asp:RangeValidator ID="RangeValidator" runat="server" ControlToValidate="AgeValidate" ErrorMessage="Неправильно задан возраст." MaximumValue="65" MinimumValue="18"></asp:RangeValidator>
            <br />
            <br />
            <asp:Button ID="SendButton" runat="server" OnClick="Button1_Click" Text="Отправить" />
            <br />
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
        </div>
    </form>
</body>
</html>
