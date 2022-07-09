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
public class LightRename extends DialogFragment {
    private onDialogClickListener mListener;
    private View mView;
    private String title = "";
    private String name = "";

    /* loaded from: classes.dex */
    public interface onDialogClickListener {
        void onCancelClick(Dialog dialog);

        void onOkClick(Dialog dialog, String str);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        getDialog().requestWindowFeature(1);
        this.mView = layoutInflater.inflate(R.layout.dialog_name, viewGroup, false);
        getDialog().getWindow().setBackgroundDrawable(new ColorDrawable(0));
        getDialog().setCancelable(false);
        getDialog().setCanceledOnTouchOutside(false);
        initView();
        return this.mView;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public void setName(String str) {
        this.name = str;
    }

    private void initView() {
        final EditText editText = (EditText) this.mView.findViewById(R.id.dialog_rename);
        ImageButton imageButton = (ImageButton) this.mView.findViewById(R.id.dialog_cancel);
        final RelativeLayout relativeLayout = (RelativeLayout) this.mView.findViewById(R.id.dialog_remove);
        ImageButton imageButton2 = (ImageButton) this.mView.findViewById(R.id.dialog_set);
        TextView textView = (TextView) this.mView.findViewById(R.id.dialog_title);
        if (!this.title.equals("")) {
            textView.setText(this.title);
        }
        if (!this.name.equals("")) {
            editText.setText(this.name);
            relativeLayout.setVisibility(0);
        } else {
            relativeLayout.setVisibility(8);
        }
        relativeLayout.setOnClickListener(new View.OnClickListener() { // from class: com.living.emo.view.-$$Lambda$LightRename$Lj_bzNn8XJbPGppsf-Z4_2j4x_c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                editText.setText("");
            }
        });
        imageButton.setOnClickListener(new View.OnClickListener() { // from class: com.living.emo.view.-$$Lambda$LightRename$BSBGx22lch6JSYOWA5QfVwQjUnQ
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LightRename.this.lambda$initView$1$LightRename(view);
            }
        });
        imageButton2.setOnClickListener(new View.OnClickListener() { // from class: com.living.emo.view.-$$Lambda$LightRename$_D7sAiLi0-3Dfa-x-TEqSntT3zc
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LightRename.this.lambda$initView$2$LightRename(editText, view);
            }
        });
        this.mView.setOnClickListener($$Lambda$LightRename$Nt9PGAaaRns6BScSrF_PkVG8aU.INSTANCE);
        ((ImageButton) this.mView.findViewById(R.id.dialog_recog_clear_inner)).setOnClickListener(new View.OnClickListener() { // from class: com.living.emo.view.-$$Lambda$LightRename$N_pZo13lYOMNh1HjCl4UEr-JxfY
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                editText.setText("");
            }
        });
        editText.addTextChangedListener(new TextWatcher() { // from class: com.living.emo.view.LightRename.1
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                String obj = editText.getText().toString();
                String replaceAll = Pattern.compile("[^a-zA-Z0-9 ]").matcher(obj).replaceAll("");
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
                if (trim.getBytes().length >= 25) {
                    editText.setFilters(new InputFilter[]{new InputFilter.LengthFilter(length)});
                } else {
                    editText.setFilters(new InputFilter[]{new InputFilter.LengthFilter(25)});
                }
                EditText editText2 = editText;
                editText2.setSelection(editText2.getText().toString().length());
            }
        });
    }

    public /* synthetic */ void lambda$initView$1$LightRename(View view) {
        onDialogClickListener ondialogclicklistener = this.mListener;
        if (ondialogclicklistener != null) {
            ondialogclicklistener.onCancelClick(getDialog());
        }
    }

    public /* synthetic */ void lambda$initView$2$LightRename(EditText editText, View view) {
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
