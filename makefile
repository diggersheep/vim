TARGET=~/
BACKUP=./backup/

#INSTALLATION
install: $(TARGET).vimrc $(TARGET).vim

$(TARGET).vimrc:
	cp vimrc $(TARGET).vimrc

$(TARGET).vim:
	mkdir $(TARGET).vim
	cp -r vim/* $(TARGET).vim/


#CLEAN
clean: clean_vimrc clean_vim
clean_vimrc: $(TARGET).vimrc
	rm -f $(TARGET).vimrc

clean_vim: $(TARGET).vim
	rm -rf $(TARGET).vim


#BACKUP
backup: $(BACKUP).vim $(BACKUP).vimrc

$(BACKUP).vimrc:
	cp $(TARGET).vimrc $(BACKUP).vimrc
$(BACKUP).vim:
	mkdir -r $(BACKUP).vim
	cp -r $(TARGET).vim/* $(BACKUP).vim/


clean_backup:
	rm -rf $(BACKUP)


