MYLIB = /home/nhessey/lib
MYINC = /home/nhessey/inc/vector

OBJECTS = Cartesian3Vector.o Placement.o Cartesian2Vector.o

CPPFLAGS = -g -I..

tryit: libC3V.a test.o
	g++ -g -o tryit test.o -L . -lC3V 

libC3V.a: $(OBJECTS)
	ar -r libC3V.a $(OBJECTS)
	cp libC3V.a $(MYLIB)/libC3V.a
	cp Cartesian3Vector.h Placement.h Cartesian2Vector.h $(MYINC) 

$(OBJECTS): Cartesian3Vector.h Placement.h Cartesian2Vector.h
test.o: Cartesian3Vector.h Placement.h Cartesian2Vector.h

