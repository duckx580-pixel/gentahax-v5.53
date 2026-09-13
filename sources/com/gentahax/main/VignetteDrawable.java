package com.gentahax.main;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.RadialGradient;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;

/* JADX INFO: loaded from: classes5.dex */
public class VignetteDrawable extends Drawable {
    private int height;
    private final Paint paint = new Paint(1);
    private int width;

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        this.width = canvas.getWidth();
        this.height = canvas.getHeight();
        this.paint.setShader(new RadialGradient(this.width / 2.0f, this.height / 2.0f, 0.7f * Math.max(r1, r4), new int[]{0, -1442840576}, new float[]{0.5f, 1.0f}, Shader.TileMode.CLAMP));
        canvas.drawRect(0.0f, 0.0f, this.width, this.height, this.paint);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.paint.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.paint.setColorFilter(colorFilter);
    }
}
