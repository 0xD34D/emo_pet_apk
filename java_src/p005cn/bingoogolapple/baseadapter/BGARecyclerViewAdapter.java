package p005cn.bingoogolapple.baseadapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.List;
/* renamed from: cn.bingoogolapple.baseadapter.BGARecyclerViewAdapter */
/* loaded from: classes.dex */
public abstract class BGARecyclerViewAdapter<M> extends RecyclerView.Adapter<BGARecyclerViewHolder> {
    protected int mCheckedPosition;
    protected Context mContext;
    protected List<M> mData;
    protected int mDefaultItemLayoutId;
    protected BGAHeaderAndFooterAdapter mHeaderAndFooterAdapter;
    private boolean mIsIgnoreCheckedChanged;
    protected BGAOnItemChildCheckedChangeListener mOnItemChildCheckedChangeListener;
    protected BGAOnItemChildClickListener mOnItemChildClickListener;
    protected BGAOnItemChildLongClickListener mOnItemChildLongClickListener;
    protected BGAOnRVItemChildTouchListener mOnRVItemChildTouchListener;
    protected BGAOnRVItemClickListener mOnRVItemClickListener;
    protected BGAOnRVItemLongClickListener mOnRVItemLongClickListener;
    protected RecyclerView mRecyclerView;

    protected abstract void fillData(BGAViewHolderHelper bGAViewHolderHelper, int i, M m);

    protected void setItemChildListener(BGAViewHolderHelper bGAViewHolderHelper, int i) {
    }

    public BGARecyclerViewAdapter(RecyclerView recyclerView) {
        this.mCheckedPosition = 0;
        this.mIsIgnoreCheckedChanged = true;
        this.mRecyclerView = recyclerView;
        this.mContext = recyclerView.getContext();
        this.mData = new ArrayList();
    }

    public BGARecyclerViewAdapter(RecyclerView recyclerView, int i) {
        this(recyclerView);
        this.mDefaultItemLayoutId = i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.mData.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public BGARecyclerViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        BGARecyclerViewHolder bGARecyclerViewHolder = new BGARecyclerViewHolder(this, this.mRecyclerView, LayoutInflater.from(this.mContext).inflate(i, viewGroup, false), this.mOnRVItemClickListener, this.mOnRVItemLongClickListener);
        bGARecyclerViewHolder.getViewHolderHelper().setOnItemChildClickListener(this.mOnItemChildClickListener);
        bGARecyclerViewHolder.getViewHolderHelper().setOnItemChildLongClickListener(this.mOnItemChildLongClickListener);
        bGARecyclerViewHolder.getViewHolderHelper().setOnItemChildCheckedChangeListener(this.mOnItemChildCheckedChangeListener);
        bGARecyclerViewHolder.getViewHolderHelper().setOnRVItemChildTouchListener(this.mOnRVItemChildTouchListener);
        setItemChildListener(bGARecyclerViewHolder.getViewHolderHelper(), i);
        return bGARecyclerViewHolder;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        int i2 = this.mDefaultItemLayoutId;
        if (i2 != 0) {
            return i2;
        }
        throw new RuntimeException("请在 " + getClass().getSimpleName() + " 中重写 getItemViewType 方法返回布局资源 id，或者使用 BGARecyclerViewAdapter 两个参数的构造方法 BGARecyclerViewAdapter(RecyclerView recyclerView, int itemLayoutId)");
    }

    public void onBindViewHolder(BGARecyclerViewHolder bGARecyclerViewHolder, int i) {
        this.mIsIgnoreCheckedChanged = true;
        fillData(bGARecyclerViewHolder.getViewHolderHelper(), i, getItem(i));
        this.mIsIgnoreCheckedChanged = false;
    }

    public boolean isIgnoreCheckedChanged() {
        return this.mIsIgnoreCheckedChanged;
    }

    public void setOnRVItemClickListener(BGAOnRVItemClickListener bGAOnRVItemClickListener) {
        this.mOnRVItemClickListener = bGAOnRVItemClickListener;
    }

    public void setOnRVItemLongClickListener(BGAOnRVItemLongClickListener bGAOnRVItemLongClickListener) {
        this.mOnRVItemLongClickListener = bGAOnRVItemLongClickListener;
    }

    public void setOnItemChildClickListener(BGAOnItemChildClickListener bGAOnItemChildClickListener) {
        this.mOnItemChildClickListener = bGAOnItemChildClickListener;
    }

    public void setOnItemChildLongClickListener(BGAOnItemChildLongClickListener bGAOnItemChildLongClickListener) {
        this.mOnItemChildLongClickListener = bGAOnItemChildLongClickListener;
    }

    public void setOnItemChildCheckedChangeListener(BGAOnItemChildCheckedChangeListener bGAOnItemChildCheckedChangeListener) {
        this.mOnItemChildCheckedChangeListener = bGAOnItemChildCheckedChangeListener;
    }

    public void setOnRVItemChildTouchListener(BGAOnRVItemChildTouchListener bGAOnRVItemChildTouchListener) {
        this.mOnRVItemChildTouchListener = bGAOnRVItemChildTouchListener;
    }

    public M getItem(int i) {
        return this.mData.get(i);
    }

    public List<M> getData() {
        return this.mData;
    }

    public final void notifyItemRangeInsertedWrapper(int i, int i2) {
        BGAHeaderAndFooterAdapter bGAHeaderAndFooterAdapter = this.mHeaderAndFooterAdapter;
        if (bGAHeaderAndFooterAdapter == null) {
            notifyItemRangeInserted(i, i2);
        } else {
            bGAHeaderAndFooterAdapter.notifyItemRangeInserted(bGAHeaderAndFooterAdapter.getHeadersCount() + i, i2);
        }
    }

    public void addNewData(List<M> list) {
        if (BGABaseAdapterUtil.isListNotEmpty(list)) {
            this.mData.addAll(0, list);
            notifyItemRangeInsertedWrapper(0, list.size());
        }
    }

    public void addMoreData(List<M> list) {
        if (BGABaseAdapterUtil.isListNotEmpty(list)) {
            int size = this.mData.size();
            List<M> list2 = this.mData;
            list2.addAll(list2.size(), list);
            notifyItemRangeInsertedWrapper(size, list.size());
        }
    }

    public final void notifyDataSetChangedWrapper() {
        BGAHeaderAndFooterAdapter bGAHeaderAndFooterAdapter = this.mHeaderAndFooterAdapter;
        if (bGAHeaderAndFooterAdapter == null) {
            notifyDataSetChanged();
        } else {
            bGAHeaderAndFooterAdapter.notifyDataSetChanged();
        }
    }

    public void setData(List<M> list) {
        if (BGABaseAdapterUtil.isListNotEmpty(list)) {
            this.mData = list;
        } else {
            this.mData.clear();
        }
        notifyDataSetChangedWrapper();
    }

    public void clear() {
        this.mData.clear();
        notifyDataSetChangedWrapper();
    }

    public final void notifyItemRemovedWrapper(int i) {
        BGAHeaderAndFooterAdapter bGAHeaderAndFooterAdapter = this.mHeaderAndFooterAdapter;
        if (bGAHeaderAndFooterAdapter == null) {
            notifyItemRemoved(i);
        } else {
            bGAHeaderAndFooterAdapter.notifyItemRemoved(bGAHeaderAndFooterAdapter.getHeadersCount() + i);
        }
    }

    public void removeItem(int i) {
        this.mData.remove(i);
        notifyItemRemovedWrapper(i);
    }

    public void removeItem(RecyclerView.ViewHolder viewHolder) {
        int adapterPosition = viewHolder.getAdapterPosition();
        BGAHeaderAndFooterAdapter bGAHeaderAndFooterAdapter = this.mHeaderAndFooterAdapter;
        if (bGAHeaderAndFooterAdapter != null) {
            this.mData.remove(adapterPosition - bGAHeaderAndFooterAdapter.getHeadersCount());
            this.mHeaderAndFooterAdapter.notifyItemRemoved(adapterPosition);
            return;
        }
        removeItem(adapterPosition);
    }

    public void removeItem(M m) {
        removeItem(this.mData.indexOf(m));
    }

    public final void notifyItemInsertedWrapper(int i) {
        BGAHeaderAndFooterAdapter bGAHeaderAndFooterAdapter = this.mHeaderAndFooterAdapter;
        if (bGAHeaderAndFooterAdapter == null) {
            notifyItemInserted(i);
        } else {
            bGAHeaderAndFooterAdapter.notifyItemInserted(bGAHeaderAndFooterAdapter.getHeadersCount() + i);
        }
    }

    public void addItem(int i, M m) {
        this.mData.add(i, m);
        notifyItemInsertedWrapper(i);
    }

    public void addFirstItem(M m) {
        addItem(0, m);
    }

    public void addLastItem(M m) {
        addItem(this.mData.size(), m);
    }

    public final void notifyItemChangedWrapper(int i) {
        BGAHeaderAndFooterAdapter bGAHeaderAndFooterAdapter = this.mHeaderAndFooterAdapter;
        if (bGAHeaderAndFooterAdapter == null) {
            notifyItemChanged(i);
        } else {
            bGAHeaderAndFooterAdapter.notifyItemChanged(bGAHeaderAndFooterAdapter.getHeadersCount() + i);
        }
    }

    public void setItem(int i, M m) {
        this.mData.set(i, m);
        notifyItemChangedWrapper(i);
    }

    public void setItem(M m, M m2) {
        setItem(this.mData.indexOf(m), (int) m2);
    }

    public final void notifyItemMovedWrapper(int i, int i2) {
        BGAHeaderAndFooterAdapter bGAHeaderAndFooterAdapter = this.mHeaderAndFooterAdapter;
        if (bGAHeaderAndFooterAdapter == null) {
            notifyItemMoved(i, i2);
        } else {
            bGAHeaderAndFooterAdapter.notifyItemMoved(bGAHeaderAndFooterAdapter.getHeadersCount() + i, this.mHeaderAndFooterAdapter.getHeadersCount() + i2);
        }
    }

    public void moveItem(int i, int i2) {
        notifyItemChangedWrapper(i);
        notifyItemChangedWrapper(i2);
        List<M> list = this.mData;
        list.add(i2, list.remove(i));
        notifyItemMovedWrapper(i, i2);
    }

    public void moveItem(RecyclerView.ViewHolder viewHolder, RecyclerView.ViewHolder viewHolder2) {
        int adapterPosition = viewHolder.getAdapterPosition();
        int adapterPosition2 = viewHolder2.getAdapterPosition();
        BGAHeaderAndFooterAdapter bGAHeaderAndFooterAdapter = this.mHeaderAndFooterAdapter;
        if (bGAHeaderAndFooterAdapter != null) {
            bGAHeaderAndFooterAdapter.notifyItemChanged(adapterPosition);
            this.mHeaderAndFooterAdapter.notifyItemChanged(adapterPosition2);
            this.mData.add(adapterPosition2 - this.mHeaderAndFooterAdapter.getHeadersCount(), this.mData.remove(adapterPosition - this.mHeaderAndFooterAdapter.getHeadersCount()));
            this.mHeaderAndFooterAdapter.notifyItemMoved(adapterPosition, adapterPosition2);
            return;
        }
        moveItem(adapterPosition, adapterPosition2);
    }

    public M getFirstItem() {
        if (getItemCount() > 0) {
            return getItem(0);
        }
        return null;
    }

    public M getLastItem() {
        if (getItemCount() > 0) {
            return getItem(getItemCount() - 1);
        }
        return null;
    }

    public void addHeaderView(View view) {
        getHeaderAndFooterAdapter().addHeaderView(view);
    }

    public void addFooterView(View view) {
        getHeaderAndFooterAdapter().addFooterView(view);
    }

    public void removeHeaderView(View view) {
        getHeaderAndFooterAdapter().removeHeaderView(view);
    }

    public void removeFooterView(View view) {
        getHeaderAndFooterAdapter().removeFooterView(view);
    }

    public int getHeadersCount() {
        BGAHeaderAndFooterAdapter bGAHeaderAndFooterAdapter = this.mHeaderAndFooterAdapter;
        if (bGAHeaderAndFooterAdapter == null) {
            return 0;
        }
        return bGAHeaderAndFooterAdapter.getHeadersCount();
    }

    public int getFootersCount() {
        BGAHeaderAndFooterAdapter bGAHeaderAndFooterAdapter = this.mHeaderAndFooterAdapter;
        if (bGAHeaderAndFooterAdapter == null) {
            return 0;
        }
        return bGAHeaderAndFooterAdapter.getFootersCount();
    }

    public BGAHeaderAndFooterAdapter getHeaderAndFooterAdapter() {
        if (this.mHeaderAndFooterAdapter == null) {
            synchronized (this) {
                if (this.mHeaderAndFooterAdapter == null) {
                    this.mHeaderAndFooterAdapter = new BGAHeaderAndFooterAdapter(this);
                }
            }
        }
        return this.mHeaderAndFooterAdapter;
    }

    public boolean isHeaderOrFooter(RecyclerView.ViewHolder viewHolder) {
        return viewHolder.getAdapterPosition() < getHeadersCount() || viewHolder.getAdapterPosition() >= getHeadersCount() + getItemCount();
    }

    public void setCheckedPosition(int i) {
        int i2 = this.mCheckedPosition;
        if (i != i2) {
            this.mCheckedPosition = i;
            if (i < getData().size()) {
                notifyItemChangedWrapper(this.mCheckedPosition);
            }
            if (i2 < getData().size()) {
                notifyItemChangedWrapper(i2);
            }
        }
    }

    public int getCheckedPosition() {
        return this.mCheckedPosition;
    }
}
