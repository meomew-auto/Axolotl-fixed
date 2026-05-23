THEOS_DEVICE_IP = 0
DEBUG = 0
FINALPACKAGE = 1

ifeq ($(ROOTLESS),1)
TARGET := iphone:clang:latest:14.0
ARCHS = arm64 arm64e
$(TWEAK_NAME)_BUNDLE_IDENTIFIER = com.macthemes.axolotl~rootless
else
TARGET := iphone:clang:latest:11.0
ARCHS = arm64 arm64e
$(TWEAK_NAME)_BUNDLE_IDENTIFIER = com.macthemes.axolotl
endif

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = Axolotl
Axolotl_FILES = Tweak.xm
Axolotl_CFLAGS = -fobjc-arc -std=c++11 -Wno-deprecated-declarations

include $(THEOS)/makefiles/tweak.mk

SUBPROJECTS += Preferences
include $(THEOS_MAKE_PATH)/aggregate.mk
