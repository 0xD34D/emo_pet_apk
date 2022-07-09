package com.living.emo.view;

import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import androidx.fragment.app.DialogFragment;
import com.living.emo.view.PowerOffSureDialog;
import com.livingai.emopet.R;
/* loaded from: classes.dex */
public class UpdateDialog extends DialogFragment {
    private ImageButton mCancelOff;
    private ImageButton mContinueOff;
    private PowerOffSureDialog.onDialogClickListener mListener;
    private View mView;

    /* loaded from: classes.dex */
    public interface onDialogClickListener {
        void onCancelClick();

        void onSureClick();
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        getDialog().requestWindowFeature(1);
        this.mView = layoutInflater.inflate(R.layout.dialog_update_sure, viewGroup, false);
        getDialog().getWindow().setBackgroundDrawable(new ColorDrawable(0));
        setCancelable(false);
        initView();
        return this.mView;
    }

    private void initView() {
        this.mCancelOff = (ImageButton) this.mView.findViewById(R.id.dialog_cancel_off);
        this.mContinueOff = (ImageButton) this.mView.findViewById(R.id.dialog_continue_off);
        this.mCancelOff.setOnClickListener(new View.OnClickListener() { // from class: com.living.emo.view.-$$Lambda$UpdateDialog$A9VQe-8Hikl2FbZ19nPTzAeaPzM
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                UpdateDialog.this.lambda$initView$0$UpdateDialog(view);
            }
        });
        this.mContinueOff.setOnClickListener(new View.OnClickListener() { // from class: com.living.emo.view.-$$Lambda$UpdateDialog$k_PE0N_qtW34m7e8UDXLh5hDHdA
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                UpdateDialog.this.lambda$initView$1$UpdateDialog(view);
            }
        });
    }

    public /* synthetic */ void lambda$initView$0$UpdateDialog(View view) {
        PowerOffSureDialog.onDialogClickListener ondialogclicklistener = this.mListener;
        if (ondialogclicklistener != null) {
            ondialogclicklistener.onCancelClick();
        }
        dismiss();
    }

    public /* synthetic */ void lambda$initView$1$UpdateDialog(View view) {
        PowerOffSureDialog.onDialogClickListener ondialogclicklistener = this.mListener;
        if (ondialogclicklistener != null) {
            ondialogclicklistener.onSureClick();
        }
        dismiss();
    }

    public void setDialogClickListener(PowerOffSureDialog.onDialogClickListener ondialogclicklistener) {
        this.mListener = ondialogclicklistener;
    }
}
