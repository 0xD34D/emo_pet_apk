package p005cn.bingoogolapple.baseadapter;

import android.view.View;
/* renamed from: cn.bingoogolapple.baseadapter.BGAViewBindingAdapter */
/* loaded from: classes.dex */
public class BGAViewBindingAdapter {
    public static void onNoDoubleClick(View view, final View.OnClickListener onClickListener) {
        view.setOnClickListener(new BGAOnNoDoubleClickListener() { // from class: cn.bingoogolapple.baseadapter.BGAViewBindingAdapter.1
            @Override // p005cn.bingoogolapple.baseadapter.BGAOnNoDoubleClickListener
            public void onNoDoubleClick(View view2) {
                onClickListener.onClick(view2);
            }
        });
    }
}
