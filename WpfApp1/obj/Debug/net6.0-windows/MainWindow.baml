   M S B A M L   `   `   `  ????B  >WpfApp1, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:WpfApp1WpfApp1  5   	       WpfApp1.MainWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   'localclr-namespace:WpfApp1     5   	     ? Title$  
MainWindow??5   	   $	??450??6   $	??800??6)    J? CommandBindings 5
      )  #System.Windows.Input.CommandBinding  5   
   -   5           Command$ Close??5      6)     5   
   -   5        $
 Open??5      6(     5   
   -   5        $
 Save??5      6(    J? InputBindings 5      ?? 5   
    ?? Command$ Close??6   
 ?? Key$ Q??6%    ?? 	Modifiers$	 Altf?6-   .??5      ]? .+?5   
   o? $	??Top=?6   .@?5      m? $??Файл??6   .@?5      m? $??Открыть??6    m? Command$
 Open??6,    m? Icon 5      ?? 5      $6??0./Images/Icons/56x56/icons8-opened-folder-52.png??6    5      m? 5      $??Сохранить??6   $
 Save??6.    5      ?? 5       $-??'./Images/Icons/56x56/icons8-save-52.png??6    5"      ?? 5#      m? 5$      $??
Выход??6   $ Close??6*   	 m? InputGestureText$	 Alt-Q??6:    5%      ?? 5&      $2??,./Images/Icons/56x56/icons8-exit-sign-52.png??6    5(      5)      m? 5*      $??Правка??6   .@?5+      m? $??Вырезать??6   $	 Cut??6-    5,      ?? 5-      $,??&./Images/Icons/56x56/icons8-cut-52.png??6    5/      m? 50      $??Копировать??6   $
 Copy??6/    51      ?? 52      $-??'./Images/Icons/56x56/icons8-copy-52.png??6    54      m? 55      $??Вставить??6   $ Paste??6-    56      ?? 57      $.??(./Images/Icons/56x56/icons8-paste-52.png??6    59      ?? 5:      m? 5;      $??Выделить все??6   $ 	SelectAll??61   5>      m? 5?      $??Формат??6   .@?5@      m? $??
Шрифт??6    5A      ?? 5B      $-??'./Images/Icons/56x56/icons8-type-52.png??6    5D      5E      m? 5F      $??Справка??6   .@?5G      m? $??О программе??6    5H      ?? 5I      $-??'./Images/Icons/56x56/icons8-help-52.png??6    5K      5L      5M      c? 5O   
   $	??Top=?6   .@?5P      ?? $
??Open??6   .??5Q      ?? $??20??6   
 ? ToolTip$
 Открыть??6#   $6??0./Images/Icons/56x56/icons8-opened-folder-52.png??65   5R      ?? 5S      $
??Save??6   .??5T      ?? $??20??6   $
 Сохранить??6#   $-??'./Images/Icons/56x56/icons8-save-52.png??67   5U      ?? 5V      ?? 5W      $	??Cut??6   .??5X      ?? $??20??6   $
 Вырезать??6#   $,??&./Images/Icons/56x56/icons8-cut-52.png??67   5Y      ?? 5Z      .??5[      ?? $??20??6   $
 Копировать??6#   $-??'./Images/Icons/56x56/icons8-copy-52.png??68   5\      ?? 5]      .??5^      ?? $??20??6   $
 Вставить??6#   $.??(./Images/Icons/56x56/icons8-paste-52.png??66   5_      ?? 5`      ?? 5a      $
 
Выход??6   $??Close??6%   .??5b      ?? $??20??6   $2??,./Images/Icons/56x56/icons8-exit-sign-52.png??6#   5c      5d      ?? 5f   
   $??Bottom=?6   .@?5g      ?? $??Все хорошо??6   5h      ?? 5j   
   -   5         ??Name$ contentTextBox??5j         contentContextMenu ? ContextMenu# [  6.   5l      5m      