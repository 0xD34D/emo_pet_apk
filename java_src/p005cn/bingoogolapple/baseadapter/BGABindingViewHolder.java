package p005cn.bingoogolapple.baseadapter;

import android.view.ViewParent;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
/* renamed from: cn.bingoogolapple.baseadapter.BGABindingViewHolder */
/* loaded from: classes.dex */
public class BGABindingViewHolder<B extends ViewDataBinding> extends RecyclerView.ViewHolder {
    private B mBinding;
    protected BGABindingRecyclerViewAdapter mBindingRecyclerViewAdapter;

    public BGABindingViewHolder(BGABindingRecyclerViewAdapter bGABindingRecyclerViewAdapter, B b) {
        super(b.getRoot());
        this.mBindingRecyclerViewAdapter = bGABindingRecyclerViewAdapter;
        this.mBinding = b;
    }

    public B getBinding() {
        return this.mBinding;
    }

    public RecyclerView getParent() {
        ViewParent parent = this.mBinding.getRoot().getParent();
        if (parent != null) {
            return (RecyclerView) parent;
        }
        return null;
    }

    public int getAdapterPositionWrapper() {
        if (this.mBindingRecyclerViewAdapter.getHeadersCount() > 0) {
            return getAdapterPosition() - this.mBindingRecyclerViewAdapter.getHeadersCount();
        }
        return getAdapterPosition();
    }
}
