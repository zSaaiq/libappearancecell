ARCHS = arm64 arm64e
TARGET = iphone:clang:15.6
FINALPACKAGE = 1
PREFIX = $(THEOS)/toolchain/Xcode.xctoolchain/usr/bin/
THEOS_PACKAGE_SCHEME=rootless

include $(THEOS)/makefiles/common.mk

LIBRARY_NAME = libappearancecell

libappearancecell_FILES = $(wildcard *.m)
libappearancecell_CFLAGS = -fobjc-arc
libappearancecell_FRAMEWORKS = UIKit
libappearancecell_PRIVATE_FRAMEWORKS = Preferences

after-all::
	cp ../.theos/obj/libappearancecell.dylib $(THEOS)/lib
	mkdir -p $(THEOS_STAGING_DIR)/usr/include/libappearancecell
	cp ../libappearancecell.h $(THEOS_STAGING_DIR)/usr/include/libappearancecell
	mkdir -p $(THEOS)/include/libappearancecell/
	cp ../libappearancecell.h $(THEOS)/include/libappearancecell/libappearancecell.h

include $(THEOS_MAKE_PATH)/library.mk
include $(THEOS_MAKE_PATH)/aggregate.mk
