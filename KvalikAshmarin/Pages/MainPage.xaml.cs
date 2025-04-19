using KvalikAshmarin.Windows;
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

namespace KvalikAshmarin.Pages
{
    /// <summary>
    /// Логика взаимодействия для MainPage.xaml
    /// </summary>
    public partial class MainPage : Page
    {
        public MainPage()
        {
            InitializeComponent();
            LvOrders.ItemsSource = App.db.Order.Where(x => x.IdUser == App.user.Id).ToList();
        }

        private void BtnAdd_Click(object sender, RoutedEventArgs e)
        {
            AddOrders addOrders = new AddOrders();
            addOrders.ShowDialog();
            LvOrders.ItemsSource = App.db.Order.Where(x => x.IdUser == App.user.Id).ToList();
        }
    }
}
