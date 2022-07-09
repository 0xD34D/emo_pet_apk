package com.living.emo.interfaces;

import android.net.Uri;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
/* loaded from: classes.dex */
public interface OpenFileChooserCallBack {
    void openFileChooser5CallBack(WebView webView, ValueCallback<Uri[]> valueCallback, WebChromeClient.FileChooserParams fileChooserParams);

    void openFileChooserCallBack(ValueCallback<Uri> valueCallback, String str);
}
