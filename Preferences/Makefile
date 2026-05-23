BUNDLE_NAME = AxolotlPrefs

ifeq ($(ROOTLESS),1)
TARGET := iphone:clang:latest:14.0
ARCHS = arm64 arm64e
$(BUNDLE_NAME)_BUNDLE_IDENTIFIER = com.macthemes.axolotl~rootless
else
TARGET := iphone:clang:latest:11.0
ARCHS = arm64 arm64e
$(BUNDLE_NAME)_BUNDLE_IDENTIFIER = com.macthemes.axolotl
endif

DEBUG = 0
FINALPACKAGE = 1

include $(THEOS)/makefiles/common.mk

$(BUNDLE_NAME)_CFLAGS = -fobjc-arc
$(BUNDLE_NAME)_FILES = $(wildcard *.m)
$(BUNDLE_NAME)_FRAMEWORKS = UIKit
$(BUNDLE_NAME)_INSTALL_PATH = /Library/PreferenceBundles

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp AxolotlPrefs.plist $(THEOS_STAGING_DIR)Library/PreferenceLoader/Preferences/AxolotlPrefs.plist$(ECHO_END)
