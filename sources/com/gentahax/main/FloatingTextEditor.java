package com.gentahax.main;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings;
import android.text.Editable;
import android.text.Spannable;
import android.text.TextWatcher;
import android.text.style.ForegroundColorSpan;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.Toast;
import com.json.mediationsdk.utils.IronSourceConstants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes5.dex */
public class FloatingTextEditor {
    Activity ctx;
    private static final Pattern KEYWORD_PATTERN = Pattern.compile("\\b(function|end|local|then|elseif|else|if|while|for|do|repeat|until|return|break|in|and|or|not|nil|true|false)\\b");
    private static final Pattern STRING_PATTERN = Pattern.compile("\"(.*?)\"|'(.*?)'");
    private static final Pattern COMMENT_PATTERN = Pattern.compile("--.*?$", 8);
    private static final Pattern NUMBER_PATTERN = Pattern.compile("\\b\\d+\\b");
    private static final Pattern ARRAY_PATTERN = Pattern.compile("\\[[0-9]+\\]");
    private static final Pattern ATTRIBUTE_PATTERN = Pattern.compile("\\b[a-z]+[A-Z][a-zA-Z0-9_]*\\b");
    private static final Pattern PARAMS_PATTERN = Pattern.compile("function\\s+\\w*\\s*\\(([^)]*)\\)");
    private static final Pattern VARIABLE_PATTERN = Pattern.compile("\\blocal\\s+(\\w+)|\\b(\\w+)\\s*=");
    private boolean isHighlightEnabled = true;
    private int highlightDelay = IronSourceConstants.REWARDED_VIDEO_DAILY_CAPPED;
    private final Handler highlightHandler = new Handler(Looper.getMainLooper());
    private Runnable pendingHighlight = null;

    public FloatingTextEditor(Activity activity) {
        this.ctx = activity;
    }

    public void mBind(final String str) {
        if (!Settings.canDrawOverlays(this.ctx)) {
            Toast.makeText(this.ctx, "Please allow overlay permission", 1).show();
            this.ctx.startActivity(new Intent("android.settings.action.MANAGE_OVERLAY_PERMISSION", Uri.parse("package:" + this.ctx.getPackageName())));
            return;
        }
        this.ctx.runOnUiThread(new Runnable() { // from class: com.gentahax.main.FloatingTextEditor$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m104lambda$mBind$4$comgentahaxmainFloatingTextEditor(str);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$mBind$4$com-gentahax-main-FloatingTextEditor, reason: not valid java name */
    /* synthetic */ void m104lambda$mBind$4$comgentahaxmainFloatingTextEditor(String str) {
        final WindowManager windowManager = (WindowManager) this.ctx.getSystemService("window");
        final LinearLayout linearLayout = new LinearLayout(this.ctx);
        linearLayout.setOrientation(1);
        linearLayout.setPadding(20, 20, 20, 20);
        linearLayout.setBackgroundColor(Color.parseColor("#1E1E1E"));
        HorizontalScrollView horizontalScrollView = new HorizontalScrollView(this.ctx);
        ScrollView scrollView = new ScrollView(this.ctx);
        LinearLayout linearLayout2 = new LinearLayout(this.ctx);
        linearLayout2.setOrientation(0);
        final EditText editText = new EditText(this.ctx);
        editText.setText(str);
        editText.setTextColor(Color.parseColor("#CCCCCC"));
        editText.setHintTextColor(Color.parseColor("#888888"));
        editText.setBackgroundColor(Color.parseColor("#1E1E1E"));
        editText.setPadding(10, 10, 10, 10);
        editText.setTextSize(14.0f);
        editText.setGravity(8388659);
        editText.setTypeface(Typeface.MONOSPACE);
        editText.setLayoutParams(new LinearLayout.LayoutParams(-1, -2, 1.0f));
        editText.setFocusable(true);
        editText.setFocusableInTouchMode(true);
        final LineNumberView lineNumberView = new LineNumberView(this.ctx, editText);
        lineNumberView.setLayoutParams(new ViewGroup.LayoutParams(100, -1));
        ViewTreeObserver viewTreeObserver = editText.getViewTreeObserver();
        Objects.requireNonNull(lineNumberView);
        viewTreeObserver.addOnScrollChangedListener(new ViewTreeObserver.OnScrollChangedListener() { // from class: com.gentahax.main.FloatingTextEditor$$ExternalSyntheticLambda3
            @Override // android.view.ViewTreeObserver.OnScrollChangedListener
            public final void onScrollChanged() {
                lineNumberView.invalidate();
            }
        });
        editText.addTextChangedListener(new TextWatcher() { // from class: com.gentahax.main.FloatingTextEditor.1
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                if (FloatingTextEditor.this.isHighlightEnabled) {
                    FloatingTextEditor.this.highlightLuaAsync(editText);
                }
            }
        });
        linearLayout2.addView(lineNumberView);
        linearLayout2.addView(editText);
        scrollView.addView(linearLayout2);
        horizontalScrollView.addView(scrollView);
        linearLayout.addView(horizontalScrollView, new LinearLayout.LayoutParams(-1, 0, 1.0f));
        LinearLayout linearLayout3 = new LinearLayout(this.ctx);
        linearLayout3.setOrientation(0);
        linearLayout3.setPadding(10, 10, 10, 10);
        CheckBox checkBox = new CheckBox(this.ctx);
        checkBox.setText("Emulator Mode");
        checkBox.setTextColor(-1);
        CheckBox checkBox2 = new CheckBox(this.ctx);
        checkBox2.setText("Highlight");
        checkBox2.setTextColor(-1);
        checkBox2.setChecked(true);
        final EditText editText2 = new EditText(this.ctx);
        editText2.setHint("Delay ms");
        editText2.setText("150");
        editText2.setInputType(2);
        editText2.setTextColor(-1);
        editText2.setBackgroundColor(Color.parseColor("#2D2D2D"));
        editText2.setPadding(20, 0, 20, 0);
        editText2.setMinEms(4);
        editText2.setMaxEms(6);
        linearLayout3.addView(checkBox);
        linearLayout3.addView(checkBox2);
        linearLayout3.addView(editText2);
        linearLayout.addView(linearLayout3);
        LinearLayout linearLayout4 = new LinearLayout(this.ctx);
        linearLayout4.setOrientation(0);
        linearLayout4.setGravity(17);
        Button button = new Button(this.ctx);
        button.setText("Done");
        button.setBackgroundColor(Color.parseColor("#4CAF50"));
        button.setTextColor(-1);
        Button button2 = new Button(this.ctx);
        button2.setText("Cancel");
        button2.setBackgroundColor(Color.parseColor("#F44336"));
        button2.setTextColor(-1);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, -2, 1.0f);
        layoutParams.setMargins(10, 20, 10, 20);
        linearLayout4.addView(button, layoutParams);
        linearLayout4.addView(button2, layoutParams);
        linearLayout.addView(linearLayout4);
        final WindowManager.LayoutParams layoutParams2 = new WindowManager.LayoutParams(-1, -1, getOverlayType(), 1312, -3);
        layoutParams2.gravity = 48;
        layoutParams2.y = 50;
        windowManager.addView(linearLayout, layoutParams2);
        button.setOnClickListener(new View.OnClickListener() { // from class: com.gentahax.main.FloatingTextEditor$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FloatingTextEditor.lambda$mBind$0(editText, windowManager, linearLayout, view);
            }
        });
        button2.setOnClickListener(new View.OnClickListener() { // from class: com.gentahax.main.FloatingTextEditor$$ExternalSyntheticLambda5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                windowManager.removeView(linearLayout);
            }
        });
        checkBox.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.gentahax.main.FloatingTextEditor$$ExternalSyntheticLambda6
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                this.f$0.m102lambda$mBind$2$comgentahaxmainFloatingTextEditor(windowManager, linearLayout, layoutParams2, editText, compoundButton, z);
            }
        });
        checkBox2.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.gentahax.main.FloatingTextEditor$$ExternalSyntheticLambda7
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                this.f$0.m103lambda$mBind$3$comgentahaxmainFloatingTextEditor(editText, compoundButton, z);
            }
        });
        editText2.addTextChangedListener(new TextWatcher() { // from class: com.gentahax.main.FloatingTextEditor.2
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                try {
                    int i = Integer.parseInt(editable.toString());
                    FloatingTextEditor.this.highlightDelay = Math.max(50, i);
                } catch (NumberFormatException unused) {
                    FloatingTextEditor.this.highlightDelay = IronSourceConstants.REWARDED_VIDEO_DAILY_CAPPED;
                    editText2.setText(String.valueOf(FloatingTextEditor.this.highlightDelay));
                    EditText editText3 = editText2;
                    editText3.setSelection(editText3.getText().length());
                }
            }
        });
        highlightLuaAsync(editText);
    }

    static /* synthetic */ void lambda$mBind$0(EditText editText, WindowManager windowManager, LinearLayout linearLayout, View view) {
        MenuActivity.InitTextEditor(editText.getText().toString());
        windowManager.removeView(linearLayout);
    }

    /* JADX INFO: renamed from: lambda$mBind$2$com-gentahax-main-FloatingTextEditor, reason: not valid java name */
    /* synthetic */ void m102lambda$mBind$2$comgentahaxmainFloatingTextEditor(WindowManager windowManager, LinearLayout linearLayout, WindowManager.LayoutParams layoutParams, EditText editText, CompoundButton compoundButton, boolean z) {
        windowManager.removeView(linearLayout);
        layoutParams.flags = z ? 131328 : 288;
        windowManager.addView(linearLayout, layoutParams);
        if (z) {
            return;
        }
        editText.requestFocus();
        ((InputMethodManager) this.ctx.getSystemService("input_method")).toggleSoftInput(2, 0);
    }

    /* JADX INFO: renamed from: lambda$mBind$3$com-gentahax-main-FloatingTextEditor, reason: not valid java name */
    /* synthetic */ void m103lambda$mBind$3$comgentahaxmainFloatingTextEditor(EditText editText, CompoundButton compoundButton, boolean z) {
        this.isHighlightEnabled = !z;
        if (!z) {
            highlightLuaAsync(editText);
            return;
        }
        Editable text = editText.getText();
        for (ForegroundColorSpan foregroundColorSpan : (ForegroundColorSpan[]) text.getSpans(0, text.length(), ForegroundColorSpan.class)) {
            text.removeSpan(foregroundColorSpan);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void highlightLuaAsync(final EditText editText) {
        Runnable runnable = this.pendingHighlight;
        if (runnable != null) {
            this.highlightHandler.removeCallbacks(runnable);
        }
        Runnable runnable2 = new Runnable() { // from class: com.gentahax.main.FloatingTextEditor$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m101lambda$highlightLuaAsync$7$comgentahaxmainFloatingTextEditor(editText);
            }
        };
        this.pendingHighlight = runnable2;
        this.highlightHandler.postDelayed(runnable2, this.highlightDelay);
    }

    /* JADX INFO: renamed from: lambda$highlightLuaAsync$7$com-gentahax-main-FloatingTextEditor, reason: not valid java name */
    /* synthetic */ void m101lambda$highlightLuaAsync$7$comgentahaxmainFloatingTextEditor(EditText editText) {
        final String string = editText.getText().toString();
        final Editable text = editText.getText();
        new Thread(new Runnable() { // from class: com.gentahax.main.FloatingTextEditor$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m100lambda$highlightLuaAsync$6$comgentahaxmainFloatingTextEditor(string, text);
            }
        }).start();
    }

    /* JADX INFO: renamed from: lambda$highlightLuaAsync$6$com-gentahax-main-FloatingTextEditor, reason: not valid java name */
    /* synthetic */ void m100lambda$highlightLuaAsync$6$comgentahaxmainFloatingTextEditor(String str, final Spannable spannable) {
        final ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        Matcher matcher = STRING_PATTERN.matcher(str);
        while (matcher.find()) {
            int iStart = matcher.start();
            int iEnd = matcher.end();
            arrayList2.add(new int[]{iStart, iEnd});
            arrayList.add(new Object[]{Integer.valueOf(iStart), Integer.valueOf(iEnd), "#6A9955"});
        }
        Matcher matcher2 = COMMENT_PATTERN.matcher(str);
        while (matcher2.find()) {
            arrayList.add(new Object[]{Integer.valueOf(matcher2.start()), Integer.valueOf(matcher2.end()), "#808080"});
        }
        Matcher matcher3 = KEYWORD_PATTERN.matcher(str);
        while (matcher3.find()) {
            if (!isInsideString(matcher3.start(), arrayList2)) {
                arrayList.add(new Object[]{Integer.valueOf(matcher3.start()), Integer.valueOf(matcher3.end()), "#CE9178"});
            }
        }
        Matcher matcher4 = NUMBER_PATTERN.matcher(str);
        while (matcher4.find()) {
            if (!isInsideString(matcher4.start(), arrayList2)) {
                arrayList.add(new Object[]{Integer.valueOf(matcher4.start()), Integer.valueOf(matcher4.end()), "#B5CEA8"});
            }
        }
        Matcher matcher5 = ARRAY_PATTERN.matcher(str);
        while (matcher5.find()) {
            if (!isInsideString(matcher5.start(), arrayList2)) {
                arrayList.add(new Object[]{Integer.valueOf(matcher5.start()), Integer.valueOf(matcher5.end()), "#569CD6"});
            }
        }
        Matcher matcher6 = ATTRIBUTE_PATTERN.matcher(str);
        while (matcher6.find()) {
            if (!isInsideString(matcher6.start(), arrayList2)) {
                arrayList.add(new Object[]{Integer.valueOf(matcher6.start()), Integer.valueOf(matcher6.end()), "#9CDCFE"});
            }
        }
        Matcher matcher7 = VARIABLE_PATTERN.matcher(str);
        while (true) {
            if (!matcher7.find()) {
                break;
            }
            for (int i = 1; i <= 2; i++) {
                if (matcher7.group(i) != null) {
                    int iStart2 = matcher7.start(i);
                    int iEnd2 = matcher7.end(i);
                    if (!isInsideString(iStart2, arrayList2)) {
                        arrayList.add(new Object[]{Integer.valueOf(iStart2), Integer.valueOf(iEnd2), "#DCDCAA"});
                    }
                }
            }
        }
        Matcher matcher8 = PARAMS_PATTERN.matcher(str);
        while (matcher8.find()) {
            String[] strArrSplit = matcher8.group(1).split(",");
            int iStart3 = matcher8.start(1);
            for (String str2 : strArrSplit) {
                String strTrim = str2.trim();
                if (!strTrim.isEmpty()) {
                    int iIndexOf = str.indexOf(strTrim, iStart3);
                    int length = strTrim.length() + iIndexOf;
                    if (iIndexOf >= 0 && length <= str.length() && !isInsideString(iIndexOf, arrayList2)) {
                        arrayList.add(new Object[]{Integer.valueOf(iIndexOf), Integer.valueOf(length), "#C586C0"});
                        iStart3 = length;
                    }
                }
            }
        }
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.gentahax.main.FloatingTextEditor$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                FloatingTextEditor.lambda$highlightLuaAsync$5(spannable, arrayList);
            }
        });
    }

    static /* synthetic */ void lambda$highlightLuaAsync$5(Spannable spannable, List list) {
        for (ForegroundColorSpan foregroundColorSpan : (ForegroundColorSpan[]) spannable.getSpans(0, spannable.length(), ForegroundColorSpan.class)) {
            spannable.removeSpan(foregroundColorSpan);
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Object[] objArr = (Object[]) it.next();
            int iIntValue = ((Integer) objArr[0]).intValue();
            int iIntValue2 = ((Integer) objArr[1]).intValue();
            String str = (String) objArr[2];
            if (iIntValue >= 0 && iIntValue2 <= spannable.length() && iIntValue < iIntValue2) {
                spannable.setSpan(new ForegroundColorSpan(Color.parseColor(str)), iIntValue, iIntValue2, 33);
            }
        }
    }

    private boolean isInsideString(int i, List<int[]> list) {
        boolean z;
        Iterator<int[]> it = list.iterator();
        while (true) {
            z = false;
            if (!it.hasNext()) {
                break;
            }
            int[] next = it.next();
            if (i >= next[0]) {
                z = true;
                if (i < next[1]) {
                    break;
                }
            }
        }
        return z;
    }

    private void applySpan(Pattern pattern, String str, Editable editable, String str2) {
        Matcher matcher = pattern.matcher(str);
        int color = Color.parseColor(str2);
        while (matcher.find()) {
            int iStart = matcher.start();
            int iEnd = matcher.end();
            if (iStart >= 0 && iEnd <= editable.length()) {
                editable.setSpan(new ForegroundColorSpan(color), iStart, iEnd, 33);
            }
        }
    }

    private String generateLineNumbers(String str) {
        int length = str.split("\n", -1).length;
        StringBuilder sb = new StringBuilder();
        for (int i = 1; i <= length; i++) {
            sb.append(i).append("\n");
        }
        return sb.toString();
    }

    private int getOverlayType() {
        return Build.VERSION.SDK_INT >= 26 ? 2038 : 2002;
    }
}
