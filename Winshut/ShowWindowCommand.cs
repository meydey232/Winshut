using System;
using System.Windows;
using System.Windows.Input;

namespace Winshut
{
    class ShowWindowCommand : ICommand
    {
        public void Execute(object parameter)
        {
            Application.Current.MainWindow.Show();
        }

        public bool CanExecute(object parameter)
        {
            return true;
        }

        public event EventHandler CanExecuteChanged;
    }
}
