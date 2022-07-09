package com.living.emo.fragment;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import androidx.fragment.app.Fragment;
import com.livingai.emopet.R;
/* loaded from: classes.dex */
public class InterConnectFragment extends Fragment {
    private static final String TAG = "InterConnectFragment";
    private View interConnect;
    private OnClickListener onClickListener;

    /* loaded from: classes.dex */
    public interface OnClickListener {
        void setInternet();
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        this.onClickListener = (OnClickListener) context;
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        if (this.interConnect == null) {
            this.interConnect = layoutInflater.inflate(R.layout.fragment_inter_connect, viewGroup, false);
        }
        ((Button) this.interConnect.findViewById(R.id.setting_internet)).setOnClickListener(new View.OnClickListener() { // from class: com.living.emo.fragment.InterConnectFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                InterConnectFragment.this.onClickListener.setInternet();
            }
        });
        return this.interConnect;
    }
}
