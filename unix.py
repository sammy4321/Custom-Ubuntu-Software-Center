import time
import Tkinter
import ttk
import os
import socket
os.system("ls docs > new3.txt")
os.system("sort -o new3.txt new3.txt")
sh=10
ho=10
aflag=0
rflag=0
def sender():
	a=Send_Entry.get()
	if a!="":
		s=socket.socket()
      		port=12345
       		s.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
		os.system("ip addr | grep 'state UP' -A2 | tail -n1 | awk '{print $2}' | cut -f1  -d'/' > new.txt")
		f1=open('new.txt','r')
		f=f1.readline()
		f1.close()
		s.bind((f[:12],port))
       		s.listen(5)
        	c,addr=s.accept()
		c.send(a)
def seek_help():
	send.configure(state=Tkinter.DISABLED)
	Send_Entry.configure(state=Tkinter.DISABLED)
	ip_address.configure(state=Tkinter.NORMAL)
	s=socket.socket()
	s.connect((ip_address.get(),12345))
	t0=time.clock()
	while True:
	        a=s.recv(1024)
        	if a!="" :
                	k="gnome-terminal -x sh -c \""+a+"\""
			os.system(k)
		if time.clock()-t0 >10 :
			break
		s.close


def help_other():
	send.configure(state=Tkinter.NORMAL)
	Send_Entry.configure(state=Tkinter.NORMAL)
	send.configure(command=sender)
	ip_address.configure(state=Tkinter.DISABLED)




def install():
	a=List.curselection()
	str=List.get(a[0])
	str=str[5:]
	str="gnome-terminal -e docs/./"+str+".sh"
	os.system(str)



def clicked():
	s=search.get()
	print(s)
	List.delete(0,x)
	if s!="":
		label.configure(text="Based On Your Search : ")
		s="cat new3.txt | grep -i "+s+" > search.txt"
		os.system(s)
		f1=open('search.txt','r+')
		y=0
		for line in f1:
			line="     "+line[:len(line)-4]
			List.insert(y,line)
			y=y+1
		f1.close()
	else:
		label.configure(text="All Available Options : ")
		f1=open('new3.txt','r+')
		y=0
		for line in f1:
			line="     "+line[:len(line)-4]
			List.insert(y,line)
			y=y+1
		f1.close()
main_window=Tkinter.Tk()
main_window.wm_title("                                                                       Unix Project")
tab1=ttk.Notebook(main_window)
tab1.pack()
frame1=Tkinter.Frame(main_window,width=730,height=630)
frame1.pack()
tab1.add(frame1,text="                                 Package Installer                                  ",state="normal")
frame2=Tkinter.Frame(main_window,width=600,height=600)
frame2.pack()
tab1.add(frame2,text="                                 Online Help                                   ",state="normal")
search=Tkinter.Entry(frame1,bd=5)
search.place(x=200,y=13)
search_but=Tkinter.Button(frame1,text="        Search        ",command=clicked)
search_but.place(x=400,y=10)
List=Tkinter.Listbox(frame1,width=50,height=33)
x=0
fo=open('new3.txt','r')
for line in fo:
	line="     "+line[:len(line)-4]
	List.insert(x,line)
	x=x+1
label=Tkinter.Label(frame1,text="All Available Options : ")
label.place(x=160,y=80)
Scroll=Tkinter.Scrollbar(frame1,orient="vertical")
Scroll.config(command=List.yview)
Scroll.place(x=440,y=340)
Install_but=Tkinter.Button(frame1,text="     Install     ",command=install)
Install_but.place(x=530,y=150)
List.place(x=20,y=100)
List.config(yscrollcommand=Scroll.set)
List.activate(1)
ip_Label=Tkinter.Label(frame2,text="IP Address Of Remote Machine   :   ")
ip_Label.place(x=100,y=352)
Connect_out=Tkinter.Button(frame2,text="           Connect For Help          ",command=seek_help)
Connect_out.place(x=100,y=50)
Seek_connection=Tkinter.Button(frame2,text="             Connect To Help             ",command=help_other)
Seek_connection.place(x=400,y=50)
Send_Entry=Tkinter.Entry(frame2,width=70,state=Tkinter.DISABLED)
Send_Entry.place(x=20,y=140)
send=Tkinter.Button(frame2,text="        send        ",state=Tkinter.DISABLED)
ip_address=Tkinter.Entry(frame2,width=30)
ip_address.place(x=400,y=350)
send.place(x=600,y=136)
main_window.minsize(width=750, height=666)
main_window.maxsize(width=750, height=666)
main_window.mainloop()
