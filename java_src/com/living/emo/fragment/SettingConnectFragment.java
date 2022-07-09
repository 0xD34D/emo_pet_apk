package com.living.emo.fragment;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageButton;
import androidx.fragment.app.Fragment;
import com.livingai.emopet.R;
/* loaded from: classes.dex */
public class SettingConnectFragment extends Fragment implements View.OnClickListener {
    public static final String TAG = "SettingConnectFragment";
    private EditText account;
    private ImageButton eye;
    private boolean is_password = false;
    private OnChangeFragment mChangeFragment;
    private EditText password;
    private ImageButton setup_back_fragment;

    /* loaded from: classes.dex */
    public interface OnChangeFragment {
        void switchFragment();
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(R.layout.fragment_setting_connect, viewGroup, false);
        this.eye = (ImageButton) inflate.findViewById(R.id.btn_eye);
        this.password = (EditText) inflate.findViewById(R.id.wifi_password);
        this.account = (EditText) inflate.findViewById(R.id.wifi_account);
        ImageButton imageButton = (ImageButton) inflate.findViewById(R.id.setup_back_fragment);
        this.setup_back_fragment = imageButton;
        imageButton.setOnClickListener(this);
        this.eye.setOnClickListener(this);
        return inflate;
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        this.mChangeFragment = (OnChangeFragment) context;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.btn_eye) {
            int selectionStart = this.password.getSelectionStart();
            if (this.password.getInputType() != 129) {
                this.password.setInputType(129);
            } else {
                this.password.setInputType(145);
            }
            this.password.setSelection(selectionStart);
        } else if (id == R.id.setup_back_fragment) {
            this.mChangeFragment.switchFragment();
        }
    }
}
