package com.living.emo.view;

import android.graphics.BitmapFactory;
import android.graphics.drawable.ColorDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.PopupWindow;
import androidx.core.view.ViewCompat;
import com.living.emo.MyApplication;
import com.living.emo.util.LogUtil;
import com.livingai.emopet.R;
import java.io.File;
/* loaded from: classes.dex */
public class PreviewPicturePopWindow extends PopupWindow {
    private static final String TAG = "PreviewPicturePopWindow";
    private ImageView mDelete;
    private ImageView mDownload;
    private ImageView mImage;
    private final View mPreview;
    private File mFile = null;
    private OnClickEventListener mListener = null;

    /* loaded from: classes.dex */
    public interface OnClickEventListener {
        void onDelete(File file);

        void onDownload(File file);
    }

    public PreviewPicturePopWindow() {
        super(-1, -1);
        View inflate = LayoutInflater.from(MyApplication.getContext()).inflate(R.layout.pop_preview_picture, (ViewGroup) null, false);
        this.mPreview = inflate;
        setContentView(inflate);
        setSoftInputMode(16);
        setClippingEnabled(false);
        setBackgroundDrawable(new ColorDrawable(ViewCompat.MEASURED_STATE_MASK));
        setOutsideTouchable(true);
        initView();
        initEvents();
    }

    private void initEvents() {
        this.mDelete.setOnClickListener(new View.OnClickListener() { // from class: com.living.emo.view.-$$Lambda$PreviewPicturePopWindow$oQsd45T7bHU68gKFTr77M50J-IM
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PreviewPicturePopWindow.this.lambda$initEvents$0$PreviewPicturePopWindow(view);
            }
        });
        this.mDownload.setOnClickListener(new View.OnClickListener() { // from class: com.living.emo.view.-$$Lambda$PreviewPicturePopWindow$n0PULPIx__31AKKFh3lSWpaLw_8
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PreviewPicturePopWindow.this.lambda$initEvents$1$PreviewPicturePopWindow(view);
            }
        });
        this.mImage.setOnClickListener($$Lambda$PreviewPicturePopWindow$hLqw6aiv4xw_7S02f3Tp2kbtVzI.INSTANCE);
        this.mPreview.setOnClickListener(new View.OnClickListener() { // from class: com.living.emo.view.-$$Lambda$PreviewPicturePopWindow$PHv1H5pV9A5hkHx4MEJETQvvkVM
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PreviewPicturePopWindow.this.lambda$initEvents$3$PreviewPicturePopWindow(view);
            }
        });
    }

    public /* synthetic */ void lambda$initEvents$0$PreviewPicturePopWindow(View view) {
        OnClickEventListener onClickEventListener = this.mListener;
        if (onClickEventListener != null) {
            onClickEventListener.onDelete(this.mFile);
        }
    }

    public /* synthetic */ void lambda$initEvents$1$PreviewPicturePopWindow(View view) {
        OnClickEventListener onClickEventListener = this.mListener;
        if (onClickEventListener != null) {
            onClickEventListener.onDownload(this.mFile);
        }
    }

    public /* synthetic */ void lambda$initEvents$3$PreviewPicturePopWindow(View view) {
        dismiss();
    }

    private void initView() {
        this.mImage = (ImageView) this.mPreview.findViewById(R.id.pop_photo_image);
        this.mDelete = (ImageView) this.mPreview.findViewById(R.id.pop_photo_delete);
        this.mDownload = (ImageView) this.mPreview.findViewById(R.id.pop_photo_download);
    }

    public void setData(File file) {
        if (file != null) {
            this.mFile = file;
            LogUtil.m63i("tag", "setData file name:" + file.getName());
            this.mImage.setImageBitmap(BitmapFactory.decodeFile(file.getAbsolutePath()));
        }
    }

    public void setOnClickEventListener(OnClickEventListener onClickEventListener) {
        if (this.mListener == null) {
            this.mListener = onClickEventListener;
        }
    }
}
