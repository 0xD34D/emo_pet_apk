package com.living.emo.adapter;

import android.graphics.BitmapFactory;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.living.emo.util.LogUtil;
import com.livingai.emopet.R;
import java.io.File;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
/* loaded from: classes.dex */
public class PhotoListAdapter extends RecyclerView.Adapter<InnerHolder> {
    private View mInflate;
    ArrayList<File> mdata = new ArrayList<>();
    private OnClickItemListener mListener = null;

    /* loaded from: classes.dex */
    public interface OnClickItemListener {
        void onClickItem(File file);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public InnerHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        View inflate = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.recy_photo_list_adapter, viewGroup, false);
        this.mInflate = inflate;
        return new InnerHolder(inflate);
    }

    public void setData(ArrayList<File> arrayList) {
        ArrayList<File> arrayList2 = this.mdata;
        if (arrayList2 != null) {
            arrayList2.clear();
            this.mdata = null;
            ArrayList<File> arrayList3 = new ArrayList<>();
            this.mdata = arrayList3;
            arrayList3.addAll(arrayList);
            notifyDataSetChanged();
        }
    }

    public void onBindViewHolder(InnerHolder innerHolder, int i) {
        innerHolder.setIsRecyclable(false);
        final File file = this.mdata.get(i);
        this.mInflate.setOnClickListener(new View.OnClickListener() { // from class: com.living.emo.adapter.-$$Lambda$PhotoListAdapter$rA-rdbcenopvHq98ocaYh9UMSjY
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PhotoListAdapter.this.lambda$onBindViewHolder$0$PhotoListAdapter(file, view);
            }
        });
        innerHolder.mImage.setImageBitmap(BitmapFactory.decodeFile(file.getAbsolutePath()));
        String name = file.getName();
        try {
            innerHolder.mTitle.setText(new SimpleDateFormat("dd/MM/yyyy").format(new SimpleDateFormat("yyyy-MM-dd-HH-mm-ss").parse(name.substring(0, name.lastIndexOf(".")))));
        } catch (ParseException unused) {
            LogUtil.m63i("tag", "使用当前时间");
            innerHolder.mTitle.setText(new SimpleDateFormat("dd/MM/yyyy").format(new Date()));
        }
    }

    public /* synthetic */ void lambda$onBindViewHolder$0$PhotoListAdapter(File file, View view) {
        if (this.mListener != null) {
            LogUtil.m63i("tag", "file name:" + file.getName());
            this.mListener.onClickItem(file);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.mdata.size();
    }

    /* loaded from: classes.dex */
    public class InnerHolder extends RecyclerView.ViewHolder {
        public ImageView mImage;
        public TextView mTitle;

        public InnerHolder(View view) {
            super(view);
            this.mImage = (ImageView) view.findViewById(R.id.recy_photo_image_iv);
            this.mTitle = (TextView) view.findViewById(R.id.recy_photo_title_tv);
        }
    }

    public void setOnClickItemListener(OnClickItemListener onClickItemListener) {
        if (this.mListener == null) {
            this.mListener = onClickItemListener;
        }
    }
}
