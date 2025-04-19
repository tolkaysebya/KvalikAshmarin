using KvalikAshmarin.Database;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Threading.Tasks;
using System.Windows;

namespace KvalikAshmarin
{
    /// <summary>
    /// Логика взаимодействия для App.xaml
    /// </summary>
    public partial class App : Application
    {
        public static KvalikAshmarinEntities db = new KvalikAshmarinEntities();
        public static Users user;
    }
}
