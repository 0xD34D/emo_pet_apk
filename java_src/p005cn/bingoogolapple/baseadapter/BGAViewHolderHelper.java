package p005cn.bingoogolapple.baseadapter;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.text.Html;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.Checkable;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.collection.SparseArrayCompat;
import androidx.recyclerview.widget.RecyclerView;
/* renamed from: cn.bingoogolapple.baseadapter.BGAViewHolderHelper */
/* loaded from: classes.dex */
public class BGAViewHolderHelper implements View.OnLongClickListener, CompoundButton.OnCheckedChangeListener, View.OnTouchListener {
    protected AdapterView mAdapterView;
    protected Context mContext;
    protected View mConvertView;
    protected Object mObj;
    protected BGAOnItemChildCheckedChangeListener mOnItemChildCheckedChangeListener;
    protected BGAOnItemChildClickListener mOnItemChildClickListener;
    protected BGAOnItemChildLongClickListener mOnItemChildLongClickListener;
    protected BGAOnRVItemChildTouchListener mOnRVItemChildTouchListener;
    protected int mPosition;
    protected RecyclerView mRecyclerView;
    protected BGARecyclerViewHolder mRecyclerViewHolder;
    protected final SparseArrayCompat<View> mViews = new SparseArrayCompat<>();

    public BGAViewHolderHelper(ViewGroup viewGroup, View view) {
        this.mAdapterView = (AdapterView) viewGroup;
        this.mConvertView = view;
        this.mContext = view.getContext();
    }

    public BGAViewHolderHelper(RecyclerView recyclerView, BGARecyclerViewHolder bGARecyclerViewHolder) {
        this.mRecyclerView = recyclerView;
        this.mRecyclerViewHolder = bGARecyclerViewHolder;
        View view = bGARecyclerViewHolder.itemView;
        this.mConvertView = view;
        this.mContext = view.getContext();
    }

    public BGARecyclerViewHolder getRecyclerViewHolder() {
        return this.mRecyclerViewHolder;
    }

    public void setPosition(int i) {
        this.mPosition = i;
    }

    public int getPosition() {
        BGARecyclerViewHolder bGARecyclerViewHolder = this.mRecyclerViewHolder;
        if (bGARecyclerViewHolder != null) {
            return bGARecyclerViewHolder.getAdapterPositionWrapper();
        }
        return this.mPosition;
    }

    public void setOnItemChildClickListener(BGAOnItemChildClickListener bGAOnItemChildClickListener) {
        this.mOnItemChildClickListener = bGAOnItemChildClickListener;
    }

    public void setItemChildClickListener(int i) {
        View view = getView(i);
        if (view != null) {
            view.setOnClickListener(new BGAOnNoDoubleClickListener() { // from class: cn.bingoogolapple.baseadapter.BGAViewHolderHelper.1
                @Override // p005cn.bingoogolapple.baseadapter.BGAOnNoDoubleClickListener
                public void onNoDoubleClick(View view2) {
                    if (BGAViewHolderHelper.this.mOnItemChildClickListener == null) {
                        return;
                    }
                    if (BGAViewHolderHelper.this.mRecyclerView != null) {
                        BGAViewHolderHelper.this.mOnItemChildClickListener.onItemChildClick(BGAViewHolderHelper.this.mRecyclerView, view2, BGAViewHolderHelper.this.getPosition());
                    } else if (BGAViewHolderHelper.this.mAdapterView != null) {
                        BGAViewHolderHelper.this.mOnItemChildClickListener.onItemChildClick(BGAViewHolderHelper.this.mAdapterView, view2, BGAViewHolderHelper.this.getPosition());
                    }
                }
            });
        }
    }

    public void setOnItemChildLongClickListener(BGAOnItemChildLongClickListener bGAOnItemChildLongClickListener) {
        this.mOnItemChildLongClickListener = bGAOnItemChildLongClickListener;
    }

    public void setItemChildLongClickListener(int i) {
        View view = getView(i);
        if (view != null) {
            view.setOnLongClickListener(this);
        }
    }

    public void setOnRVItemChildTouchListener(BGAOnRVItemChildTouchListener bGAOnRVItemChildTouchListener) {
        this.mOnRVItemChildTouchListener = bGAOnRVItemChildTouchListener;
    }

    public void setRVItemChildTouchListener(int i) {
        View view = getView(i);
        if (view != null) {
            view.setOnTouchListener(this);
        }
    }

    public void setOnItemChildCheckedChangeListener(BGAOnItemChildCheckedChangeListener bGAOnItemChildCheckedChangeListener) {
        this.mOnItemChildCheckedChangeListener = bGAOnItemChildCheckedChangeListener;
    }

    public void setItemChildCheckedChangeListener(int i) {
        View view = getView(i);
        if (view != null && (view instanceof CompoundButton)) {
            ((CompoundButton) view).setOnCheckedChangeListener(this);
        }
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        BGAOnRVItemChildTouchListener bGAOnRVItemChildTouchListener = this.mOnRVItemChildTouchListener;
        if (bGAOnRVItemChildTouchListener == null || this.mRecyclerView == null) {
            return false;
        }
        return bGAOnRVItemChildTouchListener.onRvItemChildTouch(this.mRecyclerViewHolder, view, motionEvent);
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View view) {
        BGAOnItemChildLongClickListener bGAOnItemChildLongClickListener = this.mOnItemChildLongClickListener;
        if (bGAOnItemChildLongClickListener == null) {
            return false;
        }
        RecyclerView recyclerView = this.mRecyclerView;
        if (recyclerView != null) {
            return bGAOnItemChildLongClickListener.onItemChildLongClick(recyclerView, view, getPosition());
        }
        AdapterView adapterView = this.mAdapterView;
        if (adapterView != null) {
            return bGAOnItemChildLongClickListener.onItemChildLongClick(adapterView, view, getPosition());
        }
        return false;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        BGARecyclerViewAdapter bGARecyclerViewAdapter;
        if (this.mOnItemChildCheckedChangeListener != null) {
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView != null) {
                RecyclerView.Adapter adapter = recyclerView.getAdapter();
                if (adapter instanceof BGAHeaderAndFooterAdapter) {
                    bGARecyclerViewAdapter = (BGARecyclerViewAdapter) ((BGAHeaderAndFooterAdapter) adapter).getInnerAdapter();
                } else {
                    bGARecyclerViewAdapter = (BGARecyclerViewAdapter) adapter;
                }
                if (!bGARecyclerViewAdapter.isIgnoreCheckedChanged()) {
                    this.mOnItemChildCheckedChangeListener.onItemChildCheckedChanged(this.mRecyclerView, compoundButton, getPosition(), z);
                    return;
                }
                return;
            }
            AdapterView adapterView = this.mAdapterView;
            if (adapterView != null && !((BGAAdapterViewAdapter) adapterView.getAdapter()).isIgnoreCheckedChanged()) {
                this.mOnItemChildCheckedChangeListener.onItemChildCheckedChanged(this.mAdapterView, compoundButton, getPosition(), z);
            }
        }
    }

    public <T extends View> T getView(int i) {
        T t = (T) this.mViews.get(i);
        if (t != null) {
            return t;
        }
        T t2 = (T) this.mConvertView.findViewById(i);
        this.mViews.put(i, t2);
        return t2;
    }

    public ImageView getImageView(int i) {
        return (ImageView) getView(i);
    }

    public TextView getTextView(int i) {
        return (TextView) getView(i);
    }

    public View getConvertView() {
        return this.mConvertView;
    }

    public void setObj(Object obj) {
        this.mObj = obj;
    }

    public Object getObj() {
        return this.mObj;
    }

    public BGAViewHolderHelper setText(int i, CharSequence charSequence) {
        if (charSequence == null) {
            charSequence = "";
        }
        getTextView(i).setText(charSequence);
        return this;
    }

    public BGAViewHolderHelper setText(int i, int i2) {
        getTextView(i).setText(i2);
        return this;
    }

    public BGAViewHolderHelper setTextSizeSp(int i, float f) {
        getTextView(i).setTextSize(2, f);
        return this;
    }

    public BGAViewHolderHelper setIsBold(int i, boolean z) {
        getTextView(i).getPaint().setTypeface(z ? Typeface.DEFAULT_BOLD : Typeface.DEFAULT);
        return this;
    }

    public BGAViewHolderHelper setHtml(int i, String str) {
        if (str == null) {
            str = "";
        }
        getTextView(i).setText(Html.fromHtml(str));
        return this;
    }

    public BGAViewHolderHelper setChecked(int i, boolean z) {
        ((Checkable) getView(i)).setChecked(z);
        return this;
    }

    public BGAViewHolderHelper setTag(int i, Object obj) {
        getView(i).setTag(obj);
        return this;
    }

    public BGAViewHolderHelper setTag(int i, int i2, Object obj) {
        getView(i).setTag(i2, obj);
        return this;
    }

    public BGAViewHolderHelper setVisibility(int i, int i2) {
        getView(i).setVisibility(i2);
        return this;
    }

    public BGAViewHolderHelper setImageBitmap(int i, Bitmap bitmap) {
        ((ImageView) getView(i)).setImageBitmap(bitmap);
        return this;
    }

    public BGAViewHolderHelper setImageDrawable(int i, Drawable drawable) {
        ((ImageView) getView(i)).setImageDrawable(drawable);
        return this;
    }

    public BGAViewHolderHelper setTextColorRes(int i, int i2) {
        getTextView(i).setTextColor(this.mContext.getResources().getColor(i2));
        return this;
    }

    public BGAViewHolderHelper setTextColor(int i, int i2) {
        getTextView(i).setTextColor(i2);
        return this;
    }

    public BGAViewHolderHelper setBackgroundRes(int i, int i2) {
        getView(i).setBackgroundResource(i2);
        return this;
    }

    public BGAViewHolderHelper setBackgroundColor(int i, int i2) {
        getView(i).setBackgroundColor(i2);
        return this;
    }

    public BGAViewHolderHelper setBackgroundColorRes(int i, int i2) {
        getView(i).setBackgroundColor(this.mContext.getResources().getColor(i2));
        return this;
    }

    public BGAViewHolderHelper setImageResource(int i, int i2) {
        ((ImageView) getView(i)).setImageResource(i2);
        return this;
    }

    public BGAViewHolderHelper setBold(int i, boolean z) {
        getTextView(i).getPaint().setTypeface(z ? Typeface.DEFAULT_BOLD : Typeface.DEFAULT);
        return this;
    }
}
