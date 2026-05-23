THEOS_DEVICE_IP = 0
DEBUG = 0
FINALPACKAGE = 1

ifeq ($(ROOTLESS),1)
TARGET := iphone:clang:16.5:14.0
ARCHS = arm64 arm64e
$(TWEAK_NAME)_BUNDLE_IDENTIFIER = com.macthemes.axolotl~rootless
else
TARGET := iphone:clang:14.5:11.4
ARCHS = arm64 arm64e
$(TWEAK_NAME)_BUNDLE_IDENTIFIER = com.macthemes.axolotl
endif

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = Axolotl
Axolotl_FILES = Tweak.xm
Axolotl_CFLAGS = -fobjc-arc -std=c++11

include $(THEOS)/makefiles/tweak.mk
