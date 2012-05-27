include theos/makefiles/common.mk

TWEAK_NAME = webglenabler
webglenabler_FILES = Tweak.xm
webglenabler_CFLAGS = -Iwebkit -I/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS5.0.sdk/System/Library/Frameworks/Foundation.framework/Headers/
webglenabler_FRAMEWORKS = Foundation

include $(THEOS_MAKE_PATH)/tweak.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/WebGLEnabler.plist$(ECHO_END)
	$(ECHO_NOTHING)cp logo.png $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/WebGLEnabler.png$(ECHO_END)

