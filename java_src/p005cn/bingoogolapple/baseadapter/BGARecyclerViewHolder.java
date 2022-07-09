package p005cn.bingoogolapple.baseadapter;

import android.content.Context;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
/* renamed from: cn.bingoogolapple.baseadapter.BGARecyclerViewHolder */
/* loaded from: classes.dex */
public class BGARecyclerViewHolder extends RecyclerView.ViewHolder implements View.OnLongClickListener {
    protected Context mContext;
    protected BGAOnRVItemClickListener mOnRVItemClickListener;
    protected BGAOnRVItemLongClickListener mOnRVItemLongClickListener;
    protected RecyclerView mRecyclerView;
    protected BGARecyclerViewAdapter mRecyclerViewAdapter;
    protected BGAViewHolderHelper mViewHolderHelper;

    public BGARecyclerViewHolder(BGARecyclerViewAdapter bGARecyclerViewAdapter, RecyclerView recyclerView, View view, BGAOnRVItemClickListener bGAOnRVItemClickListener, BGAOnRVItemLongClickListener bGAOnRVItemLongClickListener) {
        super(view);
        this.mRecyclerViewAdapter = bGARecyclerViewAdapter;
        this.mRecyclerView = recyclerView;
        this.mContext = recyclerView.getContext();
        this.mOnRVItemClickListener = bGAOnRVItemClickListener;
        this.mOnRVItemLongClickListener = bGAOnRVItemLongClickListener;
        view.setOnClickListener(new BGAOnNoDoubleClickListener() { // from class: cn.bingoogolapple.baseadapter.BGARecyclerViewHolder.1
            @Override // p005cn.bingoogolapple.baseadapter.BGAOnNoDoubleClickListener
            public void onNoDoubleClick(View view2) {
                if (view2.getId() == BGARecyclerViewHolder.this.itemView.getId() && BGARecyclerViewHolder.this.mOnRVItemClickListener != null) {
                    BGARecyclerViewHolder.this.mOnRVItemClickListener.onRVItemClick(BGARecyclerViewHolder.this.mRecyclerView, view2, BGARecyclerViewHolder.this.getAdapterPositionWrapper());
                }
            }
        });
        view.setOnLongClickListener(this);
        this.mViewHolderHelper = new BGAViewHolderHelper(this.mRecyclerView, this);
    }

    public BGAViewHolderHelper getViewHolderHelper() {
        return this.mViewHolderHelper;
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View view) {
        BGAOnRVItemLongClickListener bGAOnRVItemLongClickListener;
        if (view.getId() != this.itemView.getId() || (bGAOnRVItemLongClickListener = this.mOnRVItemLongClickListener) == null) {
            return false;
        }
        return bGAOnRVItemLongClickListener.onRVItemLongClick(this.mRecyclerView, view, getAdapterPositionWrapper());
    }

    public int getAdapterPositionWrapper() {
        if (this.mRecyclerViewAdapter.getHeadersCount() > 0) {
            return getAdapterPosition() - this.mRecyclerViewAdapter.getHeadersCount();
        }
        return getAdapterPosition();
    }
}
