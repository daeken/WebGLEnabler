include theos/makefiles/common.mk

TWEAK_NAME = webglenabler
webglenabler_FILES = Tweak.xm
webglenabler_CFLAGS = -Iwebkit -I/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS5.0.sdk/System/Library/Frameworks/Foundation.framework/Headers/
webglenabler_FRAMEWORKS = Foundation

include $(THEOS_MAKE_PATH)/tweak.mk
