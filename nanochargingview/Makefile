ARCHS = armv7 arm64

include theos/makefiles/common.mk

BUNDLE_NAME = NanoChargingView
NanoChargingView_FILES = NanoChargingView.mm
NanoChargingView_INSTALL_PATH = /Library/PreferenceBundles
NanoChargingView_FRAMEWORKS = UIKit
NanoChargingView_PRIVATE_FRAMEWORKS = Preferences

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/NanoChargingView.plist$(ECHO_END)
