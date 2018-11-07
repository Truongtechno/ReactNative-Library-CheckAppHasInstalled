
package com.reactlibrary;

import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;

import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.Callback;

public class RNCheckAppHasInstalledModule extends ReactContextBaseJavaModule {

  private final ReactApplicationContext reactContext;

  public RNCheckAppHasInstalledModule(ReactApplicationContext reactContext) {
    super(reactContext);
    this.reactContext = reactContext;
  }


  @ReactMethod
  public void goToStore(String packageName) {
    if (!packageName.isEmpty()) {
      String urlRedirect = "https://play.google.com/store/apps/details?id=" + packageName;
      Intent i = new Intent(Intent.ACTION_VIEW);
      i.setData(Uri.parse(urlRedirect));
      getCurrentActivity().startActivity(i);
    }
  }

  @ReactMethod
  public void isAppInstalled(String packageName, Callback callback) {
    PackageManager pm = getCurrentActivity().getPackageManager();
    try {
      pm.getPackageInfo(packageName, PackageManager.GET_ACTIVITIES);
      if(pm.getApplicationInfo(packageName, 0).enabled){
        callback.invoke(true);
      }else{
        callback.invoke(false);
      }
    } catch (PackageManager.NameNotFoundException e) {
      e.printStackTrace();
      callback.invoke(false);
    }
  }


  @Override
  public String getName() {
    return "RNCheckAppHasInstalled";
  }


}