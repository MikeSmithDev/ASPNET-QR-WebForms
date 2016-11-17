<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Example._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>QR Code in ASP.NET Web Forms</h1>

        <p><a href="http://www.mikesmithdev.com/blog/how-to-make-a-qr-code-in-asp-net/" target="_blank" class="btn btn-primary btn-lg">View Post</a></p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Example 1</h2>
            <p>
                <img src="myqr.qr?u=http://www.mikesmithdev.com/blog/node-js-boilerplate-site-template-without-jade/" alt="Yes, this is a QR Code">
            </p>
        </div>
        <div class="col-md-4">
            <h2>Example 2</h2>
            <p>
                <img src="myqr.qr?u=http://www.mikesmithdev.com/blog/coding-without-music-vs-coding-with-music/" alt="Yes, this is a QR Code">
            </p>
        </div>
        <div class="col-md-4">
            <h2>Example 3</h2>
            <p>
                <img src="myqr.qr?u=http://www.mikesmithdev.com/blog/how-your-perfect-code-base-was-corrupted/" alt="Yes, this is a QR Code">
            </p>
        </div>
    </div>

    <div class="row">
        <div class="col-xs-12">
            <p>This project was made in response to some questions where people had problems using the handler.</p>
            <p>For this example, I did the following:</p>
            <ol>
                <li>Setup a new ASP.NET 4.6.1 Web Forms project with no authentication</li>
                <li>Updated all packages</li>
                <li>Followed <a href="http://www.mikesmithdev.com/blog/how-to-make-a-qr-code-in-asp-net/" target="_blank">the blog post instructions</a></li>
                <li>I had to change the RouteConfig.cs to <strong>routes.Ignore("{resource}.qr");</strong> (line 10). Everything else I did was verbatim from the post</li>
                <li>Please note in the web.config, line 25, then handler is <strong>type="Example.Handlers.QRHandler"</strong> where:
                    <ul>
                        <li>The <strong>Example.Handlers</strong> part is the namespace in QRHandler.ashx.cs (line 7)</li>
                        <li>and <strong>QRHandler</strong> is the name of the class (line 12)</li>
                        <li>Put it all together to get <strong>Example.Handlers.QRHandler</strong></li>
                    </ul>
                </li>
            </ol>
        </div>
    </div>
</asp:Content>
