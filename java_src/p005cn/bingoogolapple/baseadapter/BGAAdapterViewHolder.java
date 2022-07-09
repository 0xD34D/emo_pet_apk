package p005cn.bingoogolapple.baseadapter;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
/* renamed from: cn.bingoogolapple.baseadapter.BGAAdapterViewHolder */
/* loaded from: classes.dex */
public class BGAAdapterViewHolder {
    protected View mConvertView;
    protected BGAViewHolderHelper mViewHolderHelper;

    private BGAAdapterViewHolder(ViewGroup viewGroup, int i) {
        View inflate = LayoutInflater.from(viewGroup.getContext()).inflate(i, viewGroup, false);
        this.mConvertView = inflate;
        inflate.setTag(this);
        this.mViewHolderHelper = new BGAViewHolderHelper(viewGroup, this.mConvertView);
    }

    public static BGAAdapterViewHolder dequeueReusableAdapterViewHolder(View view, ViewGroup viewGroup, int i) {
        if (view == null) {
            return new BGAAdapterViewHolder(viewGroup, i);
        }
        return (BGAAdapterViewHolder) view.getTag();
    }

    public BGAViewHolderHelper getViewHolderHelper() {
        return this.mViewHolderHelper;
    }

    public View getConvertView() {
        return this.mConvertView;
    }
}
