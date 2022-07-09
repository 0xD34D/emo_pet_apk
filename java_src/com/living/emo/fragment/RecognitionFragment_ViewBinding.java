package com.living.emo.fragment;

import android.view.View;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.livingai.emopet.R;
/* loaded from: classes.dex */
public class RecognitionFragment_ViewBinding implements Unbinder {
    private RecognitionFragment target;

    public RecognitionFragment_ViewBinding(RecognitionFragment recognitionFragment, View view) {
        this.target = recognitionFragment;
        recognitionFragment.mRecyFaces = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.reco_recy_faces, "field 'mRecyFaces'", RecyclerView.class);
        recognitionFragment.mPeopleCon = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.recog_fregment_people_con, "field 'mPeopleCon'", LinearLayout.class);
        recognitionFragment.mNameCon = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.recog_fregment_name_con, "field 'mNameCon'", LinearLayout.class);
        recognitionFragment.mName = (TextView) Utils.findRequiredViewAsType(view, R.id.recog_fregment_name, "field 'mName'", TextView.class);
        recognitionFragment.mDelete = (ImageButton) Utils.findRequiredViewAsType(view, R.id.recog_fregment_delete, "field 'mDelete'", ImageButton.class);
        recognitionFragment.mRescan = (ImageButton) Utils.findRequiredViewAsType(view, R.id.recog_fregment_rescan, "field 'mRescan'", ImageButton.class);
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        RecognitionFragment recognitionFragment = this.target;
        if (recognitionFragment != null) {
            this.target = null;
            recognitionFragment.mRecyFaces = null;
            recognitionFragment.mPeopleCon = null;
            recognitionFragment.mNameCon = null;
            recognitionFragment.mName = null;
            recognitionFragment.mDelete = null;
            recognitionFragment.mRescan = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
