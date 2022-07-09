package p006io.github.inflationx.viewpump.internal;

import android.view.LayoutInflater;
import java.lang.reflect.Field;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* compiled from: -ViewPumpLayoutInflater.kt */
@Metadata(m37bv = {1, 0, 3}, m36d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, m35d2 = {"<anonymous>", "Ljava/lang/reflect/Field;", "invoke"}, m34k = 3, m33mv = {1, 1, 13})
/* renamed from: io.github.inflationx.viewpump.internal.-ViewPumpLayoutInflater$Companion$CONSTRUCTOR_ARGS_FIELD$2  reason: invalid class name */
/* loaded from: classes.dex */
final class ViewPumpLayoutInflater$Companion$CONSTRUCTOR_ARGS_FIELD$2 extends Lambda implements Function0<Field> {
    public static final ViewPumpLayoutInflater$Companion$CONSTRUCTOR_ARGS_FIELD$2 INSTANCE = new ViewPumpLayoutInflater$Companion$CONSTRUCTOR_ARGS_FIELD$2();

    ViewPumpLayoutInflater$Companion$CONSTRUCTOR_ARGS_FIELD$2() {
        super(0);
    }

    @Override // kotlin.jvm.functions.Function0
    public final Field invoke() {
        Field declaredField = LayoutInflater.class.getDeclaredField("mConstructorArgs");
        if (declaredField != null) {
            declaredField.setAccessible(true);
            return declaredField;
        }
        throw new IllegalArgumentException("No constructor arguments field found in LayoutInflater!".toString());
    }
}
