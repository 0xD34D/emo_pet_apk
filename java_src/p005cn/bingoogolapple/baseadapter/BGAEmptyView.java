package p005cn.bingoogolapple.baseadapter;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
/* renamed from: cn.bingoogolapple.baseadapter.BGAEmptyView */
/* loaded from: classes.dex */
public class BGAEmptyView extends FrameLayout {
    private View mContentView;
    private Delegate mDelegate;
    private View mEmptyView;
    private ImageView mIconIv;
    private TextView mMsgTv;

    /* renamed from: cn.bingoogolapple.baseadapter.BGAEmptyView$Delegate */
    /* loaded from: classes.dex */
    public interface Delegate {
        void onClickEmptyView(BGAEmptyView bGAEmptyView);

        void onClickIconEmptyView(BGAEmptyView bGAEmptyView);

        void onClickTextEmptyView(BGAEmptyView bGAEmptyView);
    }

    /* renamed from: cn.bingoogolapple.baseadapter.BGAEmptyView$SimpleDelegate */
    /* loaded from: classes.dex */
    public static class SimpleDelegate implements Delegate {
        @Override // p005cn.bingoogolapple.baseadapter.BGAEmptyView.Delegate
        public void onClickEmptyView(BGAEmptyView bGAEmptyView) {
        }

        @Override // p005cn.bingoogolapple.baseadapter.BGAEmptyView.Delegate
        public void onClickIconEmptyView(BGAEmptyView bGAEmptyView) {
        }

        @Override // p005cn.bingoogolapple.baseadapter.BGAEmptyView.Delegate
        public void onClickTextEmptyView(BGAEmptyView bGAEmptyView) {
        }
    }

    public BGAEmptyView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        if (getChildCount() < 0 || getChildCount() > 2) {
            throw new IllegalStateException(BGAEmptyView.class.getSimpleName() + "只能有一个或两个子控件");
        }
        initView();
        setListener();
        showContentView();
    }

    private void initView() {
        if (getChildCount() == 1) {
            this.mContentView = getChildAt(0);
            View.inflate(getContext(), C0647R.layout.bga_baseadapter_empty_view, this);
            this.mEmptyView = getViewById(C0647R.C0650id.ll_bga_adapter_empty_view_root);
        } else {
            this.mEmptyView = getChildAt(0);
            this.mContentView = getChildAt(1);
        }
        this.mMsgTv = (TextView) getViewById(C0647R.C0650id.tv_bga_adapter_empty_view_msg);
        this.mIconIv = (ImageView) getViewById(C0647R.C0650id.iv_bga_adapter_empty_view_icon);
    }

    private void setListener() {
        this.mEmptyView.setOnClickListener(new BGAOnNoDoubleClickListener() { // from class: cn.bingoogolapple.baseadapter.BGAEmptyView.1
            @Override // p005cn.bingoogolapple.baseadapter.BGAOnNoDoubleClickListener
            public void onNoDoubleClick(View view) {
                if (BGAEmptyView.this.mDelegate != null) {
                    BGAEmptyView.this.mDelegate.onClickEmptyView(BGAEmptyView.this);
                }
            }
        });
        this.mIconIv.setOnClickListener(new BGAOnNoDoubleClickListener() { // from class: cn.bingoogolapple.baseadapter.BGAEmptyView.2
            @Override // p005cn.bingoogolapple.baseadapter.BGAOnNoDoubleClickListener
            public void onNoDoubleClick(View view) {
                if (BGAEmptyView.this.mDelegate != null) {
                    BGAEmptyView.this.mDelegate.onClickIconEmptyView(BGAEmptyView.this);
                }
            }
        });
        this.mMsgTv.setOnClickListener(new BGAOnNoDoubleClickListener() { // from class: cn.bingoogolapple.baseadapter.BGAEmptyView.3
            @Override // p005cn.bingoogolapple.baseadapter.BGAOnNoDoubleClickListener
            public void onNoDoubleClick(View view) {
                if (BGAEmptyView.this.mDelegate != null) {
                    BGAEmptyView.this.mDelegate.onClickTextEmptyView(BGAEmptyView.this);
                }
            }
        });
    }

    private void showEmptyView() {
        this.mContentView.setVisibility(8);
        this.mEmptyView.setVisibility(0);
    }

    public void setDelegate(Delegate delegate) {
        this.mDelegate = delegate;
    }

    public void showTextEmptyView(int i) {
        showTextEmptyView(getResources().getString(i));
    }

    public void showTextEmptyView(String str) {
        this.mIconIv.setVisibility(8);
        this.mMsgTv.setVisibility(0);
        this.mMsgTv.setText(str);
        showEmptyView();
    }

    public void showIconEmptyView(int i) {
        this.mIconIv.setVisibility(0);
        this.mMsgTv.setVisibility(8);
        this.mIconIv.setImageResource(i);
        showEmptyView();
    }

    public void showEmptyView(int i, int i2) {
        showEmptyView(getResources().getString(i), i2);
    }

    public void showEmptyView(String str, int i) {
        this.mIconIv.setVisibility(0);
        this.mMsgTv.setVisibility(0);
        this.mIconIv.setImageResource(i);
        this.mMsgTv.setText(str);
        showEmptyView();
    }

    public void showContentView() {
        this.mEmptyView.setVisibility(8);
        this.mContentView.setVisibility(0);
    }

    protected <VT extends View> VT getViewById(int i) {
        return (VT) findViewById(i);
    }
}
