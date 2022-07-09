package p005cn.bingoogolapple.baseadapter;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
/* renamed from: cn.bingoogolapple.baseadapter.BGAGridDivider */
/* loaded from: classes.dex */
public class BGAGridDivider extends RecyclerView.ItemDecoration {
    private int mSpace;

    private BGAGridDivider(int i) {
        this.mSpace = i;
    }

    public static BGAGridDivider newInstanceWithSpaceRes(int i) {
        return new BGAGridDivider(BGABaseAdapterUtil.getDimensionPixelOffset(i));
    }

    public static BGAGridDivider newInstanceWithSpaceDp(int i) {
        return new BGAGridDivider(BGABaseAdapterUtil.dp2px(i));
    }

    public static BGAGridDivider newInstanceWithSpacePx(int i) {
        return new BGAGridDivider(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
        rect.left = this.mSpace;
        rect.right = this.mSpace;
        rect.top = this.mSpace;
        rect.bottom = this.mSpace;
    }
}
