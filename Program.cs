using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Forms;

using FSLib.App.SimpleUpdater;

namespace TestUpdate
{
    static class Program
    {


        /// <summary>
        /// 应用程序的主入口点。
        /// </summary>
        [STAThread]
        static void Main()
        {
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);

            Updater update = Updater.Instance;
            update.Error += (sender, e) =>
            {
                MessageBox.Show("更新异常");  
            };

            update.NoUpdatesFound += (sender, e) =>
            {
                MessageBox.Show("没找到更新");
            };

            Updater.CheckUpdateSimple("http://localhost:25443/Update/{0}", "update.xml");


            Application.Run(new Form1());
        }
    }
}
