export ARCHS = armv7 arm64
export TARGET = iphone:clang:8.1
THEOS_PACKAGE_DIR_NAME = debs

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = NanoChargingView
NanoChargingView_FILES = Tweak.xm
NanoChargingView_FRAMEWORKS = UIKit
NanoChargingView_LDFLAGS += -Wl,-segalign,4000

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
