#!/usr/bin/python3
from tkinter import *
from tkinter import ttk 
top = Tk();

top.geometry("500x100");
top.title("Tool_setup");

menu = Menu(top)
top.config(menu=menu)
filemenu = Menu(menu)
menu.add_cascade(label='File', menu=filemenu)
filemenu.add_command(label='New')
filemenu.add_command(label='Open...')
filemenu.add_separator()
filemenu.add_command(label='Exit', command=top.quit)
helpmenu = Menu(menu)
menu.add_cascade(label='Help', menu=helpmenu)
helpmenu.add_command(label='About')

combobox = ttk.Combobox(top, width = 15 , textvariable = "mynumber");
combobox['values'] = ("Innovus","VCS","ICC");
combobox.grid(column = 2, row = 0);
combobox.current(1);

combo1 = ttk.Combobox(top,width =15);
combo1['values'] = ("1.0","1.1","1.2","2.1","2.2","2.3","2.4","2.5");
combo1.grid(row =1,column=2);
combo1.current(2);
Label(top, text='Tool_Name').grid(row=0,sticky=W)
Label(top, text='Version').grid(row=1)

B = Button(top, text = "Run",command=top.quit);
B.place(x = 100,y = 50)
top.mainloop();
