package com.gentahax.main;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.EditText;

/* JADX INFO: loaded from: classes5.dex */
public class LineNumberView extends View {
    private EditText attachedEditText;
    private int lineHeight;
    private Paint paint;

    public LineNumberView(Context context, final EditText editText) {
        super(context);
        this.attachedEditText = editText;
        Paint paint = new Paint();
        this.paint = paint;
        paint.setColor(Color.parseColor("#555555"));
        this.paint.setTextSize(30.0f);
        this.paint.setTypeface(Typeface.MONOSPACE);
        editText.post(new Runnable() { // from class: com.gentahax.main.LineNumberView$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m106lambda$new$0$comgentahaxmainLineNumberView(editText);
            }
        });
        editText.getViewTreeObserver().addOnScrollChangedListener(new ViewTreeObserver.OnScrollChangedListener() { // from class: com.gentahax.main.LineNumberView$$ExternalSyntheticLambda1
            @Override // android.view.ViewTreeObserver.OnScrollChangedListener
            public final void onScrollChanged() {
                this.f$0.invalidate();
            }
        });
    }

    /* JADX INFO: renamed from: lambda$new$0$com-gentahax-main-LineNumberView, reason: not valid java name */
    /* synthetic */ void m106lambda$new$0$comgentahaxmainLineNumberView(EditText editText) {
        this.lineHeight = editText.getLineHeight();
        invalidate();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int lineForVertical = this.attachedEditText.getLayout().getLineForVertical(this.attachedEditText.getScrollY());
        int lineForVertical2 = this.attachedEditText.getLayout().getLineForVertical(this.attachedEditText.getScrollY() + this.attachedEditText.getHeight());
        while (lineForVertical <= lineForVertical2) {
            int lineBaseline = this.attachedEditText.getLayout().getLineBaseline(lineForVertical);
            lineForVertical++;
            canvas.drawText(String.valueOf(lineForVertical), 10.0f, lineBaseline - this.attachedEditText.getScrollY(), this.paint);
        }
    }
}
