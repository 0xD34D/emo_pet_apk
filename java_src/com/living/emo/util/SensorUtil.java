package com.living.emo.util;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
/* loaded from: classes.dex */
public class SensorUtil implements SensorEventListener {
    private static SensorUtil instance;
    private SensorXYListener mCallBack;
    private Sensor sensor;
    private SensorManager sensorManager;

    /* loaded from: classes.dex */
    public interface SensorXYListener {
        void OnResult(float f, float f2);
    }

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(Sensor sensor, int i) {
    }

    private SensorUtil() {
    }

    public static SensorUtil getInstance() {
        if (instance == null) {
            instance = new SensorUtil();
        }
        return instance;
    }

    public void SetOnSensorListener(SensorXYListener sensorXYListener) {
        this.mCallBack = sensorXYListener;
    }

    public void setup(Context context) {
        SensorManager sensorManager = (SensorManager) context.getSystemService("sensor");
        this.sensorManager = sensorManager;
        this.sensor = sensorManager.getDefaultSensor(1);
    }

    public void enabled() {
        SensorManager sensorManager = this.sensorManager;
        if (sensorManager != null) {
            sensorManager.registerListener(this, this.sensor, 3);
        }
    }

    public void disEnabled() {
        SensorManager sensorManager = this.sensorManager;
        if (sensorManager != null) {
            sensorManager.unregisterListener(this);
        }
    }

    @Override // android.hardware.SensorEventListener
    public void onSensorChanged(SensorEvent sensorEvent) {
        float f = sensorEvent.values[0];
        float f2 = sensorEvent.values[1];
        float f3 = sensorEvent.values[2];
        SensorXYListener sensorXYListener = this.mCallBack;
        if (sensorXYListener != null) {
            sensorXYListener.OnResult(sensorEvent.values[0], sensorEvent.values[1]);
        }
    }
}
