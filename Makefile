ARCHS = armv7 arm64

include theos/makefiles/common.mk

TWEAK_NAME = NanoChargingView
NanoChargingView_FILES = Tweak.xm
NanoChargingView_FRAMEWORKS = UIKit

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
SUBPROJECTS += nanochargingview
include $(THEOS_MAKE_PATH)/aggregate.mk
