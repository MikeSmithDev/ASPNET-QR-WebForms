using System.Drawing.Imaging;
using System.IO;
using System.Web;
using ZXing;
using ZXing.Common;

namespace Example.Handlers
{
    /// <summary>
    /// Summary description for QRHandler
    /// </summary>
    public class QRHandler : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            //begin the 8 lines o' magic
            string urlToQRify = context.Server.UrlDecode(context.Request.QueryString["u"]);
            var qrWriter = new BarcodeWriter();
            qrWriter.Format = BarcodeFormat.QR_CODE;
            qrWriter.Options = new EncodingOptions() { Height = 500, Width = 500, Margin = 0 };
            //I like to make them large. You can resize them with CSS later
            using (var bitmap = qrWriter.Write(urlToQRify))
            {
                using (var stream = new MemoryStream())
                {
                    context.Response.ContentType = "image/png";
                    bitmap.Save(context.Response.OutputStream, ImageFormat.Png);
                }
            }
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}