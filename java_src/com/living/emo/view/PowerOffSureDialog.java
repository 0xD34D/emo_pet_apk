package com.living.emo.view;

import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import androidx.fragment.app.DialogFragment;
import com.livingai.emopet.R;
/* loaded from: classes.dex */
public class PowerOffSureDialog extends DialogFragment {
    private ImageButton mCancelOff;
    private ImageButton mContinueOff;
    private onDialogClickListener mListener;
    private View mView;

    /* loaded from: classes.dex */
    public interface onDialogClickListener {
        void onCancelClick();

        void onSureClick();
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        getDialog().requestWindowFeature(1);
        this.mView = layoutInflater.inflate(R.layout.dialog_power_off_sure, viewGroup, false);
        getDialog().getWindow().setBackgroundDrawable(new ColorDrawable(0));
        setCancelable(false);
        initView();
        return this.mView;
    }

    private void initView() {
        this.mCancelOff = (ImageButton) this.mView.findViewById(R.id.dialog_cancel_off);
        this.mContinueOff = (ImageButton) this.mView.findViewById(R.id.dialog_continue_off);
        this.mCancelOff.setOnClickListener(new View.OnClickListener() { // from class: com.living.emo.view.-$$Lambda$PowerOffSureDialog$UYnA5ShCSxm1Qbg84RngvZa2vn4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PowerOffSureDialog.this.lambda$initView$0$PowerOffSureDialog(view);
            }
        });
        this.mContinueOff.setOnClickListener(new View.OnClickListener() { // from class: com.living.emo.view.-$$Lambda$PowerOffSureDialog$Z9hcnFGS-DGqUq1Tu_4ylOP5tR8
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PowerOffSureDialog.this.lambda$initView$1$PowerOffSureDialog(view);
            }
        });
    }

    public /* synthetic */ void lambda$initView$0$PowerOffSureDialog(View view) {
        onDialogClickListener ondialogclicklistener = this.mListener;
        if (ondialogclicklistener != null) {
            ondialogclicklistener.onCancelClick();
        }
        dismiss();
    }

    public /* synthetic */ void lambda$initView$1$PowerOffSureDialog(View view) {
        onDialogClickListener ondialogclicklistener = this.mListener;
        if (ondialogclicklistener != null) {
            ondialogclicklistener.onSureClick();
        }
        dismiss();
    }

    public void setDialogClickListener(onDialogClickListener ondialogclicklistener) {
        this.mListener = ondialogclicklistener;
    }
}
