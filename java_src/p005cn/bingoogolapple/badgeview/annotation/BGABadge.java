package p005cn.bingoogolapple.badgeview.annotation;

import android.view.View;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
@Target({ElementType.TYPE})
@Retention(RetentionPolicy.CLASS)
/* renamed from: cn.bingoogolapple.badgeview.annotation.BGABadge */
/* loaded from: classes.dex */
public @interface BGABadge {
    Class<? extends View>[] value() default {};
}
