MAKESUBDIRS=coccigui

ifneq ($(MAKECMDGOALS),distclean)
include ../../Makefile.config
endif

all:
all.opt:

depend:

clean:
	set -e; for i in $(MAKESUBDIRS); do $(MAKE) -C $$i clean; done
	rm -rf __pycache__
	rm -f *.pyc

distclean: clean

include ../../Makefile.common
