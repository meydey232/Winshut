using System;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Threading;
using System.Windows.Media;

namespace Winshut
{
    /// <summary>
    /// The application is for shutting down the computer after setting up the time which you need to.
    /// </summary>
    public partial class MainWindow : Window
    {
        private DispatcherTimer Timer;
        int _interv = 0;
        int _hoursInMinutes = 0;
        int _minutes = 0;
        bool started = false;
        DateTime shutdownTime = DateTime.Now;
        
        public MainWindow()
        {
            InitializeComponent();
            
            Timer = new DispatcherTimer();
            Timer.Interval = new TimeSpan(0, 0, 1);
            Timer.Tick += TimerTick;
            tbTimeAt.Text = shutdownTime.ToShortDateString() + " " + shutdownTime.ToShortTimeString();
            var bc = new BrushConverter();
            trayText.Foreground = (Brush)bc.ConvertFrom("#000000");
            trayText.Text = "Not runned yet";
            stopButton.IsEnabled = false;
            startButton.IsEnabled = false;
        }

        void TimerTick(object sender, EventArgs e)
        {
            TimeSpan finalTime = TimeSpan.FromSeconds(_interv);
            if(_interv > 0)
            {
                _interv--;
                if(finalTime.Days > 0)
                {
                    hoursBox.Text = string.Format("{0}", finalTime.Hours + finalTime.Days * 24);
                }else
                {
                    hoursBox.Text = string.Format("{0}", finalTime.Hours);
                }
                minutesBox.Text = string.Format("{0}", finalTime.Minutes);
                secondsBox.Text = string.Format("{0}", finalTime.Seconds);
            }
            else
            {
                Timer.Stop();
                System.Diagnostics.Process.Start("shutdown", "/s /t 5");
            }
        }

        private void hoursSlider_ValueChanged(object sender, RoutedPropertyChangedEventArgs<double> e)
        {
            _hoursInMinutes = Convert.ToInt32(e.NewValue*60);
            shutdownTime = DateTime.Now.AddMinutes(_hoursInMinutes + _minutes);
            if(hoursSlider.IsEnabled) tbTimeAt.Text = shutdownTime.ToShortDateString() + " " + shutdownTime.ToShortTimeString();
            if ((_hoursInMinutes != 0 || _minutes != 0) && started == false)
            {
                startButton.IsEnabled = true;
            }else
            {
                startButton.IsEnabled = false;
            }
            
        }

        private void minutesSlider_ValueChanged(object sender, RoutedPropertyChangedEventArgs<double> e)
        {
            _minutes = Convert.ToInt32(e.NewValue);
            shutdownTime = DateTime.Now.AddMinutes(_hoursInMinutes + _minutes);
            if(minutesSlider.IsEnabled) tbTimeAt.Text = shutdownTime.ToShortDateString() + " " + shutdownTime.ToShortTimeString();
            if ((_hoursInMinutes != 0 || _minutes != 0) && started == false)
            {
                startButton.IsEnabled = true;
            }
            else
            {
                startButton.IsEnabled = false;
            }
        }
        
        private void hoursBox_TextChanged(object sender, TextChangedEventArgs e)
        {
            int hours = Convert.ToInt32(hoursBox.Text);
            if (started) hoursSlider.Value = hours;
        }

        private void minutesBox_TextChanged(object sender, TextChangedEventArgs e)
        {
            int minutes = Convert.ToInt32(minutesBox.Text);
            if (started) minutesSlider.Value = minutes;
        }

        private void stopButton_Click(object sender, RoutedEventArgs e)
        {
            var bc = new BrushConverter();
            Timer.Stop();
            _interv = 0;
            shutdownTime = DateTime.Now.AddMinutes(_hoursInMinutes + _minutes);
            tbTimeAt.Text = shutdownTime.ToShortDateString() + " " + shutdownTime.ToShortTimeString();
            secondsBox.Text = string.Empty;
            trayText.Foreground = (Brush)bc.ConvertFrom("#000000");
            trayText.Text = "Stopped";
            started = false;
            minutesSlider.IsEnabled = true;
            hoursSlider.IsEnabled = true;
            stopButton.IsEnabled = false;
            startButton.IsEnabled = true;
            hoursBox.IsEnabled = true;
            minutesBox.IsEnabled = true;
        }

        private void startButton_Click(object sender, RoutedEventArgs e)
        {
            var bc = new BrushConverter();
            if (_interv == 0) _interv = (_hoursInMinutes + _minutes)*60;
            Timer.Start();
            started = true;
            trayText.Foreground = (Brush)bc.ConvertFrom("#FFD40000");
            trayText.Text = "Windows will shutdown at " + shutdownTime.ToShortDateString() + " " + shutdownTime.ToShortTimeString();
            minutesSlider.IsEnabled = false;
            hoursSlider.IsEnabled = false;
            startButton.IsEnabled = false;
            stopButton.IsEnabled = true;
            hoursBox.IsEnabled = false;
            minutesBox.IsEnabled = false;
        }
        
        private void hideButton_Click(object sender, RoutedEventArgs e)
        {
            this.Hide();
        }
    }
}
