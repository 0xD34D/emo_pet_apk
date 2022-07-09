package com.living.emo.view;

import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.fragment.app.DialogFragment;
import com.livingai.emopet.R;
/* loaded from: classes.dex */
public class MakeSureDialog extends DialogFragment {
    private String content;
    private TextView mContent;
    private onDialogClickListener mListener;
    private TextView mTvCancel;
    private TextView mTvContinue;
    private View mView;

    /* loaded from: classes.dex */
    public interface onDialogClickListener {
        void onCancelClick();

        void onSureClick();
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        getDialog().requestWindowFeature(1);
        this.mView = layoutInflater.inflate(R.layout.dialog_make_sure, viewGroup, false);
        getDialog().getWindow().setBackgroundDrawable(new ColorDrawable(0));
        initView();
        return this.mView;
    }

    private void initView() {
        this.mTvContinue = (TextView) this.mView.findViewById(R.id.tv_continue);
        this.mTvCancel = (TextView) this.mView.findViewById(R.id.tv_cancel);
        this.mContent = (TextView) this.mView.findViewById(R.id.tv_dialog_make_sure_content);
        String string = getResources().getString(R.string.emo_ary_sure);
        this.content = string;
        this.mContent.setText(string);
        this.mTvContinue.setOnClickListener(new View.OnClickListener() { // from class: com.living.emo.view.MakeSureDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (MakeSureDialog.this.mListener != null) {
                    MakeSureDialog.this.mListener.onSureClick();
                }
                MakeSureDialog.this.dismiss();
            }
        });
        this.mTvCancel.setOnClickListener(new View.OnClickListener() { // from class: com.living.emo.view.MakeSureDialog.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (MakeSureDialog.this.mListener != null) {
                    MakeSureDialog.this.mListener.onCancelClick();
                }
                MakeSureDialog.this.dismiss();
            }
        });
    }

    public void setContent(String str) {
        this.content = str;
    }

    public void setDialogClickListener(onDialogClickListener ondialogclicklistener) {
        this.mListener = ondialogclicklistener;
    }
}
