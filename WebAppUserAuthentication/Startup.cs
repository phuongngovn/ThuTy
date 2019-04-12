using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin;
using Owin;
using WebAppUserAuthentication.Models;

[assembly: OwinStartupAttribute(typeof(WebAppUserAuthentication.Startup))]
namespace WebAppUserAuthentication
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
            createRoleAndUsers();
        }
        private void createRoleAndUsers()
        {
            ApplicationDbContext context = new ApplicationDbContext();
            var roleManager = new RoleManager<IdentityRole>(new RoleStore<IdentityRole>(context));
            var userManager = new UserManager<ApplicationUser>(new UserStore<ApplicationUser>(context));
            
            // create admin role
            if (!roleManager.RoleExists("Admin"))
            {
                var role = new Microsoft.AspNet.Identity.EntityFramework.IdentityRole();
                role.Name = "Admin";
                roleManager.Create(role);
                
            }
            // create Manager role
            if (!roleManager.RoleExists("Manager"))
            {
                var role = new Microsoft.AspNet.Identity.EntityFramework.IdentityRole();
                role.Name = "Manager";
                roleManager.Create(role);                
            }
            // create staff role
            if (!roleManager.RoleExists("Staff"))
            {
                var role = new Microsoft.AspNet.Identity.EntityFramework.IdentityRole();
                role.Name = "Staff";
                roleManager.Create(role);
            }
            // create customer role
            if (!roleManager.RoleExists("Customer"))
            {
                var role = new Microsoft.AspNet.Identity.EntityFramework.IdentityRole();
                role.Name = "Customer";
                roleManager.Create(role);
            }
            // create user
            var user = new ApplicationUser();
            user.UserName = "phuongngovn@yahoo.com";
            user.Email = "phuongngovn@yahoo.com";
            user.FirstName = "Kate";
            user.LastName = "Ngo";
            string PWD = "123456";
            var chUser = userManager.Create(user, PWD);
            if (chUser.Succeeded)
            {
                var result1 = userManager.AddToRole(user.Id, "Admin");
            }


        }
    }
}
