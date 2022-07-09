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
public final class Layout extends Message<Layout, Builder> {
    public static final ProtoAdapter<Layout> ADAPTER = new ProtoAdapter_Layout();
    public static final Float DEFAULT_HEIGHT;
    public static final Float DEFAULT_WIDTH;
    public static final Float DEFAULT_X;
    public static final Float DEFAULT_Y;
    private static final long serialVersionUID = 0;
    @WireField(adapter = "com.squareup.wire.ProtoAdapter#FLOAT", tag = 4)
    public final Float height;
    @WireField(adapter = "com.squareup.wire.ProtoAdapter#FLOAT", tag = 3)
    public final Float width;
    @WireField(adapter = "com.squareup.wire.ProtoAdapter#FLOAT", tag = 1)

    /* renamed from: x */
    public final Float f991x;
    @WireField(adapter = "com.squareup.wire.ProtoAdapter#FLOAT", tag = 2)

    /* renamed from: y */
    public final Float f992y;

    static {
        Float valueOf = Float.valueOf(0.0f);
        DEFAULT_X = valueOf;
        DEFAULT_Y = valueOf;
        DEFAULT_WIDTH = valueOf;
        DEFAULT_HEIGHT = valueOf;
    }

    public Layout(Float f, Float f2, Float f3, Float f4) {
        this(f, f2, f3, f4, ByteString.EMPTY);
    }

    public Layout(Float f, Float f2, Float f3, Float f4, ByteString byteString) {
        super(ADAPTER, byteString);
        this.f991x = f;
        this.f992y = f2;
        this.width = f3;
        this.height = f4;
    }

    @Override // com.squareup.wire.Message
    /* renamed from: newBuilder */
    public Message.Builder<Layout, Builder> newBuilder2() {
        Builder builder = new Builder();
        builder.f993x = this.f991x;
        builder.f994y = this.f992y;
        builder.width = this.width;
        builder.height = this.height;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Layout)) {
            return false;
        }
        Layout layout = (Layout) obj;
        return unknownFields().equals(layout.unknownFields()) && Internal.equals(this.f991x, layout.f991x) && Internal.equals(this.f992y, layout.f992y) && Internal.equals(this.width, layout.width) && Internal.equals(this.height, layout.height);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int hashCode = unknownFields().hashCode() * 37;
        Float f = this.f991x;
        int i2 = 0;
        int hashCode2 = (hashCode + (f != null ? f.hashCode() : 0)) * 37;
        Float f2 = this.f992y;
        int hashCode3 = (hashCode2 + (f2 != null ? f2.hashCode() : 0)) * 37;
        Float f3 = this.width;
        int hashCode4 = (hashCode3 + (f3 != null ? f3.hashCode() : 0)) * 37;
        Float f4 = this.height;
        if (f4 != null) {
            i2 = f4.hashCode();
        }
        int i3 = hashCode4 + i2;
        this.hashCode = i3;
        return i3;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        StringBuilder sb = new StringBuilder();
        if (this.f991x != null) {
            sb.append(", x=");
            sb.append(this.f991x);
        }
        if (this.f992y != null) {
            sb.append(", y=");
            sb.append(this.f992y);
        }
        if (this.width != null) {
            sb.append(", width=");
            sb.append(this.width);
        }
        if (this.height != null) {
            sb.append(", height=");
            sb.append(this.height);
        }
        StringBuilder replace = sb.replace(0, 2, "Layout{");
        replace.append('}');
        return replace.toString();
    }

    /* loaded from: classes.dex */
    public static final class Builder extends Message.Builder<Layout, Builder> {
        public Float height;
        public Float width;

        /* renamed from: x */
        public Float f993x;

        /* renamed from: y */
        public Float f994y;

        /* renamed from: x */
        public Builder m60x(Float f) {
            this.f993x = f;
            return this;
        }

        /* renamed from: y */
        public Builder m59y(Float f) {
            this.f994y = f;
            return this;
        }

        public Builder width(Float f) {
            this.width = f;
            return this;
        }

        public Builder height(Float f) {
            this.height = f;
            return this;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.squareup.wire.Message.Builder
        public Layout build() {
            return new Layout(this.f993x, this.f994y, this.width, this.height, super.buildUnknownFields());
        }
    }

    /* loaded from: classes.dex */
    private static final class ProtoAdapter_Layout extends ProtoAdapter<Layout> {
        ProtoAdapter_Layout() {
            super(FieldEncoding.LENGTH_DELIMITED, Layout.class);
        }

        public int encodedSize(Layout layout) {
            int i = 0;
            int encodedSizeWithTag = (layout.f991x != null ? ProtoAdapter.FLOAT.encodedSizeWithTag(1, layout.f991x) : 0) + (layout.f992y != null ? ProtoAdapter.FLOAT.encodedSizeWithTag(2, layout.f992y) : 0) + (layout.width != null ? ProtoAdapter.FLOAT.encodedSizeWithTag(3, layout.width) : 0);
            if (layout.height != null) {
                i = ProtoAdapter.FLOAT.encodedSizeWithTag(4, layout.height);
            }
            return encodedSizeWithTag + i + layout.unknownFields().size();
        }

        public void encode(ProtoWriter protoWriter, Layout layout) throws IOException {
            if (layout.f991x != null) {
                ProtoAdapter.FLOAT.encodeWithTag(protoWriter, 1, layout.f991x);
            }
            if (layout.f992y != null) {
                ProtoAdapter.FLOAT.encodeWithTag(protoWriter, 2, layout.f992y);
            }
            if (layout.width != null) {
                ProtoAdapter.FLOAT.encodeWithTag(protoWriter, 3, layout.width);
            }
            if (layout.height != null) {
                ProtoAdapter.FLOAT.encodeWithTag(protoWriter, 4, layout.height);
            }
            protoWriter.writeBytes(layout.unknownFields());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.squareup.wire.ProtoAdapter
        public Layout decode(ProtoReader protoReader) throws IOException {
            Builder builder = new Builder();
            long beginMessage = protoReader.beginMessage();
            while (true) {
                int nextTag = protoReader.nextTag();
                if (nextTag == -1) {
                    protoReader.endMessage(beginMessage);
                    return builder.build();
                } else if (nextTag == 1) {
                    builder.m60x(ProtoAdapter.FLOAT.decode(protoReader));
                } else if (nextTag == 2) {
                    builder.m59y(ProtoAdapter.FLOAT.decode(protoReader));
                } else if (nextTag == 3) {
                    builder.width(ProtoAdapter.FLOAT.decode(protoReader));
                } else if (nextTag != 4) {
                    FieldEncoding peekFieldEncoding = protoReader.peekFieldEncoding();
                    builder.addUnknownField(nextTag, peekFieldEncoding, peekFieldEncoding.rawProtoAdapter().decode(protoReader));
                } else {
                    builder.height(ProtoAdapter.FLOAT.decode(protoReader));
                }
            }
        }

        public Layout redact(Layout layout) {
            Message.Builder<Layout, Builder> newBuilder = layout.newBuilder2();
            newBuilder.clearUnknownFields();
            return newBuilder.build();
        }
    }
}
