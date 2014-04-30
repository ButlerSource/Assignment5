<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>


<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h1>Welcome To MovieMobile!</h1>
    <ol class="round">
        <li class="one">
            <h5>Getting Started</h5>
            You can sign in to get to the members page <a href="Account/Login.aspx"> HERE </a>. If you haven't already, <br />
            register for membership <a href="Account/Register.aspx"> HERE </a>. Membership will allow you to test our Movie Services.
        </li>
        
        
        <li class="two">
            <h5>Local Component</h5>
            View the Code behind the server controls that implement our presentation layer <a href="ServerControlView.aspx">HERE</a>.
        </li>
        
        
        <li class="three">
            <h5>Web Service Directory</h5>
            The public services used in this application can be used at the following links:
            <table>
                <tbody>
                    <tr>
	<td>
	Provider
	</td>
	<td>
		Service Name
	</td>

	<td>
	TryitPage
	</td>
	<td>
	Service Description
	</td>
	<td>
	Resources Used
	</td>
	
</tr>








                    <tr>
	                <td>
	                Brian
	                </td>
	                <td>
		                <strong>Related Movies</strong>
		                <br>
		                Input : movie name (string)
		                <br>
		                Output : Dictionary (string, string) containing the title of each related movie and its relation
	                </td>

	                <td>
	                <a href="http://webstrar13.fulton.asu.edu/page2/Default.aspx">TryIt</a>
	                </td>
	                <td>
	                <strong>Description:</strong> This service finds related movies based on voter ratings, similar studios, and genres.
	                </td>
	                <td>
	                <strong>Resources:</strong> JSON data from the API themoviedb.org.
	                </td>
	
                </tr>




                    <tr>
	                <td>
	                Chen
	                </td>
	                <td>
		                <strong>GetVerifierString</strong>
		                <br>
		                Input : Length of String
		                <br>
		                Output : String
                        <br>
                        <strong>GetImage</strong>
		                <br>
		                Input : verification String
		                <br>
		                Output : Image Stream
	                </td>

	                <td>
	                <a href="Account/Register.aspx">TryIt</a>
	                </td>
	                <td>
	                <strong>Description:</strong> This service is a Random Image Generator based on a given string length.
	                </td>
	                <td>
	                <strong>Resources:</strong> Used in the registration portion of the site.
	                </td>
	
                </tr>




                </tbody>
            </table>
        </li>

        <li class="four">
            <h5>Data Management</h5>
            See your Cookie Data<a href="CookieView.aspx">HERE</a>.
        </li>

    </ol>
</asp:Content>