   M S B A M L   `   `   `  ����B  >Winshut, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:WinshutWinshut  5   	       Winshut.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   'localclr-namespace:Winshut     5   	   \ XHardcodet.Wpf.TaskbarNotification, Version=1.0.5.0, Culture=neutral, PublicKeyToken=null)tb http://www.hardcodet.net/taskbar  5   	     � Title$  Winshut��5	   	   $	��350��6   $	��225��6&    � 
ResizeMode$ NoResize=�62    � WindowStartupLocation$ CenterScreen=�6H   .��5      �  � 	Resources 5   
     Winshut.ShowWindowCommand   
ShowWindow��%   &	          5      6&   5      .+�5   
   3  -Hardcodet.Wpf.TaskbarNotification.TaskbarIcon  -   5          Name$ myIcon��5         
IconSource$ /Icons/shutdown.ico��5         DoubleClickCommand# [  5         TrayToolTip 5      �� 5      
�������
���   �$��2q�5       �� CornerRadius$ 0��5      $	��260��5      $��40��5      ._�5      �� -   5        	 ��Name$	 trayText��5      $��Center=�5      $��Center=�5      $
��Bold"�5       5"      5$      �� 5&   
   -   5        
 ��Name$
 
stopButton��5&      $
��Stop��6%   $
��Left=�64   $��
15,246,0,0q�6O   $	��Top=�6c   $��88��6{   6�   �� 5'   
   -   5        $
 startButton��5'      $��Start��6&   $
��Left=�66   $��108,246,0,0q�6Q   $	��Top=�6f   $��85��6~   6�   �� 5(   
   -   5        $
 
hideButton��5(      $��Hide to tray��6%   $
��Left=�6<   $��
15,279,0,0q�6W   $	��Top=�6k   $	��178��6�   6�   �� 5)   
   -   5         ��Name$ label��5)      $�� Windows will shutdown at��6   $��15(�6C   $
��Left=�6Q   $��	10,10,0,0q�6l   $	��Top=�6   $	��199��6�   �� 5*   
   -   5        $ 
hoursLabel��5*      $��Hours��6$   $
��Left=�64   $��	54,76,0,0q�6O   $	��Top=�6b   �� 5+   
   -   5        $ minutesLabel��5+      $��Minutes��6&   $
��Left=�68   $��
114,76,0,0q�6S   $	��Top=�6g   �� 5,   
   -	   5        $ 	separator��5,      $��:��6#   $��35(�6/   $
��Left=�6=   $��	96,95,0,0q�6X   $	��Top=�6k   $��51��6�   �� 5-   
   -
   5         ��Name$ hoursSlider��5-      $
��Left=�6&   $��
24,180,0,0q�6A   $	��Top=�6U   $	��159��6m    � Minimum$ 0Q�5.       � Maximum$	 120Q�6    �� TickFrequency$ 1Q�6+    �� IsSnapToTickEnabled . 6X   �� 5/   
   -   5        $ minutesSlider��5/      $
��Left=�6(   $��
24,207,0,0q�6C   $	��Top=�6W   $	��159��6o   $ 0Q�50      $ 59Q�6   $ 1Q�6*    . 6W   �� 51   
   -   5         ��Name$ hoursBox��51      $
��Left=�6$   $��60��6?   $��	13,95,0,0q�6K    �� TextWrapping$
 Wrap=�6^   $	��Top=�6r   $��83��6�   $��40(�52       �� TextAlignment$ Right=�6    $��0q�66   ��6J   ��  �� ElementName$ hoursSlider�� �� Path$ Value�6~   �� 53   
   -   5        $ 
minutesBox��53      $
��Left=�6&   $��60��6A   $��
114,95,0,0q�6M   $
 Wrap=�6a   $	��Top=�6u   $��85��6�   $��40(�54      $
 Left=�6    $��0q�65   ��6I   �� $ minutesSlider��$ Value�6   �� 55   
   -   5        $ 
secondsBox��55      $
��Left=�6&   $��21��6A   $��
95,142,0,0q�6M   $
 Wrap=�6a   $	��Top=�6u   $��27��6�   $��16(�56      $
 Left=�6    $��0q�65   $
��Bold"�6I   
�������|�.  6r   �� 57   
   -   5        $ tbTimeAt��57      $
��Left=�6$   $ Center=�6?   $��21��6V   $��	10,37,0,0q�6b   $
 Wrap=�6u   $	��Top=�6�   $	��199��6�   $��16(�58      $��0q�6    5:      5<      