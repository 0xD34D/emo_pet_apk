package p005cn.bingoogolapple.baseadapter;

import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
/* renamed from: cn.bingoogolapple.baseadapter.BGARVVerticalScrollHelper */
/* loaded from: classes.dex */
public class BGARVVerticalScrollHelper extends RecyclerView.OnScrollListener {
    private RecyclerView mDataRv;
    private Delegate mDelegate;
    private LinearLayoutManager mLinearLayoutManager;
    private int mNewPosition = 0;
    private boolean mIsScrolling = false;
    private boolean mIsSmoothScroll = false;
    private int mState = 0;

    /* renamed from: cn.bingoogolapple.baseadapter.BGARVVerticalScrollHelper$Delegate */
    /* loaded from: classes.dex */
    public interface Delegate {
        void dragging(int i);

        int getCategoryHeight();

        void settling(int i);
    }

    /* renamed from: cn.bingoogolapple.baseadapter.BGARVVerticalScrollHelper$SimpleDelegate */
    /* loaded from: classes.dex */
    public static class SimpleDelegate implements Delegate {
        @Override // p005cn.bingoogolapple.baseadapter.BGARVVerticalScrollHelper.Delegate
        public void dragging(int i) {
        }

        @Override // p005cn.bingoogolapple.baseadapter.BGARVVerticalScrollHelper.Delegate
        public int getCategoryHeight() {
            return 0;
        }

        @Override // p005cn.bingoogolapple.baseadapter.BGARVVerticalScrollHelper.Delegate
        public void settling(int i) {
        }
    }

    public static BGARVVerticalScrollHelper newInstance(RecyclerView recyclerView) {
        return new BGARVVerticalScrollHelper(recyclerView, null);
    }

    public static BGARVVerticalScrollHelper newInstance(RecyclerView recyclerView, Delegate delegate) {
        return new BGARVVerticalScrollHelper(recyclerView, delegate);
    }

    private BGARVVerticalScrollHelper(RecyclerView recyclerView, Delegate delegate) {
        this.mDataRv = recyclerView;
        recyclerView.addOnScrollListener(this);
        this.mDelegate = delegate;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
    public void onScrollStateChanged(RecyclerView recyclerView, int i) {
        try {
            this.mState = i;
            if (i == 0 && this.mIsScrolling && this.mIsSmoothScroll) {
                this.mIsScrolling = false;
                this.mIsSmoothScroll = false;
                int findFirstVisibleItemPosition = this.mNewPosition - findFirstVisibleItemPosition();
                if (findFirstVisibleItemPosition >= 0 && findFirstVisibleItemPosition < recyclerView.getChildCount()) {
                    recyclerView.scrollBy(0, recyclerView.getChildAt(findFirstVisibleItemPosition).getTop() - getCategoryHeight());
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
    public void onScrolled(RecyclerView recyclerView, int i, int i2) {
        Delegate delegate;
        try {
            if (this.mState == 1) {
                this.mIsScrolling = false;
                this.mIsSmoothScroll = false;
                Delegate delegate2 = this.mDelegate;
                if (delegate2 != null) {
                    delegate2.dragging(findFirstVisibleItemPosition());
                }
            }
            if (!this.mIsScrolling && !this.mIsSmoothScroll && this.mState == 2 && (delegate = this.mDelegate) != null) {
                delegate.settling(findFirstVisibleItemPosition());
            }
            if (this.mIsScrolling && !this.mIsSmoothScroll) {
                this.mIsScrolling = false;
                int findFirstVisibleItemPosition = this.mNewPosition - findFirstVisibleItemPosition();
                if (findFirstVisibleItemPosition >= 0 && findFirstVisibleItemPosition < this.mDataRv.getChildCount()) {
                    this.mDataRv.scrollBy(0, this.mDataRv.getChildAt(findFirstVisibleItemPosition).getTop() - getCategoryHeight());
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private int getCategoryHeight() {
        Delegate delegate = this.mDelegate;
        if (delegate == null) {
            return 0;
        }
        return delegate.getCategoryHeight();
    }

    public void smoothScrollToPosition(int i) {
        if (i >= 0) {
            try {
                if (i < this.mDataRv.getAdapter().getItemCount()) {
                    this.mNewPosition = i;
                    this.mDataRv.stopScroll();
                    this.mIsSmoothScroll = true;
                    int findFirstVisibleItemPosition = findFirstVisibleItemPosition();
                    int findLastVisibleItemPosition = findLastVisibleItemPosition();
                    int i2 = this.mNewPosition;
                    if (i2 <= findFirstVisibleItemPosition) {
                        this.mDataRv.smoothScrollToPosition(i2);
                    } else if (i2 <= findLastVisibleItemPosition) {
                        int top = this.mDataRv.getChildAt(i2 - findFirstVisibleItemPosition).getTop() - getCategoryHeight();
                        if (top <= 0) {
                            this.mDataRv.scrollBy(0, 2);
                            smoothScrollToPosition(this.mNewPosition);
                        } else {
                            this.mDataRv.smoothScrollBy(0, top);
                            this.mIsScrolling = true;
                        }
                    } else {
                        this.mDataRv.smoothScrollToPosition(i2);
                        this.mIsScrolling = true;
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public void scrollToPosition(int i) {
        if (i >= 0) {
            try {
                if (i < this.mDataRv.getAdapter().getItemCount()) {
                    this.mNewPosition = i;
                    this.mDataRv.stopScroll();
                    this.mIsSmoothScroll = false;
                    int findFirstVisibleItemPosition = findFirstVisibleItemPosition();
                    int findLastVisibleItemPosition = findLastVisibleItemPosition();
                    if (i <= findFirstVisibleItemPosition) {
                        this.mDataRv.scrollToPosition(i);
                    } else if (i <= findLastVisibleItemPosition) {
                        this.mDataRv.scrollBy(0, this.mDataRv.getChildAt(i - findFirstVisibleItemPosition).getTop() - getCategoryHeight());
                    } else {
                        this.mDataRv.scrollToPosition(i);
                        this.mIsScrolling = true;
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public int findFirstVisibleItemPosition() {
        return getLinearLayoutManager().findFirstVisibleItemPosition();
    }

    public int findLastVisibleItemPosition() {
        return getLinearLayoutManager().findLastVisibleItemPosition();
    }

    public LinearLayoutManager getLinearLayoutManager() {
        if (this.mLinearLayoutManager == null) {
            this.mLinearLayoutManager = (LinearLayoutManager) this.mDataRv.getLayoutManager();
        }
        return this.mLinearLayoutManager;
    }
}
