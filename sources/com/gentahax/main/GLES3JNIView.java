package com.gentahax.main;

import android.content.Context;
import android.opengl.GLSurfaceView;
import android.os.SystemClock;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;

/* JADX INFO: loaded from: classes5.dex */
public class GLES3JNIView extends GLSurfaceView implements GLSurfaceView.Renderer {
    static long m_gameTimer = 0;
    static int m_timerLoopMS = 16;

    public static native int[] nativeGetTouchRect();

    public static native void nativeOnDetachedFromWindow();

    public static native void nativeOnDrawFrame();

    public static native void nativeOnSurfaceChanged(int i, int i2);

    public static native void nativeOnSurfaceCreated();

    public static native boolean nativeOnTouch(int i, float f, float f2, int i2);

    public GLES3JNIView(Context context) {
        super(context);
        setEGLConfigChooser(8, 8, 8, 8, 16, 0);
        getHolder().setFormat(-3);
        setEGLContextClientVersion(3);
        setRenderer(this);
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public void onDrawFrame(GL10 gl10) {
        if (m_timerLoopMS != 0) {
            while (true) {
                if (m_gameTimer <= SystemClock.uptimeMillis() && m_gameTimer <= SystemClock.uptimeMillis() + ((long) m_timerLoopMS) + 1) {
                    break;
                } else {
                    SystemClock.sleep(1L);
                }
            }
            m_gameTimer = SystemClock.uptimeMillis() + ((long) m_timerLoopMS);
        }
        nativeOnDrawFrame();
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public void onSurfaceChanged(GL10 gl10, int i, int i2) {
        nativeOnSurfaceChanged(i, i2);
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public void onSurfaceCreated(GL10 gl10, EGLConfig eGLConfig) {
        nativeOnSurfaceCreated();
    }

    @Override // android.opengl.GLSurfaceView, android.view.SurfaceView, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        nativeOnDetachedFromWindow();
    }

    public static void SetFPSLimit(int i) {
        m_timerLoopMS = (int) (1000.0f / i);
    }
}
