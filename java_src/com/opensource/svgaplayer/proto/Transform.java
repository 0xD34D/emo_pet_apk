package com.opensource.svgaplayer.proto;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.WireField;
import com.squareup.wire.internal.Internal;
import java.io.IOException;
import okio.ByteString;
/* loaded from: classes.dex */
public final class Transform extends Message<Transform, Builder> {
    public static final ProtoAdapter<Transform> ADAPTER = new ProtoAdapter_Transform();
    public static final Float DEFAULT_A;
    public static final Float DEFAULT_B;
    public static final Float DEFAULT_C;
    public static final Float DEFAULT_D;
    public static final Float DEFAULT_TX;
    public static final Float DEFAULT_TY;
    private static final long serialVersionUID = 0;
    @WireField(adapter = "com.squareup.wire.ProtoAdapter#FLOAT", tag = 1)

    /* renamed from: a */
    public final Float f1013a;
    @WireField(adapter = "com.squareup.wire.ProtoAdapter#FLOAT", tag = 2)

    /* renamed from: b */
    public final Float f1014b;
    @WireField(adapter = "com.squareup.wire.ProtoAdapter#FLOAT", tag = 3)

    /* renamed from: c */
    public final Float f1015c;
    @WireField(adapter = "com.squareup.wire.ProtoAdapter#FLOAT", tag = 4)

    /* renamed from: d */
    public final Float f1016d;
    @WireField(adapter = "com.squareup.wire.ProtoAdapter#FLOAT", tag = 5)

    /* renamed from: tx */
    public final Float f1017tx;
    @WireField(adapter = "com.squareup.wire.ProtoAdapter#FLOAT", tag = 6)

    /* renamed from: ty */
    public final Float f1018ty;

    static {
        Float valueOf = Float.valueOf(0.0f);
        DEFAULT_A = valueOf;
        DEFAULT_B = valueOf;
        DEFAULT_C = valueOf;
        DEFAULT_D = valueOf;
        DEFAULT_TX = valueOf;
        DEFAULT_TY = valueOf;
    }

    public Transform(Float f, Float f2, Float f3, Float f4, Float f5, Float f6) {
        this(f, f2, f3, f4, f5, f6, ByteString.EMPTY);
    }

    public Transform(Float f, Float f2, Float f3, Float f4, Float f5, Float f6, ByteString byteString) {
        super(ADAPTER, byteString);
        this.f1013a = f;
        this.f1014b = f2;
        this.f1015c = f3;
        this.f1016d = f4;
        this.f1017tx = f5;
        this.f1018ty = f6;
    }

    @Override // com.squareup.wire.Message
    /* renamed from: newBuilder */
    public Message.Builder<Transform, Builder> newBuilder2() {
        Builder builder = new Builder();
        builder.f1019a = this.f1013a;
        builder.f1020b = this.f1014b;
        builder.f1021c = this.f1015c;
        builder.f1022d = this.f1016d;
        builder.f1023tx = this.f1017tx;
        builder.f1024ty = this.f1018ty;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Transform)) {
            return false;
        }
        Transform transform = (Transform) obj;
        return unknownFields().equals(transform.unknownFields()) && Internal.equals(this.f1013a, transform.f1013a) && Internal.equals(this.f1014b, transform.f1014b) && Internal.equals(this.f1015c, transform.f1015c) && Internal.equals(this.f1016d, transform.f1016d) && Internal.equals(this.f1017tx, transform.f1017tx) && Internal.equals(this.f1018ty, transform.f1018ty);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int hashCode = unknownFields().hashCode() * 37;
        Float f = this.f1013a;
        int i2 = 0;
        int hashCode2 = (hashCode + (f != null ? f.hashCode() : 0)) * 37;
        Float f2 = this.f1014b;
        int hashCode3 = (hashCode2 + (f2 != null ? f2.hashCode() : 0)) * 37;
        Float f3 = this.f1015c;
        int hashCode4 = (hashCode3 + (f3 != null ? f3.hashCode() : 0)) * 37;
        Float f4 = this.f1016d;
        int hashCode5 = (hashCode4 + (f4 != null ? f4.hashCode() : 0)) * 37;
        Float f5 = this.f1017tx;
        int hashCode6 = (hashCode5 + (f5 != null ? f5.hashCode() : 0)) * 37;
        Float f6 = this.f1018ty;
        if (f6 != null) {
            i2 = f6.hashCode();
        }
        int i3 = hashCode6 + i2;
        this.hashCode = i3;
        return i3;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        StringBuilder sb = new StringBuilder();
        if (this.f1013a != null) {
            sb.append(", a=");
            sb.append(this.f1013a);
        }
        if (this.f1014b != null) {
            sb.append(", b=");
            sb.append(this.f1014b);
        }
        if (this.f1015c != null) {
            sb.append(", c=");
            sb.append(this.f1015c);
        }
        if (this.f1016d != null) {
            sb.append(", d=");
            sb.append(this.f1016d);
        }
        if (this.f1017tx != null) {
            sb.append(", tx=");
            sb.append(this.f1017tx);
        }
        if (this.f1018ty != null) {
            sb.append(", ty=");
            sb.append(this.f1018ty);
        }
        StringBuilder replace = sb.replace(0, 2, "Transform{");
        replace.append('}');
        return replace.toString();
    }

    /* loaded from: classes.dex */
    public static final class Builder extends Message.Builder<Transform, Builder> {

        /* renamed from: a */
        public Float f1019a;

        /* renamed from: b */
        public Float f1020b;

        /* renamed from: c */
        public Float f1021c;

        /* renamed from: d */
        public Float f1022d;

        /* renamed from: tx */
        public Float f1023tx;

        /* renamed from: ty */
        public Float f1024ty;

        /* renamed from: a */
        public Builder m49a(Float f) {
            this.f1019a = f;
            return this;
        }

        /* renamed from: b */
        public Builder m48b(Float f) {
            this.f1020b = f;
            return this;
        }

        /* renamed from: c */
        public Builder m47c(Float f) {
            this.f1021c = f;
            return this;
        }

        /* renamed from: d */
        public Builder m46d(Float f) {
            this.f1022d = f;
            return this;
        }

        /* renamed from: tx */
        public Builder m45tx(Float f) {
            this.f1023tx = f;
            return this;
        }

        /* renamed from: ty */
        public Builder m44ty(Float f) {
            this.f1024ty = f;
            return this;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.squareup.wire.Message.Builder
        public Transform build() {
            return new Transform(this.f1019a, this.f1020b, this.f1021c, this.f1022d, this.f1023tx, this.f1024ty, super.buildUnknownFields());
        }
    }

    /* loaded from: classes.dex */
    private static final class ProtoAdapter_Transform extends ProtoAdapter<Transform> {
        ProtoAdapter_Transform() {
            super(FieldEncoding.LENGTH_DELIMITED, Transform.class);
        }

        public int encodedSize(Transform transform) {
            int i = 0;
            int encodedSizeWithTag = (transform.f1013a != null ? ProtoAdapter.FLOAT.encodedSizeWithTag(1, transform.f1013a) : 0) + (transform.f1014b != null ? ProtoAdapter.FLOAT.encodedSizeWithTag(2, transform.f1014b) : 0) + (transform.f1015c != null ? ProtoAdapter.FLOAT.encodedSizeWithTag(3, transform.f1015c) : 0) + (transform.f1016d != null ? ProtoAdapter.FLOAT.encodedSizeWithTag(4, transform.f1016d) : 0) + (transform.f1017tx != null ? ProtoAdapter.FLOAT.encodedSizeWithTag(5, transform.f1017tx) : 0);
            if (transform.f1018ty != null) {
                i = ProtoAdapter.FLOAT.encodedSizeWithTag(6, transform.f1018ty);
            }
            return encodedSizeWithTag + i + transform.unknownFields().size();
        }

        public void encode(ProtoWriter protoWriter, Transform transform) throws IOException {
            if (transform.f1013a != null) {
                ProtoAdapter.FLOAT.encodeWithTag(protoWriter, 1, transform.f1013a);
            }
            if (transform.f1014b != null) {
                ProtoAdapter.FLOAT.encodeWithTag(protoWriter, 2, transform.f1014b);
            }
            if (transform.f1015c != null) {
                ProtoAdapter.FLOAT.encodeWithTag(protoWriter, 3, transform.f1015c);
            }
            if (transform.f1016d != null) {
                ProtoAdapter.FLOAT.encodeWithTag(protoWriter, 4, transform.f1016d);
            }
            if (transform.f1017tx != null) {
                ProtoAdapter.FLOAT.encodeWithTag(protoWriter, 5, transform.f1017tx);
            }
            if (transform.f1018ty != null) {
                ProtoAdapter.FLOAT.encodeWithTag(protoWriter, 6, transform.f1018ty);
            }
            protoWriter.writeBytes(transform.unknownFields());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.squareup.wire.ProtoAdapter
        public Transform decode(ProtoReader protoReader) throws IOException {
            Builder builder = new Builder();
            long beginMessage = protoReader.beginMessage();
            while (true) {
                int nextTag = protoReader.nextTag();
                if (nextTag != -1) {
                    switch (nextTag) {
                        case 1:
                            builder.m49a(ProtoAdapter.FLOAT.decode(protoReader));
                            break;
                        case 2:
                            builder.m48b(ProtoAdapter.FLOAT.decode(protoReader));
                            break;
                        case 3:
                            builder.m47c(ProtoAdapter.FLOAT.decode(protoReader));
                            break;
                        case 4:
                            builder.m46d(ProtoAdapter.FLOAT.decode(protoReader));
                            break;
                        case 5:
                            builder.m45tx(ProtoAdapter.FLOAT.decode(protoReader));
                            break;
                        case 6:
                            builder.m44ty(ProtoAdapter.FLOAT.decode(protoReader));
                            break;
                        default:
                            FieldEncoding peekFieldEncoding = protoReader.peekFieldEncoding();
                            builder.addUnknownField(nextTag, peekFieldEncoding, peekFieldEncoding.rawProtoAdapter().decode(protoReader));
                            break;
                    }
                } else {
                    protoReader.endMessage(beginMessage);
                    return builder.build();
                }
            }
        }

        public Transform redact(Transform transform) {
            Message.Builder<Transform, Builder> newBuilder = transform.newBuilder2();
            newBuilder.clearUnknownFields();
            return newBuilder.build();
        }
    }
}
