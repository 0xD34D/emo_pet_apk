package p005cn.bingoogolapple.baseadapter;

import android.view.View;
import android.view.ViewGroup;
import androidx.collection.SparseArrayCompat;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
/* renamed from: cn.bingoogolapple.baseadapter.BGAHeaderAndFooterAdapter */
/* loaded from: classes.dex */
public class BGAHeaderAndFooterAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
    private static final int BASE_ITEM_TYPE_FOOTER = 4096;
    private static final int BASE_ITEM_TYPE_HEADER = 2048;
    private RecyclerView.Adapter mInnerAdapter;
    private SparseArrayCompat<View> mHeaderViews = new SparseArrayCompat<>();
    private SparseArrayCompat<View> mFootViews = new SparseArrayCompat<>();
    private int mCurrentMaxHeaderKey = 2048;
    private int mCurrentMaxFooterKey = 4096;

    public BGAHeaderAndFooterAdapter(RecyclerView.Adapter adapter) {
        this.mInnerAdapter = adapter;
    }

    public RecyclerView.Adapter getInnerAdapter() {
        return this.mInnerAdapter;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        if (this.mHeaderViews.get(i) != null) {
            return new RecyclerView.ViewHolder(this.mHeaderViews.get(i)) { // from class: cn.bingoogolapple.baseadapter.BGAHeaderAndFooterAdapter.1
            };
        }
        if (this.mFootViews.get(i) != null) {
            return new RecyclerView.ViewHolder(this.mFootViews.get(i)) { // from class: cn.bingoogolapple.baseadapter.BGAHeaderAndFooterAdapter.2
            };
        }
        return this.mInnerAdapter.onCreateViewHolder(viewGroup, i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        if (isHeaderView(i)) {
            return this.mHeaderViews.keyAt(i);
        }
        if (isFooterView(i)) {
            return this.mFootViews.keyAt((i - getHeadersCount()) - getRealItemCount());
        }
        return this.mInnerAdapter.getItemViewType(getRealItemPosition(i));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        if (!isHeaderViewOrFooterView(i)) {
            this.mInnerAdapter.onBindViewHolder(viewHolder, getRealItemPosition(i));
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return getHeadersCount() + getFootersCount() + getRealItemCount();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onAttachedToRecyclerView(RecyclerView recyclerView) {
        this.mInnerAdapter.onAttachedToRecyclerView(recyclerView);
        RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
        if (layoutManager instanceof GridLayoutManager) {
            final GridLayoutManager gridLayoutManager = (GridLayoutManager) layoutManager;
            final GridLayoutManager.SpanSizeLookup spanSizeLookup = gridLayoutManager.getSpanSizeLookup();
            gridLayoutManager.setSpanSizeLookup(new GridLayoutManager.SpanSizeLookup() { // from class: cn.bingoogolapple.baseadapter.BGAHeaderAndFooterAdapter.3
                @Override // androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup
                public int getSpanSize(int i) {
                    if (BGAHeaderAndFooterAdapter.this.isHeaderViewOrFooterView(i)) {
                        return gridLayoutManager.getSpanCount();
                    }
                    GridLayoutManager.SpanSizeLookup spanSizeLookup2 = spanSizeLookup;
                    if (spanSizeLookup2 != null) {
                        return spanSizeLookup2.getSpanSize(i - BGAHeaderAndFooterAdapter.this.getHeadersCount());
                    }
                    return 1;
                }
            });
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewAttachedToWindow(RecyclerView.ViewHolder viewHolder) {
        ViewGroup.LayoutParams layoutParams;
        this.mInnerAdapter.onViewAttachedToWindow(viewHolder);
        if (isHeaderViewOrFooterView(viewHolder.getLayoutPosition()) && (layoutParams = viewHolder.itemView.getLayoutParams()) != null && (layoutParams instanceof StaggeredGridLayoutManager.LayoutParams)) {
            ((StaggeredGridLayoutManager.LayoutParams) layoutParams).setFullSpan(true);
        }
    }

    public int getRealItemCount() {
        return this.mInnerAdapter.getItemCount();
    }

    public int getRealItemPosition(int i) {
        return i - getHeadersCount();
    }

    public boolean isHeaderView(int i) {
        return i < getHeadersCount();
    }

    public boolean isFooterView(int i) {
        return i >= getHeadersCount() + getRealItemCount();
    }

    public boolean isHeaderViewOrFooterView(int i) {
        return isHeaderView(i) || isFooterView(i);
    }

    public void addHeaderView(View view) {
        SparseArrayCompat<View> sparseArrayCompat = this.mHeaderViews;
        int i = this.mCurrentMaxHeaderKey + 1;
        this.mCurrentMaxHeaderKey = i;
        sparseArrayCompat.put(i, view);
        notifyItemInserted(getHeadersCount() - 1);
    }

    public void removeHeaderView(View view) {
        int indexOfValue = this.mHeaderViews.indexOfValue(view);
        if (indexOfValue != -1) {
            this.mHeaderViews.removeAt(indexOfValue);
            notifyItemRemoved(indexOfValue);
        }
    }

    public void addFooterView(View view) {
        SparseArrayCompat<View> sparseArrayCompat = this.mFootViews;
        int i = this.mCurrentMaxFooterKey + 1;
        this.mCurrentMaxFooterKey = i;
        sparseArrayCompat.put(i, view);
        notifyItemInserted(((getHeadersCount() + getRealItemCount()) + getFootersCount()) - 1);
    }

    public void removeFooterView(View view) {
        int indexOfValue = this.mFootViews.indexOfValue(view);
        if (indexOfValue != -1) {
            this.mFootViews.removeAt(indexOfValue);
            notifyItemRemoved(getHeadersCount() + getRealItemCount() + indexOfValue);
        }
    }

    public int getHeadersCount() {
        return this.mHeaderViews.size();
    }

    public int getFootersCount() {
        return this.mFootViews.size();
    }
}
