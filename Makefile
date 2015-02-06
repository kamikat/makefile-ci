
all:

%.flag: %.conf
	cd `basename $< .conf` && \
		(VERSION=`cat ../$<` make assemble 1>../`basename $< .conf`.log 2>&1) && \
		echo success > ../$@ || echo failed > ../$@

clean: *.conf
	touch $<

