<%@ Page Language="C#" Title="Member Page" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeFile="Member.aspx.cs" Inherits="Account_Member" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %> for MovieMobile</h1>
    </hgroup>

    <div>
         <% Response.Write("Hello " + Context.User.Identity.Name + ", "); %> <br />
        This page contains the information about what this web application can do.<br />
        Here we will go over some of the features and functions that will allow you
        to get all of the movie information you need.<br />
    </div>

</asp:Content>
