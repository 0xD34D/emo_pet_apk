package com.google.android.play.core.internal;

import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.util.Collection;
/* renamed from: com.google.android.play.core.internal.bg */
/* loaded from: classes.dex */
public final class C1129bg<T> {

    /* renamed from: a */
    private final Object f648a;

    /* renamed from: b */
    private final Field f649b;

    /* renamed from: c */
    private final Class<T> f650c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1129bg(Object obj, Field field, Class<T> cls) {
        this.f648a = obj;
        this.f649b = field;
        this.f650c = cls;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1129bg(Object obj, Field field, Class cls, byte[] bArr) {
        this(obj, field, Array.newInstance(cls, 0).getClass());
    }

    /* renamed from: f */
    private Class m379f() {
        return m382c().getType().getComponentType();
    }

    /* renamed from: a */
    public final T m384a() {
        try {
            return this.f650c.cast(this.f649b.get(this.f648a));
        } catch (Exception e) {
            throw new C1131bi(String.format("Failed to get value of field %s of type %s on object of type %s", this.f649b.getName(), this.f648a.getClass().getName(), this.f650c.getName()), e);
        }
    }

    /* renamed from: b */
    public final void m383b(T t) {
        try {
            this.f649b.set(this.f648a, t);
        } catch (Exception e) {
            throw new C1131bi(String.format("Failed to set value of field %s of type %s on object of type %s", this.f649b.getName(), this.f648a.getClass().getName(), this.f650c.getName()), e);
        }
    }

    /* renamed from: c */
    protected final Field m382c() {
        return this.f649b;
    }

    /* renamed from: d */
    public void m381d(Collection collection) {
        Object[] objArr = (Object[]) m384a();
        int length = objArr == null ? 0 : objArr.length;
        Object[] objArr2 = (Object[]) Array.newInstance(m379f(), collection.size() + length);
        if (objArr != null) {
            System.arraycopy(objArr, 0, objArr2, 0, objArr.length);
        }
        for (Object obj : collection) {
            objArr2[length] = obj;
            length++;
        }
        m383b(objArr2);
    }

    /* renamed from: e */
    public void m380e(Collection collection) {
        Object[] objArr = (Object[]) m384a();
        int i = 0;
        Object[] objArr2 = (Object[]) Array.newInstance(m379f(), (objArr == null ? 0 : objArr.length) + collection.size());
        if (objArr != null) {
            System.arraycopy(objArr, 0, objArr2, collection.size(), objArr.length);
        }
        for (Object obj : collection) {
            objArr2[i] = obj;
            i++;
        }
        m383b(objArr2);
    }
}
