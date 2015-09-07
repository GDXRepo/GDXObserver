# GDXObserver

GDXObserver is the light-weight notifications management simplifying library.

## Adding GDXObserver to your project

### CocoaPods

[CocoaPods](http://cocoapods.org) is the recommended way to add GDXObserver to your project.

1. Add a pod entry for GDXObserver to your Podfile `pod 'GDXObserver'`
2. Update the pod(s) by running `pod update`.
3. Include library files wherever you need it with `#import "NSObject+GDXObserver.h"`.

### Source files

Alternatively you can directly add the `NSObject+GDXObserver.h` and `NSObject+GDXObserver.m` source files to your project.

1. Download the [latest code version](https://github.com/GDXRepo/GDXObserver/archive/master.zip) or add the repository as a git submodule to your git-tracked project.
2. Open your project in Xcode, then drag and drop `NSObject+GDXObserver.h` and `NSObject+GDXObserver.m` onto your project (use the "Project Navigator view"). Make sure to select Copy items when asked if you extracted the code archive outside of your project.
3. Include library files wherever you need it with `NSObject+GDXObserver.h`.

## Usage

GDXObserver implements the `NSObject` class category which supports several convenient macro and methods.

```objective-c
// use this macro to define your notifications in your class header file
NFDEFINE(YourClassDidUpdate); // will declare "kNotificationYourClassDidUpdate" static string

// use this macro to define your notifications userInfo parameter keys
NFDEFINEKEY(UserId); // will declare "kNotificationKeyUserId" static string

// inside your classes you can manage your subscriptions with the set of methods
[self subscribe:kNotificationYourClassDidUpdate selector:@selector(mySelector:)];
[self unsubscribe:kNotificationYourClassDidUpdate];
[self unsubscribeAll];

// here is your observing method implementation example
- (void)mySelector:(NSNotification *)notification {
    NSNumber *userId = notification.userInfo[kNotificationKeyUserId];
    // ...
}

// inside your notifiers you can use this method
[self notify:kNotificationYourClassDidUpdate userInfo:@{kNotificationKeyUserId : @33}];
```

## License

Apache. See `LICENSE` for details.
