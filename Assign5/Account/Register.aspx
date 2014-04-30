<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Account_Register" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %>.</h1>
        <h2>Use the form below to create a new account.</h2>
    </hgroup>
                    <p class="message-info">
                        Passwords are required to be a minimum of <%: Membership.MinRequiredPasswordLength %> characters in length.
                    </p>

                        <h4>Registration Form</h4>
                        <ol>
                            <li>
                                <asp:Label runat="server">User name</asp:Label>
                                <asp:TextBox runat="server" ID="UserName" />

                            </li>
                            <li>
                                <asp:Label runat="server">Password</asp:Label>
                                <asp:TextBox runat="server" ID="Password" TextMode="Password" />
                            </li>
                            <li>
                                <asp:Label runat="server">Confirm password</asp:Label>
                                <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" />
                            </li>
                            <li>
                                <asp:Label runat="server">Enter String from Image</asp:Label><br />
                                <asp:Image ID="Image1" runat="server" /><br />
                                <asp:TextBox ID="txt_imageVerify" runat="server" /><asp:Label ID="err_verify" runat="server"></asp:Label><br />
                               
                            </li>
                        </ol>
                        
                        <asp:Button ID="Button1" runat="server" click="btnRegister_Click" Text="Register" />
    
</asp:Content>