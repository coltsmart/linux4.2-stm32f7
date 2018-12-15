# $Id: Makefile.in,v 1.111 2015/08/05 23:15:41 tom Exp $
##############################################################################
# Copyright (c) 1998-2014,2015 Free Software Foundation, Inc.                #
#                                                                            #
# Permission is hereby granted, free of charge, to any person obtaining a    #
# copy of this software and associated documentation files (the "Software"), #
# to deal in the Software without restriction, including without limitation  #
# the rights to use, copy, modify, merge, publish, distribute, distribute    #
# with modifications, sublicense, and/or sell copies of the Software, and to #
# permit persons to whom the Software is furnished to do so, subject to the  #
# following conditions:                                                      #
#                                                                            #
# The above copyright notice and this permission notice shall be included in #
# all copies or substantial portions of the Software.                        #
#                                                                            #
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR #
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,   #
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL    #
# THE ABOVE COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER      #
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING    #
# FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER        #
# DEALINGS IN THE SOFTWARE.                                                  #
#                                                                            #
# Except as contained in this notice, the name(s) of the above copyright     #
# holders shall not be used in advertising or otherwise to promote the sale, #
# use or other dealings in this Software without prior written               #
# authorization.                                                             #
##############################################################################
#
# Author: Thomas E. Dickey
#
#  Simple makefile for c++ window class demo

# turn off _all_ suffix rules; we'll generate our own
.SUFFIXES:

SHELL		= /bin/sh


CF_MFLAGS 	= 

x		= 
o		= .o

MODEL		= ../objects
DESTDIR		= 
top_srcdir	= ..
srcdir		= .
prefix		= /usr
exec_prefix	= ${prefix}
bindir		= ${exec_prefix}/bin
libdir		= ${exec_prefix}/lib
includedir	= ${prefix}/include
includesubdir	= 

INCLUDEDIR	= $(DESTDIR)$(includedir)$(includesubdir)

PACKAGE		= ncursest

LIBTOOL		= 
LIBTOOL_OPTS	= 
LIBTOOL_CLEAN	= 
LIBTOOL_COMPILE	= 
LIBTOOL_LINK	= ${CC}
LIBTOOL_INSTALL	= 
LIBTOOL_UNINSTALL = 
LIBTOOL_VERSION = -version-number
LT_UNDEF	= 

INSTALL		= /usr/bin/install -c
INSTALL_LIB	= /usr/bin/install -c -m 644
INSTALL_DATA	= ${INSTALL} -m 644

AR		= arm-uclinuxeabi-ar
ARFLAGS		= -curv
AWK		= gawk
LD		= arm-uclinuxeabi-ld
LN_S		= ln -s -f

CXX_AR		= $(AR)
CXX_ARFLAGS	= $(ARFLAGS)
RANLIB		= arm-uclinuxeabi-ranlib

CXX		= arm-uclinuxeabi-g++
CPP		= arm-uclinuxeabi-g++ -E
CXXFLAGS	= -g -O2 
CXXLIBS		= -lstdc++ -lpthread

INCDIR		= ../include
CPPFLAGS	= -DHAVE_CONFIG_H -I. -I../include   -D_XOPEN_SOURCE=500 -D_FILE_OFFSET_BITS=64  -DNDEBUG

CTAGS		= ctags
ETAGS		= etags

CC		= ${CXX}
CCFLAGS		= $(CPPFLAGS) $(CXXFLAGS)

CFLAGS_LIBTOOL	= $(CCFLAGS)
CFLAGS_NORMAL	= $(CCFLAGS)
CFLAGS_DEBUG	= $(CCFLAGS) -g -DTRACE
CFLAGS_PROFILE	= $(CCFLAGS) -pg
CFLAGS_SHARED	= $(CCFLAGS) unknown

CFLAGS_DEFAULT	= $(CFLAGS_NORMAL)

NCURSES_MAJOR	= 6
NCURSES_MINOR	= 0
REL_VERSION     = 6.0
ABI_VERSION	= 6

LOCAL_LIBDIR	= /work/psl/SF/release/linux-cortexm-2.4.0/A2F/ncurses/lib

LINK		=  $(LIBTOOL_LINK) 
SHLIB_DIRS	= -L../lib
SHLIB_LIST	= $(SHLIB_DIRS) -lformt -lmenut -lpanelt -lncursest 

LIBROOT		= ncurses++

LIBNAME_LIBTOOL	= lib$(LIBROOT)t.la
LIBNAME_NORMAL	= lib$(LIBROOT)t.a
LIBNAME		= lib$(LIBROOT)t.a

LIBRARIES	=  ../lib/libncurses++t.a ../lib/libncurses++t_g.a

LINK_FLAGS	=  -L../lib -l$(LIBROOT)t
RPATH_LIST	= ${libdir}
MK_SHARED_LIB	= echo unknown

LINK_LIBTOOL	=  -L../lib $(LIBRARIES)
LINK_NORMAL	= $(LINK_FLAGS)
LINK_DEBUG	= $(LINK_FLAGS)
LINK_PROFILE	= $(LINK_FLAGS)
LINK_SHARED	= $(LINK_FLAGS)

# flags for test-programs
TEST_LIBS	= -lutil
TEST_ARGS	= -static -L../lib -lformt -lmenut -lpanelt -lncursest  -dynamic 
TEST_LDFLAGS	= $(TEST_ARGS) -mthumb -mcpu=cortex-m3 -L/work/psl/SF/release/linux-cortexm-2.4.0/A2F/root/usr/lib \
	 $(TEST_LIBS) -lpthread  $(CXXLIBS)

LDFLAGS_LIBTOOL	= $(TEST_LDFLAGS) $(CFLAGS_LIBTOOL)
LDFLAGS_NORMAL	= $(TEST_LDFLAGS) $(CFLAGS_NORMAL)
LDFLAGS_DEBUG	= $(TEST_LDFLAGS) $(CFLAGS_DEBUG)
LDFLAGS_PROFILE	= $(TEST_LDFLAGS) $(CFLAGS_PROFILE)
LDFLAGS_SHARED	= $(TEST_LDFLAGS) $(CFLAGS_SHARED) 

LDFLAGS_DEFAULT	= $(LINK_NORMAL) $(LDFLAGS_NORMAL)

# flags for library built by this makefile
LDFLAGS		= $(TEST_ARGS) -mthumb -mcpu=cortex-m3 -L/work/psl/SF/release/linux-cortexm-2.4.0/A2F/root/usr/lib \
	 $(TEST_LIBS) -lpthread $(CXXLIBS)

AUTO_SRC	= \
		etip.h

all \
libs ::		$(AUTO_SRC) $(LIBRARIES)

all ::		demo$x

sources :	$(AUTO_SRC)

depend :

tags:
	$(CTAGS) *.[h] *.cc

$(DESTDIR)$(libdir) :
	mkdir -p $@

mostlyclean ::
	-rm -f core tags TAGS *~ *.bak *.i *.ii *.ln *.atac trace

clean :: mostlyclean
	-$(SHELL) -c "if test -n '$x' ; then $(MAKE) clean x=''; fi"
	-rm -rf $(MODEL)/SunWS_cache
	-$(LIBTOOL_CLEAN) rm -f demo$x $(AUTO_SRC) $(LIBRARIES) $(OBJS_DEMO)
	-rm -rf .libs *.dSYM

distclean :: clean
	-rm -f Makefile

realclean :: distclean

###############################################################################

internal_h	= $(srcdir)/internal.h \
		  $(INCDIR)/ncurses_cfg.h \
		  $(INCDIR)/nc_mingw.h \
		  $(INCDIR)/nc_string.h

etip_h		= etip.h \
		  $(INCDIR)/ncurses_dll.h

cursesw_h	= $(srcdir)/cursesw.h \
		  $(etip_h) \
		  $(INCDIR)/curses.h

cursesp_h	= $(srcdir)/cursesp.h \
		  $(cursesw_h) \
		  $(INCDIR)/panel.h

cursesf_h	= $(srcdir)/cursesf.h \
		  $(cursesp_h) \
		  $(INCDIR)/form.h

cursesm_h	= $(srcdir)/cursesm.h \
		  $(cursesp_h) \
		  $(INCDIR)/menu.h

cursslk_h	= $(srcdir)/cursslk.h \
		  $(cursesw_h)

cursesapp_h	= $(srcdir)/cursesapp.h \
		  $(cursslk_h)

$(INCDIR)/form.h :
	cd ../form && $(MAKE) $@

$(INCDIR)/menu.h :
	cd ../menu && $(MAKE) $@

$(INCDIR)/panel.h :
	cd ../panel && $(MAKE) $@

###############################################################################

OBJS_DEMO = $(MODEL)/demo$o

$(MODEL)/demo$o : $(srcdir)/demo.cc \
		$(internal_h) \
		$(cursesf_h) \
		$(cursesm_h) \
		$(cursesapp_h)
	@echo 'compiling demo (obj_s)'
	@$(LIBTOOL_COMPILE) $(CXX) $(CFLAGS_DEFAULT) -c $(srcdir)/demo.cc -o $@

demo$x:	$(OBJS_DEMO) \
	$(LIBRARIES)  \
	../lib/libformt.a ../lib/libmenut.a ../lib/libpanelt.a ../lib/libncursest.a 
	 $(LINK) -o $@ $(OBJS_DEMO) $(LDFLAGS_DEFAULT)

etip.h:	$(srcdir)/etip.h.in $(srcdir)/edit_cfg.sh
	cp $(srcdir)/etip.h.in $@
	$(SHELL) $(srcdir)/edit_cfg.sh ../include/ncurses_cfg.h $@

###############################################################################
# The remainder of this file is automatically generated during configuration
###############################################################################

# Generated by CF_LIB_RULES
resulting.map: 
	sed  -e "s/NCURSES\([WT]\+\)\?_/NCURSES\16_/g" -e "/deprecated in ABI6/d" <  >$@

clean::
	rm -f resulting.map

# generated by mk-0th.awk
#   libname:    c++t
#   subsets:    ticlib+termlib+ext_tinfo+base+ext_funcs

.SUFFIXES: .c .cc .h .i .ii
.c.i :
	$(CPP) $(CPPFLAGS) $< >$@
.cc.ii :
	$(CPP) $(CPPFLAGS) $< >$@
.h.i :
	$(CPP) $(CPPFLAGS) $< >$@

C_SRC = \
	$(srcdir)/cursesf.c \
	$(srcdir)/cursesm.c \
	$(srcdir)/cursesw.c \
	$(srcdir)/cursespad.c \
	$(srcdir)/cursesp.c \
	$(srcdir)/cursslk.c \
	$(srcdir)/cursesapp.c \
	$(srcdir)/cursesmain.c

lintlib :
	@echo no action needed

# generated by mk-1st.awk (subset=ticlib+termlib+ext_tinfo+base+ext_funcs)
#  name:          ncurses++t
#  traces:        DEBUG
#  MODEL:         NORMAL
#  CXX_MODEL:     NORMAL
#  model:         objects
#  prefix:        lib
#  suffix:        .a
#  subset:        ticlib+termlib+ext_tinfo+base+ext_funcs
#  driver:        no
#  ShlibVer:      auto
#  ShlibVerInfix: no
#  SymLink:       ln -s -f
#  TermlibRoot:   ncursest
#  TermlibSuffix: .a
#  ReLink:        no
#  DoLinks:       no
#  rmSoLocs:      no
#  ldconfig:      :
#  overwrite:     yes
#  depend:        ../include/ncurses_cfg.h
#  host:          arm-unknown-uclinuxeabi

NORMAL_OBJS = \
	../objects/cursesf$o \
	../objects/cursesm$o \
	../objects/cursesw$o \
	../objects/cursespad$o \
	../objects/cursesp$o \
	../objects/cursslk$o \
	../objects/cursesapp$o \
	../objects/cursesmain$o

$(NORMAL_OBJS) : ../include/ncurses_cfg.h

../lib/libncurses++t.a : $(NORMAL_OBJS)
	$(CXX_AR) $(CXX_ARFLAGS) $@ $?
	$(RANLIB) $@

install \
install.libs \
install.ncurses++t :: $(DESTDIR)$(libdir) ../lib/libncurses++t.a
	@echo installing ../lib/libncurses++t.a as $(DESTDIR)$(libdir)/libncurses++t.a
	$(INSTALL_DATA) ../lib/libncurses++t.a $(DESTDIR)$(libdir)/libncurses++t.a
	$(RANLIB) $(DESTDIR)$(libdir)/libncurses++t.a

uninstall \
uninstall.libs \
uninstall.ncurses++t ::
	@echo uninstalling $(DESTDIR)$(libdir)/libncurses++t.a
	-@rm -f $(DESTDIR)$(libdir)/libncurses++t.a

clean ::
	-rm -f ../lib/libncurses++t.a

mostlyclean::
	-rm -f $(NORMAL_OBJS)

# generated by mk-2nd.awk
#   model:      objects
#   MODEL:      NORMAL
#   echo:       yes
#   subset:     ticlib+termlib+ext_tinfo+base+ext_funcs
#   crenames:   yes
#   cxxrenames: yes
#   traces:     DEBUG
#   srcdir:     .

../objects/cursesf$o :	$(srcdir)/cursesf.cc \
			$(internal_h) \
			$(cursesf_h) \
			$(cursesapp_h)
	$(LIBTOOL_COMPILE) $(CXX) $(CFLAGS_NORMAL) -c ../c++/cursesf.cc -o ../objects/cursesf$o

../objects/cursesm$o :	$(srcdir)/cursesm.cc \
			$(internal_h) \
			$(cursesm_h) \
			$(cursesapp_h)
	$(LIBTOOL_COMPILE) $(CXX) $(CFLAGS_NORMAL) -c ../c++/cursesm.cc -o ../objects/cursesm$o

../objects/cursesw$o :	$(srcdir)/cursesw.cc \
			$(internal_h) \
			$(cursesw_h)
	$(LIBTOOL_COMPILE) $(CXX) $(CFLAGS_NORMAL) -c ../c++/cursesw.cc -o ../objects/cursesw$o

../objects/cursespad$o :	$(srcdir)/cursespad.cc \
			$(internal_h) \
			$(cursesw_h)
	$(LIBTOOL_COMPILE) $(CXX) $(CFLAGS_NORMAL) -c ../c++/cursespad.cc -o ../objects/cursespad$o

../objects/cursesp$o :	$(srcdir)/cursesp.cc \
			$(internal_h) \
			$(cursesp_h)
	$(LIBTOOL_COMPILE) $(CXX) $(CFLAGS_NORMAL) -c ../c++/cursesp.cc -o ../objects/cursesp$o

../objects/cursslk$o :	$(srcdir)/cursslk.cc \
			$(internal_h) \
			$(cursesapp_h)
	$(LIBTOOL_COMPILE) $(CXX) $(CFLAGS_NORMAL) -c ../c++/cursslk.cc -o ../objects/cursslk$o

../objects/cursesapp$o :	$(srcdir)/cursesapp.cc \
			$(internal_h) \
			$(cursesapp_h)
	$(LIBTOOL_COMPILE) $(CXX) $(CFLAGS_NORMAL) -c ../c++/cursesapp.cc -o ../objects/cursesapp$o

../objects/cursesmain$o :	$(srcdir)/cursesmain.cc \
			$(internal_h) \
			$(cursesapp_h) \
			$(INCDIR)/nc_alloc.h
	$(LIBTOOL_COMPILE) $(CXX) $(CFLAGS_NORMAL) -c ../c++/cursesmain.cc -o ../objects/cursesmain$o


# generated by mk-1st.awk (subset=ticlib+termlib+ext_tinfo+base+ext_funcs)
#  name:          ncurses++t
#  traces:        DEBUG
#  MODEL:         DEBUG
#  CXX_MODEL:     DEBUG
#  model:         obj_g
#  prefix:        lib
#  suffix:        _g.a
#  subset:        ticlib+termlib+ext_tinfo+base+ext_funcs
#  driver:        no
#  ShlibVer:      auto
#  ShlibVerInfix: no
#  SymLink:       ln -s -f
#  TermlibRoot:   ncursest
#  TermlibSuffix: .a
#  ReLink:        no
#  DoLinks:       no
#  rmSoLocs:      no
#  ldconfig:      :
#  overwrite:     yes
#  depend:        ../include/ncurses_cfg.h
#  host:          arm-unknown-uclinuxeabi

DEBUG_OBJS = \
	../obj_g/cursesf$o \
	../obj_g/cursesm$o \
	../obj_g/cursesw$o \
	../obj_g/cursespad$o \
	../obj_g/cursesp$o \
	../obj_g/cursslk$o \
	../obj_g/cursesapp$o \
	../obj_g/cursesmain$o

$(DEBUG_OBJS) : ../include/ncurses_cfg.h

../lib/libncurses++t_g.a : $(DEBUG_OBJS)
	$(CXX_AR) $(CXX_ARFLAGS) $@ $?
	$(RANLIB) $@

install \
install.libs \
install.ncurses++t :: $(DESTDIR)$(libdir) ../lib/libncurses++t_g.a
	@echo installing ../lib/libncurses++t_g.a as $(DESTDIR)$(libdir)/libncurses++t_g.a
	$(INSTALL_DATA) ../lib/libncurses++t_g.a $(DESTDIR)$(libdir)/libncurses++t_g.a
	$(RANLIB) $(DESTDIR)$(libdir)/libncurses++t_g.a

uninstall \
uninstall.libs \
uninstall.ncurses++t ::
	@echo uninstalling $(DESTDIR)$(libdir)/libncurses++t_g.a
	-@rm -f $(DESTDIR)$(libdir)/libncurses++t_g.a

clean ::
	-rm -f ../lib/libncurses++t_g.a

mostlyclean::
	-rm -f $(DEBUG_OBJS)

# generated by mk-2nd.awk
#   model:      obj_g
#   MODEL:      DEBUG
#   echo:       yes
#   subset:     ticlib+termlib+ext_tinfo+base+ext_funcs
#   crenames:   yes
#   cxxrenames: yes
#   traces:     DEBUG
#   srcdir:     .

../obj_g/cursesf$o :	$(srcdir)/cursesf.cc \
			$(internal_h) \
			$(cursesf_h) \
			$(cursesapp_h)
	$(LIBTOOL_COMPILE) $(CXX) $(CFLAGS_DEBUG) -c ../c++/cursesf.cc -o ../obj_g/cursesf$o

../obj_g/cursesm$o :	$(srcdir)/cursesm.cc \
			$(internal_h) \
			$(cursesm_h) \
			$(cursesapp_h)
	$(LIBTOOL_COMPILE) $(CXX) $(CFLAGS_DEBUG) -c ../c++/cursesm.cc -o ../obj_g/cursesm$o

../obj_g/cursesw$o :	$(srcdir)/cursesw.cc \
			$(internal_h) \
			$(cursesw_h)
	$(LIBTOOL_COMPILE) $(CXX) $(CFLAGS_DEBUG) -c ../c++/cursesw.cc -o ../obj_g/cursesw$o

../obj_g/cursespad$o :	$(srcdir)/cursespad.cc \
			$(internal_h) \
			$(cursesw_h)
	$(LIBTOOL_COMPILE) $(CXX) $(CFLAGS_DEBUG) -c ../c++/cursespad.cc -o ../obj_g/cursespad$o

../obj_g/cursesp$o :	$(srcdir)/cursesp.cc \
			$(internal_h) \
			$(cursesp_h)
	$(LIBTOOL_COMPILE) $(CXX) $(CFLAGS_DEBUG) -c ../c++/cursesp.cc -o ../obj_g/cursesp$o

../obj_g/cursslk$o :	$(srcdir)/cursslk.cc \
			$(internal_h) \
			$(cursesapp_h)
	$(LIBTOOL_COMPILE) $(CXX) $(CFLAGS_DEBUG) -c ../c++/cursslk.cc -o ../obj_g/cursslk$o

../obj_g/cursesapp$o :	$(srcdir)/cursesapp.cc \
			$(internal_h) \
			$(cursesapp_h)
	$(LIBTOOL_COMPILE) $(CXX) $(CFLAGS_DEBUG) -c ../c++/cursesapp.cc -o ../obj_g/cursesapp$o

../obj_g/cursesmain$o :	$(srcdir)/cursesmain.cc \
			$(internal_h) \
			$(cursesapp_h) \
			$(INCDIR)/nc_alloc.h
	$(LIBTOOL_COMPILE) $(CXX) $(CFLAGS_DEBUG) -c ../c++/cursesmain.cc -o ../obj_g/cursesmain$o


# generated by mk-hdr.awk
#  subset:     ticlib+termlib+ext_tinfo+base+ext_funcs
#  compat:     yes

${INCLUDEDIR} :
	mkdir -p $@

install \
install.libs \
install.includes :: ${AUTO_SRC} ${INCLUDEDIR} \
		$(srcdir)/cursesapp.h \
		$(srcdir)/cursesf.h \
		$(srcdir)/cursesm.h \
		$(srcdir)/cursesp.h \
		$(srcdir)/cursesw.h \
		$(srcdir)/cursslk.h \
		etip.h
	@ (cd ${INCLUDEDIR} && rm -f cursesapp.h) ; ../headers.sh ${INSTALL_DATA} ${INCLUDEDIR} ${srcdir} $(srcdir)/cursesapp.h
	@ (cd ${INCLUDEDIR} && rm -f cursesf.h) ; ../headers.sh ${INSTALL_DATA} ${INCLUDEDIR} ${srcdir} $(srcdir)/cursesf.h
	@ (cd ${INCLUDEDIR} && rm -f cursesm.h) ; ../headers.sh ${INSTALL_DATA} ${INCLUDEDIR} ${srcdir} $(srcdir)/cursesm.h
	@ (cd ${INCLUDEDIR} && rm -f cursesp.h) ; ../headers.sh ${INSTALL_DATA} ${INCLUDEDIR} ${srcdir} $(srcdir)/cursesp.h
	@ (cd ${INCLUDEDIR} && rm -f cursesw.h) ; ../headers.sh ${INSTALL_DATA} ${INCLUDEDIR} ${srcdir} $(srcdir)/cursesw.h
	@ (cd ${INCLUDEDIR} && rm -f cursslk.h) ; ../headers.sh ${INSTALL_DATA} ${INCLUDEDIR} ${srcdir} $(srcdir)/cursslk.h
	@ (cd ${INCLUDEDIR} && rm -f etip.h) ; ../headers.sh ${INSTALL_DATA} ${INCLUDEDIR} ${srcdir} etip.h

uninstall \
uninstall.libs \
uninstall.includes ::
	-@ (cd ${INCLUDEDIR} && rm -f cursesapp.h)
	-@ (cd ${INCLUDEDIR} && rm -f cursesf.h)
	-@ (cd ${INCLUDEDIR} && rm -f cursesm.h)
	-@ (cd ${INCLUDEDIR} && rm -f cursesp.h)
	-@ (cd ${INCLUDEDIR} && rm -f cursesw.h)
	-@ (cd ${INCLUDEDIR} && rm -f cursslk.h)
	-@ (cd ${INCLUDEDIR} && rm -f etip.h)
