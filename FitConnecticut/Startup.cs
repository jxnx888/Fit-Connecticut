using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(FitConnecticut.Startup))]
namespace FitConnecticut
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
