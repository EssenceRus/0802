using Microsoft.Win32;
using System;
using System.Collections.Generic;
using System.IO;
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

namespace WpfApp1
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void closeWindow(object sender, ExecutedRoutedEventArgs e)
        {
            Close();
        }

        private void save(string filename)
        {
            // contentTextBox - x:Name для RichTextBox
            // получаем указатели начала и на конца
            // всего текста или выделенного фрагмента
            TextPointer start = contentTextBox.Document.ContentStart;
            TextPointer end = contentTextBox.Document.ContentEnd;

            // получаем по указателям TextPointer содержимое
            TextRange content = new TextRange(start, end);

            // выполняем сохранение с помощью специального метода Save
            using (var file = new FileStream(filename, FileMode.Create))
            {
                content.Save(file, DataFormats.Rtf);
            }
        }

        private void saveContent(object sender, ExecutedRoutedEventArgs e)
        {
            SaveFileDialog dialog = new SaveFileDialog
            {
                Filter = "Rich text format|*.rtf",
                DefaultExt = "rtf"
            };
            var result = dialog.ShowDialog();
            if (result == true)
            {
                save(dialog.FileName);
            }
        }
        private void open(string filename)
        {

            TextPointer start = contentTextBox.Document.ContentStart;
            TextPointer end = contentTextBox.Document.ContentEnd;

            TextRange content = new TextRange(start, end);

            using (var file = new FileStream(filename, FileMode.Open))
            {
                content.Load(file, DataFormats.Rtf);
            }
        }
            private void OpenWindow(object sender, ExecutedRoutedEventArgs e)
            {
                OpenFileDialog dialog = new OpenFileDialog
                {
                    Filter = "Rich text format|*.rtf",
                    DefaultExt = "rtf" 
                };
                var result = dialog.ShowDialog();
                if (result == true)
                {
                    open(dialog.FileName);
                }

            }
    }
}
