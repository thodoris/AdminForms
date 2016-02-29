using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(WebFormsAdmin.Startup))]
namespace WebFormsAdmin
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
