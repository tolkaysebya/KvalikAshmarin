using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using KvalikAshmarin.Database;

namespace KvalikAshmarin.Pages
{
    /// <summary>
    /// Логика взаимодействия для RegistrationPage.xaml
    /// </summary>
    public partial class RegistrationPage : Page
    {
        public RegistrationPage()
        {
            InitializeComponent();
        }

        private void RegBtn_Click(object sender, RoutedEventArgs e)
        {
            var Login = LoginTb.Text;
            var Password = PasswordTb.Text;
            var Name = NameTb.Text;
            var Users = new Users()
            {
                Login = Login,
                Password = Password,
                Name = Name,
                RoleId = 1
            };

            App.db.Users.Add(Users);
            App.db.SaveChanges();
            App.user= Users;
            NavigationService.Navigate(new MainPage());
        }
    }
}
