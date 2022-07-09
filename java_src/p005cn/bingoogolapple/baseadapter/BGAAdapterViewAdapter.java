package p005cn.bingoogolapple.baseadapter;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import java.util.ArrayList;
import java.util.List;
/* renamed from: cn.bingoogolapple.baseadapter.BGAAdapterViewAdapter */
/* loaded from: classes.dex */
public abstract class BGAAdapterViewAdapter<M> extends BaseAdapter {
    protected Context mContext;
    protected final int mItemLayoutId;
    protected BGAOnItemChildCheckedChangeListener mOnItemChildCheckedChangeListener;
    protected BGAOnItemChildClickListener mOnItemChildClickListener;
    protected BGAOnItemChildLongClickListener mOnItemChildLongClickListener;
    private boolean mIsIgnoreCheckedChanged = true;
    protected List<M> mData = new ArrayList();

    protected abstract void fillData(BGAViewHolderHelper bGAViewHolderHelper, int i, M m);

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    protected void setItemChildListener(BGAViewHolderHelper bGAViewHolderHelper) {
    }

    public BGAAdapterViewAdapter(Context context, int i) {
        this.mContext = context;
        this.mItemLayoutId = i;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.mData.size();
    }

    @Override // android.widget.Adapter
    public M getItem(int i) {
        return this.mData.get(i);
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        this.mIsIgnoreCheckedChanged = true;
        BGAAdapterViewHolder dequeueReusableAdapterViewHolder = BGAAdapterViewHolder.dequeueReusableAdapterViewHolder(view, viewGroup, this.mItemLayoutId);
        dequeueReusableAdapterViewHolder.getViewHolderHelper().setPosition(i);
        dequeueReusableAdapterViewHolder.getViewHolderHelper().setOnItemChildClickListener(this.mOnItemChildClickListener);
        dequeueReusableAdapterViewHolder.getViewHolderHelper().setOnItemChildLongClickListener(this.mOnItemChildLongClickListener);
        dequeueReusableAdapterViewHolder.getViewHolderHelper().setOnItemChildCheckedChangeListener(this.mOnItemChildCheckedChangeListener);
        setItemChildListener(dequeueReusableAdapterViewHolder.getViewHolderHelper());
        fillData(dequeueReusableAdapterViewHolder.getViewHolderHelper(), i, getItem(i));
        this.mIsIgnoreCheckedChanged = false;
        return dequeueReusableAdapterViewHolder.getConvertView();
    }

    public boolean isIgnoreCheckedChanged() {
        return this.mIsIgnoreCheckedChanged;
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

    public List<M> getData() {
        return this.mData;
    }

    public void addNewData(List<M> list) {
        if (BGABaseAdapterUtil.isListNotEmpty(list)) {
            this.mData.addAll(0, list);
            notifyDataSetChanged();
        }
    }

    public void addMoreData(List<M> list) {
        if (BGABaseAdapterUtil.isListNotEmpty(list)) {
            List<M> list2 = this.mData;
            list2.addAll(list2.size(), list);
            notifyDataSetChanged();
        }
    }

    public void setData(List<M> list) {
        if (BGABaseAdapterUtil.isListNotEmpty(list)) {
            this.mData = list;
        } else {
            this.mData.clear();
        }
        notifyDataSetChanged();
    }

    public void clear() {
        this.mData.clear();
        notifyDataSetChanged();
    }

    public void removeItem(int i) {
        this.mData.remove(i);
        notifyDataSetChanged();
    }

    public void removeItem(M m) {
        this.mData.remove(m);
        notifyDataSetChanged();
    }

    public void addItem(int i, M m) {
        this.mData.add(i, m);
        notifyDataSetChanged();
    }

    public void addFirstItem(M m) {
        addItem(0, m);
    }

    public void addLastItem(M m) {
        addItem(this.mData.size(), m);
    }

    public void setItem(int i, M m) {
        this.mData.set(i, m);
        notifyDataSetChanged();
    }

    public void setItem(M m, M m2) {
        setItem(this.mData.indexOf(m), (int) m2);
    }

    public void moveItem(int i, int i2) {
        List<M> list = this.mData;
        list.add(i2, list.remove(i));
        notifyDataSetChanged();
    }

    public M getFirstItem() {
        if (getCount() > 0) {
            return getItem(0);
        }
        return null;
    }

    public M getLastItem() {
        if (getCount() > 0) {
            return getItem(getCount() - 1);
        }
        return null;
    }
}
