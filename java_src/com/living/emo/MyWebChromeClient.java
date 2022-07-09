package com.living.emo;

import android.net.Uri;
import android.webkit.JsResult;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import com.living.emo.interfaces.OpenFileChooserCallBack;
import com.living.emo.util.LogUtil;
/* loaded from: classes.dex */
public class MyWebChromeClient extends WebChromeClient {
    private OpenFileChooserCallBack mOpenFileChooserCallBack;

    @Override // android.webkit.WebChromeClient
    public boolean onJsAlert(WebView webView, String str, String str2, JsResult jsResult) {
        return true;
    }

    public MyWebChromeClient(OpenFileChooserCallBack openFileChooserCallBack) {
        this.mOpenFileChooserCallBack = openFileChooserCallBack;
    }

    @Override // android.webkit.WebChromeClient
    public boolean onShowFileChooser(WebView webView, ValueCallback<Uri[]> valueCallback, WebChromeClient.FileChooserParams fileChooserParams) {
        LogUtil.m64e("hagan", "onShowFileChooser");
        this.mOpenFileChooserCallBack.openFileChooser5CallBack(webView, valueCallback, fileChooserParams);
        return true;
    }

    public void openFileChooser(ValueCallback<Uri> valueCallback, String str) {
        this.mOpenFileChooserCallBack.openFileChooserCallBack(valueCallback, str);
    }

    public void openFileChooser(ValueCallback<Uri> valueCallback) {
        openFileChooser(valueCallback, "");
    }

    public void openFileChooser(ValueCallback<Uri> valueCallback, String str, String str2) {
        openFileChooser(valueCallback, str);
    }
}
