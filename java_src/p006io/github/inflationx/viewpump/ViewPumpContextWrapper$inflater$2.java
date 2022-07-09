package p006io.github.inflationx.viewpump;

import android.view.LayoutInflater;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import p006io.github.inflationx.viewpump.internal.ViewPumpLayoutInflater;
/* compiled from: ViewPumpContextWrapper.kt */
@Metadata(m37bv = {1, 0, 3}, m36d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, m35d2 = {"<anonymous>", "Lio/github/inflationx/viewpump/internal/-ViewPumpLayoutInflater;", "invoke"}, m34k = 3, m33mv = {1, 1, 13})
/* renamed from: io.github.inflationx.viewpump.ViewPumpContextWrapper$inflater$2 */
/* loaded from: classes.dex */
final class ViewPumpContextWrapper$inflater$2 extends Lambda implements Function0<ViewPumpLayoutInflater> {
    final /* synthetic */ ViewPumpContextWrapper this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ViewPumpContextWrapper$inflater$2(ViewPumpContextWrapper viewPumpContextWrapper) {
        super(0);
        this.this$0 = viewPumpContextWrapper;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final ViewPumpLayoutInflater invoke() {
        LayoutInflater from = LayoutInflater.from(this.this$0.getBaseContext());
        Intrinsics.checkExpressionValueIsNotNull(from, "LayoutInflater.from(baseContext)");
        return new ViewPumpLayoutInflater(from, this.this$0, false);
    }
}
