package com.living.emo.adapter;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.recyclerview.widget.RecyclerView;
import com.living.emo.MyApplication;
import com.living.emo.activity.InteractActivity;
import com.living.emo.activity.RecognitionActivity;
import com.living.emo.bean.InteractBean;
import com.livingai.emopet.R;
import com.youth.banner.util.BannerUtils;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class InteractAdapter extends RecyclerView.Adapter<ViewHolder> {
    private Activity mActivity;
    private Context mContext;
    private List<InteractBean> mData;

    public InteractAdapter(List<InteractBean> list, InteractActivity interactActivity) {
        this.mData = new ArrayList();
        this.mData = list;
        this.mActivity = interactActivity;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        this.mContext = viewGroup.getContext();
        return new ViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.recy_interact_list, viewGroup, false));
    }

    public void onBindViewHolder(ViewHolder viewHolder, int i) {
        final InteractBean interactBean = this.mData.get(i);
        viewHolder.mTitle.setText(interactBean.getTitle());
        viewHolder.mImage.setBackgroundResource(interactBean.getImgRes());
        viewHolder.mDesc.setText(interactBean.getDescription());
        viewHolder.mDetails.setOnClickListener(new View.OnClickListener() { // from class: com.living.emo.adapter.-$$Lambda$InteractAdapter$hJjq0lrqbH2e2DqZ-mPpHwtKtx0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                InteractAdapter.this.lambda$onBindViewHolder$0$InteractAdapter(interactBean, view);
            }
        });
    }

    public /* synthetic */ void lambda$onBindViewHolder$0$InteractAdapter(InteractBean interactBean, View view) {
        if (interactBean.getDetails() != null) {
            askForMe(interactBean);
        } else if (interactBean.getImgRes() == R.drawable.int_pic_shibie) {
            this.mActivity.startActivity(new Intent(this.mActivity, RecognitionActivity.class));
        } else {
            Toast.makeText(MyApplication.getContext(), "No details", 0).show();
        }
    }

    private void askForMe(InteractBean interactBean) {
        final Dialog dialog = new Dialog(this.mActivity, R.style.CustomDialogTheme);
        View inflate = View.inflate(this.mActivity, R.layout.dialog_interact, null);
        ((ImageView) inflate.findViewById(R.id.dialog_icon)).setBackgroundResource(interactBean.getImgRes());
        ((TextView) inflate.findViewById(R.id.dialog_details)).setText(interactBean.getDetails());
        ((ImageButton) inflate.findViewById(R.id.dialog_ok_button)).setOnClickListener(new View.OnClickListener() { // from class: com.living.emo.adapter.-$$Lambda$InteractAdapter$_wuiydo9lmDHubtzHd5sxg8pJDs
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                dialog.dismiss();
            }
        });
        dialog.setContentView(inflate);
        dialog.setCanceledOnTouchOutside(true);
        dialog.show();
        dialog.getWindow().setLayout((int) BannerUtils.dp2px(520.0f), (int) BannerUtils.dp2px(282.0f));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.mData.size();
    }

    /* loaded from: classes.dex */
    public class ViewHolder extends RecyclerView.ViewHolder {
        public TextView mDesc;
        public ImageButton mDetails;
        public ImageView mImage;
        public TextView mTitle;

        public ViewHolder(View view) {
            super(view);
            this.mTitle = (TextView) view.findViewById(R.id.interact_title);
            this.mImage = (ImageView) view.findViewById(R.id.interact_icon_iv);
            this.mDesc = (TextView) view.findViewById(R.id.interact_desc_tv);
            this.mDetails = (ImageButton) view.findViewById(R.id.interact_details_ib);
        }
    }
}
