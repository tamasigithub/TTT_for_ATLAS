# Must do setupATLAS and lsetup root first!!
SOURCES = $(wildcard *.cxx)
OBJDIR  = objs
OBJECTS = $(SOURCES:%.cxx=$(OBJDIR)/%.o)
DEPENDS = ${OBJECTS:.o=.d}
MYLIB = /home/nhessey/lib
MYINC = /home/nhessey/inc/

CXX=g++
CXXFLAGS = -g `root-config --cflags` -I/usr/local/include -I$(MYINC) -MMD
# -I/usr/include/eigen3 
# -std=c++11  

PROGRAM = /home/nhessey/prog/svn/stripDig/stripDig

$(PROGRAM): $(OBJECTS) 
	echo $(CFLAGS)
	g++ -g -o $(PROGRAM) `root-config --ldflags` $(OBJECTS) `root-config --glibs` -L $(MYLIB) -l C3V
	cp $(PROGRAM) ~/bin

$(OBJDIR)/%.o: %.cxx  | $(OBJDIR)
	$(CXX) $(CXXFLAGS) -c -o $@ $<

# Make the directory to store .o and .d files in; it is an "order-only prerequisit" (preceded by a bar in dependency list)
# which avoids making it each time its contents change
$(OBJDIR):
	mkdir -p $@

-include ${DEPENDS}

.PHONY: clean

clean : 
	-rm $(DEPENDS) $(OBJECTS)
	-rmdir $(OBJDIR)

