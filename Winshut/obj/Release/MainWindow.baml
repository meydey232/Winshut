   M S B A M L   `   `   `  ���� B  >Winshut, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:WinshutWinshut      Winshut.MainWindow   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     'localclr-namespace:Winshut     \ XHardcodet.Wpf.TaskbarNotification, Version=1.0.5.0, Culture=neutral, PublicKeyToken=null)tb http://www.hardcodet.net/taskbar    � Title$  Winshut��$	��350��$	��225�� � 
ResizeMode$ NoResize=� � WindowStartupLocation$ CenterScreen=�.���  � 	Resources   Winshut.ShowWindowCommand   
ShowWindow��%   &	          .+�3  -Hardcodet.Wpf.TaskbarNotification.TaskbarIcon  -     Name$ myIcon��   
IconSource$ /Icons/shutdown.ico��   DoubleClickCommand# [     TrayToolTip �� 
�������
���   �$��2q� �� CornerRadius$ 0��$	��260��$��40��._��� -   	 ��Name$	 trayText��$��Center=�$��Center=�$
��Bold"��� -   
 ��Name$
 
stopButton��$
��Stop��$
��Left=�$��
15,246,0,0q�$	��Top=�$��88���� -   $
 startButton��$��Start��$
��Left=�$��108,246,0,0q�$	��Top=�$��85���� -   $
 
hideButton��$��Hide to tray��$
��Left=�$��
15,279,0,0q�$	��Top=�$	��178���� -    ��Name$ label��$�� Windows will shutdown at��$��15(�$
��Left=�$��	10,10,0,0q�$	��Top=�$	��199���� -   $ 
hoursLabel��$��Hours��$
��Left=�$��	54,76,0,0q�$	��Top=��� -   $ minutesLabel��$��Minutes��$
��Left=�$��
114,76,0,0q�$	��Top=��� -	   $ 	separator��$��:��$��35(�$
��Left=�$��	96,95,0,0q�$	��Top=�$��51���� -
    ��Name$ hoursSlider��$
��Left=�$��
24,180,0,0q�$	��Top=�$	��159�� � Minimum$ 0Q� � Maximum$	 120Q� �� TickFrequency$ 1Q� �� IsSnapToTickEnabled . �� -   $ minutesSlider��$
��Left=�$��
24,207,0,0q�$	��Top=�$	��159��$ 0Q�$ 59Q�$ 1Q� . �� -    ��Name$ hoursBox��$
��Left=�$��60��$��	13,95,0,0q� �� TextWrapping$
 Wrap=�$	��Top=�$��83��$��40(� �� TextAlignment$ Right=�$��0q�����  �� ElementName$ hoursSlider�� �� Path$ Value��� -   $ 
minutesBox��$
��Left=�$��60��$��
114,95,0,0q�$
 Wrap=�$	��Top=�$��85��$��40(�$
 Left=�$��0q����� $ minutesSlider��$ Value��� -   $ 
secondsBox��$
��Left=�$��21��$��
95,142,0,0q�$
 Wrap=�$	��Top=�$��27��$��16(�$
 Left=�$��0q�$
��Bold"�
�������|�.  �� -   $ tbTimeAt��$
��Left=�$ Center=�$��21��$��	10,37,0,0q�$
 Wrap=�$	��Top=�$	��199��$��16(�$��0q�