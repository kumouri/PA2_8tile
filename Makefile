all:
	make edit

clean:
	rm -f *.o

edit:
	gedit --new-window *.lsp &
