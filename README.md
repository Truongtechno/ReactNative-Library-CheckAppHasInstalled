
# react-native-check-app-has-installed

## Getting started

`$ npm install react-native-check-app-has-installed --save`

### Mostly automatic installation

`$ react-native link react-native-check-app-has-installed`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-check-app-has-installed` and add `RNCheckAppHasInstalled.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNCheckAppHasInstalled.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainActivity.java`
  - Add `import com.reactlibrary.RNCheckAppHasInstalledPackage;` to the imports at the top of the file
  - Add `new RNCheckAppHasInstalledPackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-check-app-has-installed'
  	project(':react-native-check-app-has-installed').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-check-app-has-installed/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-check-app-has-installed')
  	```

#### Windows
[Read it! :D](https://github.com/ReactWindows/react-native)

1. In Visual Studio add the `RNCheckAppHasInstalled.sln` in `node_modules/react-native-check-app-has-installed/windows/RNCheckAppHasInstalled.sln` folder to their solution, reference from their app.
2. Open up your `MainPage.cs` app
  - Add `using Check.App.Has.Installed.RNCheckAppHasInstalled;` to the usings at the top of the file
  - Add `new RNCheckAppHasInstalledPackage()` to the `List<IReactPackage>` returned by the `Packages` method


## Usage
```javascript
import RNCheckAppHasInstalled from 'react-native-check-app-has-installed';

// TODO: What to do with the module?
RNCheckAppHasInstalled;
```
  