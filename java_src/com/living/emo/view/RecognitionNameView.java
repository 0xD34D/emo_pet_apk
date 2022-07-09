package com.living.emo.view;

import android.app.Dialog;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.text.Editable;
import android.text.InputFilter;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.fragment.app.DialogFragment;
import com.livingai.emopet.R;
import java.io.PrintStream;
import java.util.regex.Pattern;
/* loaded from: classes.dex */
public class RecognitionNameView extends DialogFragment {
    private onDialogClickListener mListener;
    private View mView;
    private String title = "";

    /* loaded from: classes.dex */
    public interface onDialogClickListener {
        void onCancelClick(Dialog dialog);

        void onOkClick(Dialog dialog, String str);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        getDialog().requestWindowFeature(1);
        this.mView = layoutInflater.inflate(R.layout.dialog_recog_name, viewGroup, false);
        getDialog().getWindow().setBackgroundDrawable(new ColorDrawable(0));
        getDialog().setCancelable(false);
        getDialog().setCanceledOnTouchOutside(false);
        initView();
        return this.mView;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    private void initView() {
        final EditText editText = (EditText) this.mView.findViewById(R.id.dialog_recog_name);
        ImageButton imageButton = (ImageButton) this.mView.findViewById(R.id.dialog_recog_cancel);
        final RelativeLayout relativeLayout = (RelativeLayout) this.mView.findViewById(R.id.dialog_recog_clear);
        ImageButton imageButton2 = (ImageButton) this.mView.findViewById(R.id.dialog_recog_ok);
        TextView textView = (TextView) this.mView.findViewById(R.id.dialog_title);
        if (!this.title.equals("")) {
            textView.setText(this.title);
        }
        relativeLayout.setVisibility(8);
        relativeLayout.setOnClickListener(new View.OnClickListener() { // from class: com.living.emo.view.-$$Lambda$RecognitionNameView$xLCwSNbjRLz4zMJ5UVf8CREXEes
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                editText.setText("");
            }
        });
        imageButton.setOnClickListener(new View.OnClickListener() { // from class: com.living.emo.view.-$$Lambda$RecognitionNameView$LWnOCh7N7WvzGMzaSjSz3Xm8uMI
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RecognitionNameView.this.lambda$initView$1$RecognitionNameView(view);
            }
        });
        imageButton2.setOnClickListener(new View.OnClickListener() { // from class: com.living.emo.view.-$$Lambda$RecognitionNameView$YE335a8iEVuba0Slyb2YM8cGgXs
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RecognitionNameView.this.lambda$initView$2$RecognitionNameView(editText, view);
            }
        });
        this.mView.setOnClickListener($$Lambda$RecognitionNameView$_411oajzuevefrba2nzFULwUV7A.INSTANCE);
        ((ImageButton) this.mView.findViewById(R.id.dialog_recog_clear_inner)).setOnClickListener(new View.OnClickListener() { // from class: com.living.emo.view.-$$Lambda$RecognitionNameView$-24iqYwfZK6M18Ac7xSX-DR6mJU
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                editText.setText("");
            }
        });
        editText.addTextChangedListener(new TextWatcher() { // from class: com.living.emo.view.RecognitionNameView.1
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                String obj = editText.getText().toString();
                String replaceAll = Pattern.compile("[^a-zA-Z ]").matcher(obj).replaceAll("");
                PrintStream printStream = System.out;
                printStream.println("str::" + replaceAll.length());
                if (!obj.equals(replaceAll)) {
                    editText.setText(replaceAll);
                    editText.setSelection(replaceAll.length());
                }
                if (replaceAll.length() > 0) {
                    relativeLayout.setVisibility(0);
                } else {
                    relativeLayout.setVisibility(8);
                }
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                String trim = editable.toString().trim();
                int length = trim.length();
                if (trim.getBytes().length >= 20) {
                    editText.setFilters(new InputFilter[]{new InputFilter.LengthFilter(length)});
                } else {
                    editText.setFilters(new InputFilter[]{new InputFilter.LengthFilter(20)});
                }
                EditText editText2 = editText;
                editText2.setSelection(editText2.getText().toString().length());
            }
        });
    }

    public /* synthetic */ void lambda$initView$1$RecognitionNameView(View view) {
        onDialogClickListener ondialogclicklistener = this.mListener;
        if (ondialogclicklistener != null) {
            ondialogclicklistener.onCancelClick(getDialog());
        }
    }

    public /* synthetic */ void lambda$initView$2$RecognitionNameView(EditText editText, View view) {
        if (this.mListener != null) {
            this.mListener.onOkClick(getDialog(), editText.getText().toString());
        }
    }

    public static void HideKeyboard(View view) {
        InputMethodManager inputMethodManager = (InputMethodManager) view.getContext().getSystemService("input_method");
        if (inputMethodManager.isActive()) {
            inputMethodManager.hideSoftInputFromWindow(view.getApplicationWindowToken(), 0);
        }
    }

    public void setDialogClickListener(onDialogClickListener ondialogclicklistener) {
        if (this.mListener == null) {
            this.mListener = ondialogclicklistener;
        }
    }
}
