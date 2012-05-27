//#import "webkit/WebView.h"
#import <UIKit/UIKit.h>

%hook WebView

- (id)_initWithArguments:(id)arg1 {
	id temp = %orig;
	[temp _setWebGLEnabled:YES];
	return temp;
}
- (id)initWithFrame:(struct CGRect)arg1 {
        id temp = %orig;
        [temp _setWebGLEnabled:YES];
        return temp;
}
- (id)initWithFrame:(struct CGRect)arg1 frameName:(id)arg2 groupName:(id)arg3 {
        id temp = %orig;
        [temp _setWebGLEnabled:YES];
        return temp;
}

%end
