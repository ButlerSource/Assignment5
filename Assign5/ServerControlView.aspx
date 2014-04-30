<%@ Page Language="C#"  Title="View Server Controls" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="ServerControlView.aspx.cs" Inherits="ServerControlView" %>


<script runat="server">  
    protected void TextBox1_TextChanged(object sender, System.EventArgs e)  
    {  
        textbox2.Text = textbox1.Text;  
    }  
</script> 

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %>:</h1>
    </hgroup>

    <div>
        Server Controls are used in both the registration and login pages. <br>
        Here is a sample HTML server control that adds text to another textbox at runtime.

    </div>

    <asp:Label runat="server" Text="Start Typing: "></asp:Label><asp:TextBox AutoPostBack="true" OnTextChanged="TextBox1_TextChanged" ID="textbox1" runat="server"></asp:TextBox><asp:Label ID="Label2" runat="server" Text="(Hit Enter When Finished)"></asp:Label> <br>
     <asp:Label ID="Label1" runat="server" Text="Result: "></asp:Label><asp:TextBox ID="textbox2" runat="server" ReadOnly="true"></asp:TextBox>

    <div>
        This same control is used for validating the input fields.

    </div>
</asp:Content>
