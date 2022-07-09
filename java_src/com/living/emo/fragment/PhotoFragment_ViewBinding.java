package com.living.emo.fragment;

import android.view.View;
import android.widget.ImageButton;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.livingai.emopet.R;
/* loaded from: classes.dex */
public class PhotoFragment_ViewBinding implements Unbinder {
    private PhotoFragment target;

    public PhotoFragment_ViewBinding(PhotoFragment photoFragment, View view) {
        this.target = photoFragment;
        photoFragment.mPhotoRecyView = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.photo_recy_view, "field 'mPhotoRecyView'", RecyclerView.class);
        photoFragment.mSync = (ImageButton) Utils.findRequiredViewAsType(view, R.id.photo_sync_image_btn, "field 'mSync'", ImageButton.class);
        photoFragment.mSlideShow = (ImageButton) Utils.findRequiredViewAsType(view, R.id.photo_slide_show_image_btn, "field 'mSlideShow'", ImageButton.class);
        photoFragment.mClear = (ImageButton) Utils.findRequiredViewAsType(view, R.id.photo_clear_image_btn, "field 'mClear'", ImageButton.class);
        photoFragment.mTextView = (TextView) Utils.findRequiredViewAsType(view, R.id.photo_tips_tv, "field 'mTextView'", TextView.class);
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        PhotoFragment photoFragment = this.target;
        if (photoFragment != null) {
            this.target = null;
            photoFragment.mPhotoRecyView = null;
            photoFragment.mSync = null;
            photoFragment.mSlideShow = null;
            photoFragment.mClear = null;
            photoFragment.mTextView = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
