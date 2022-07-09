package kotlin.annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import kotlin.Metadata;
/* compiled from: Annotations.kt */
@Target({ElementType.ANNOTATION_TYPE})
@Metadata(m37bv = {1, 0, 3}, m36d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0000\b\u0087\u0002\u0018\u00002\u00020\u0001B\u0000¨\u0006\u0002"}, m35d2 = {"Lkotlin/annotation/Repeatable;", "", "kotlin-stdlib"}, m34k = 1, m33mv = {1, 1, 13})
@Target(allowedTargets = {AnnotationTarget.ANNOTATION_CLASS})
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes.dex */
public @interface Repeatable {
}
