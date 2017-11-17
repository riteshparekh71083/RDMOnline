using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Paperless.Startup))]
namespace Paperless
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
