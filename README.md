# ASPNET-QR-WebForms
## QR Code Handler for Web Forms Project

This project was made in response to some questions where people had problems using the handler.


To run this project:

1. Clone into a new directory
2. Open in Visual Studio (this project was made in VS2015)
3. Right click Default.aspx and "View in Browser"

---

For this example, I did the following:

1. Setup a new ASP.NET 4.6.1 Web Forms project with no authentication
2. Updated all packages
3. Followed the blog post instructions at http://www.mikesmithdev.com/blog/how-to-make-a-qr-code-in-asp-net/
4. I had to change the RouteConfig.cs to `routes.Ignore("{resource}.qr");` (line 10). Everything else I did was verbatim from the post
5. Please note in the web.config, line 25, then handler is `type="Example.Handlers.QRHandler"` where:
  - The `Example.Handlers` part is the namespace in QRHandler.ashx.cs (line 7)
  - and `QRHandler` is the name of the class (line 12)
  - Put it all together to get `Example.Handlers.QRHandler`
