using KvalikAshmarin.Database;
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
using System.Windows.Shapes;

namespace KvalikAshmarin.Windows
{
    /// <summary>
    /// Логика взаимодействия для AddOrders.xaml
    /// </summary>
    public partial class AddOrders : Window
    {
        public AddOrders()
        {
            InitializeComponent();
            ProductCb.ItemsSource = App.db.Products.ToList();
        }

        private void btnAdd_Click(object sender, RoutedEventArgs e)
        {
            var products = new Order()
            {
                IdProduct = (ProductCb.SelectedItem as Products).Id,
                IdUser = App.user.Id,
                IdOrder = 1
            };

            App.db.Order.Add(products);
            App.db.SaveChanges();
            MessageBox.Show("Заказ добавлен!");
        }
    }
}
