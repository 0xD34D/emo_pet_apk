package com.living.emo.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import com.livingai.emopet.R;
/* loaded from: classes.dex */
public class LoginXiaoAIAccount extends Fragment {
    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(R.layout.fragment_xiaoai_account, viewGroup, false);
        ((TextView) ((RelativeLayout) inflate.findViewById(R.id.include_xiaoai_first)).findViewById(R.id.setting_title)).setText(R.string.xiao_ai);
        return inflate;
    }
}
