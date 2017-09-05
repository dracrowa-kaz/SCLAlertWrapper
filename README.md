
# react-native-sclalert-wrapper
This is wrapper library for SCLAlertView.
You can use native beautiful alert in ReactNative projects.

## Getting started

`$ npm install react-native-sclalert-wrapper --save`  
`$ yarn add react-native-sclalert-wrapper`
### Mostly automatic installation

~~$ react-native link react-native-sclalert-wrapper~~
It is not working for this project.

### Manual installation

#### iOS

1. You need pod install.  pod 'SCLAlertView-Objective-C'. then you need use_frameworks! and delete unnessesarry library in build phase.
2. In xcworkspace., in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
3. Go to `node_modules` ➜ `react-native-sclalert-wrapper` and add `RNSclalertWrapper.h and RNSclalertWrapper.m`
4. Run your project (`Cmd+R`)

## Usage
```javascript
import RNSclalertWrapper from 'react-native-sclalert-wrapper'

RNSclalertWrapper.showSCLAlertWithThreeButtons("success","失敗","ダメです","必要","不要","閉じる",
	function(callback) {
        console.log('In Callback', callback)
    }
)

-(void)showAlert:(SCLAlertView *)alert
ctrl:(UIViewController *)ctrl
title:(NSString *)title
subTitle:(NSString *)subTitle
type:(NSString *)type
```
