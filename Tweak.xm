//#import "webkit/WebView.h"
#import <UIKit/UIKit.h>

id enable(id wv) {
	NSDictionary *defaults = [[NSUserDefaults standardUserDefaults] persistentDomainForName:@"com.daeken.webglenabler"];
	id value = [defaults objectForKey:@"enabled"];
	[wv _setWebGLEnabled:value != nil ? [value boolValue] : YES];
	return wv;
}

%hook WebView

- (id)_initWithArguments:(id)arg1 {
	return enable(%orig);
}
- (id)initWithFrame:(struct CGRect)arg1 {
	return enable(%orig);
}
- (id)initWithFrame:(struct CGRect)arg1 frameName:(id)arg2 groupName:(id)arg3 {
	return enable(%orig);
}

%end
