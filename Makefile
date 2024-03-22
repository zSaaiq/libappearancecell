ARCHS = arm64 arm64e
TARGET = iphone:clang:15.6
FINALPACKAGE = 1
PREFIX = $(THEOS)/toolchain/Xcode.xctoolchain/usr/bin/
THEOS_PACKAGE_SCHEME=rootless
include $(THEOS)/makefiles/common.mk

SUBPROJECTS += Library

ifeq ($(DEBUG), 1)
SUBPROJECTS += Example
endif

include $(THEOS_MAKE_PATH)/aggregate.mk
