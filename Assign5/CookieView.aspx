<%@ Page Language="C#" Title="View Cookie Data" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="CookieView.aspx.cs" Inherits="CookieView" %>


<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %>:</h1>
    </hgroup>

    <div>
        <asp:Label ID="lblNoCookie" runat="server"></asp:Label> <br>
        <asp:Label ID="lblUsername" runat="server"></asp:Label> <br>
        <asp:Label ID="lblEmail" runat="server"></asp:Label>
    </div>

</asp:Content>