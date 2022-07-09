package com.opensource.svgaplayer.proto;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.WireField;
import com.squareup.wire.internal.Internal;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import okio.ByteString;
/* loaded from: classes.dex */
public final class MovieEntity extends Message<MovieEntity, Builder> {
    public static final ProtoAdapter<MovieEntity> ADAPTER = new ProtoAdapter_MovieEntity();
    public static final String DEFAULT_VERSION = "";
    private static final long serialVersionUID = 0;
    @WireField(adapter = "com.opensource.svgaplayer.proto.AudioEntity#ADAPTER", label = WireField.Label.REPEATED, tag = 5)
    public final List<AudioEntity> audios;
    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BYTES", keyAdapter = "com.squareup.wire.ProtoAdapter#STRING", tag = 3)
    public final Map<String, ByteString> images;
    @WireField(adapter = "com.opensource.svgaplayer.proto.MovieParams#ADAPTER", tag = 2)
    public final MovieParams params;
    @WireField(adapter = "com.opensource.svgaplayer.proto.SpriteEntity#ADAPTER", label = WireField.Label.REPEATED, tag = 4)
    public final List<SpriteEntity> sprites;
    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", tag = 1)
    public final String version;

    public MovieEntity(String str, MovieParams movieParams, Map<String, ByteString> map, List<SpriteEntity> list, List<AudioEntity> list2) {
        this(str, movieParams, map, list, list2, ByteString.EMPTY);
    }

    public MovieEntity(String str, MovieParams movieParams, Map<String, ByteString> map, List<SpriteEntity> list, List<AudioEntity> list2, ByteString byteString) {
        super(ADAPTER, byteString);
        this.version = str;
        this.params = movieParams;
        this.images = Internal.immutableCopyOf("images", map);
        this.sprites = Internal.immutableCopyOf("sprites", list);
        this.audios = Internal.immutableCopyOf("audios", list2);
    }

    @Override // com.squareup.wire.Message
    /* renamed from: newBuilder */
    public Message.Builder<MovieEntity, Builder> newBuilder2() {
        Builder builder = new Builder();
        builder.version = this.version;
        builder.params = this.params;
        builder.images = Internal.copyOf("images", this.images);
        builder.sprites = Internal.copyOf("sprites", this.sprites);
        builder.audios = Internal.copyOf("audios", this.audios);
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof MovieEntity)) {
            return false;
        }
        MovieEntity movieEntity = (MovieEntity) obj;
        return unknownFields().equals(movieEntity.unknownFields()) && Internal.equals(this.version, movieEntity.version) && Internal.equals(this.params, movieEntity.params) && this.images.equals(movieEntity.images) && this.sprites.equals(movieEntity.sprites) && this.audios.equals(movieEntity.audios);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int hashCode = unknownFields().hashCode() * 37;
        String str = this.version;
        int i2 = 0;
        int hashCode2 = (hashCode + (str != null ? str.hashCode() : 0)) * 37;
        MovieParams movieParams = this.params;
        if (movieParams != null) {
            i2 = movieParams.hashCode();
        }
        int hashCode3 = ((((((hashCode2 + i2) * 37) + this.images.hashCode()) * 37) + this.sprites.hashCode()) * 37) + this.audios.hashCode();
        this.hashCode = hashCode3;
        return hashCode3;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        StringBuilder sb = new StringBuilder();
        if (this.version != null) {
            sb.append(", version=");
            sb.append(this.version);
        }
        if (this.params != null) {
            sb.append(", params=");
            sb.append(this.params);
        }
        if (!this.images.isEmpty()) {
            sb.append(", images=");
            sb.append(this.images);
        }
        if (!this.sprites.isEmpty()) {
            sb.append(", sprites=");
            sb.append(this.sprites);
        }
        if (!this.audios.isEmpty()) {
            sb.append(", audios=");
            sb.append(this.audios);
        }
        StringBuilder replace = sb.replace(0, 2, "MovieEntity{");
        replace.append('}');
        return replace.toString();
    }

    /* loaded from: classes.dex */
    public static final class Builder extends Message.Builder<MovieEntity, Builder> {
        public MovieParams params;
        public String version;
        public Map<String, ByteString> images = Internal.newMutableMap();
        public List<SpriteEntity> sprites = Internal.newMutableList();
        public List<AudioEntity> audios = Internal.newMutableList();

        public Builder version(String str) {
            this.version = str;
            return this;
        }

        public Builder params(MovieParams movieParams) {
            this.params = movieParams;
            return this;
        }

        public Builder images(Map<String, ByteString> map) {
            Internal.checkElementsNotNull(map);
            this.images = map;
            return this;
        }

        public Builder sprites(List<SpriteEntity> list) {
            Internal.checkElementsNotNull(list);
            this.sprites = list;
            return this;
        }

        public Builder audios(List<AudioEntity> list) {
            Internal.checkElementsNotNull(list);
            this.audios = list;
            return this;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.squareup.wire.Message.Builder
        public MovieEntity build() {
            return new MovieEntity(this.version, this.params, this.images, this.sprites, this.audios, super.buildUnknownFields());
        }
    }

    /* loaded from: classes.dex */
    private static final class ProtoAdapter_MovieEntity extends ProtoAdapter<MovieEntity> {
        private final ProtoAdapter<Map<String, ByteString>> images = ProtoAdapter.newMapAdapter(ProtoAdapter.STRING, ProtoAdapter.BYTES);

        ProtoAdapter_MovieEntity() {
            super(FieldEncoding.LENGTH_DELIMITED, MovieEntity.class);
        }

        public int encodedSize(MovieEntity movieEntity) {
            int i = 0;
            int encodedSizeWithTag = movieEntity.version != null ? ProtoAdapter.STRING.encodedSizeWithTag(1, movieEntity.version) : 0;
            if (movieEntity.params != null) {
                i = MovieParams.ADAPTER.encodedSizeWithTag(2, movieEntity.params);
            }
            return encodedSizeWithTag + i + this.images.encodedSizeWithTag(3, movieEntity.images) + SpriteEntity.ADAPTER.asRepeated().encodedSizeWithTag(4, movieEntity.sprites) + AudioEntity.ADAPTER.asRepeated().encodedSizeWithTag(5, movieEntity.audios) + movieEntity.unknownFields().size();
        }

        public void encode(ProtoWriter protoWriter, MovieEntity movieEntity) throws IOException {
            if (movieEntity.version != null) {
                ProtoAdapter.STRING.encodeWithTag(protoWriter, 1, movieEntity.version);
            }
            if (movieEntity.params != null) {
                MovieParams.ADAPTER.encodeWithTag(protoWriter, 2, movieEntity.params);
            }
            this.images.encodeWithTag(protoWriter, 3, movieEntity.images);
            SpriteEntity.ADAPTER.asRepeated().encodeWithTag(protoWriter, 4, movieEntity.sprites);
            AudioEntity.ADAPTER.asRepeated().encodeWithTag(protoWriter, 5, movieEntity.audios);
            protoWriter.writeBytes(movieEntity.unknownFields());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.squareup.wire.ProtoAdapter
        public MovieEntity decode(ProtoReader protoReader) throws IOException {
            Builder builder = new Builder();
            long beginMessage = protoReader.beginMessage();
            while (true) {
                int nextTag = protoReader.nextTag();
                if (nextTag == -1) {
                    protoReader.endMessage(beginMessage);
                    return builder.build();
                } else if (nextTag == 1) {
                    builder.version(ProtoAdapter.STRING.decode(protoReader));
                } else if (nextTag == 2) {
                    builder.params(MovieParams.ADAPTER.decode(protoReader));
                } else if (nextTag == 3) {
                    builder.images.putAll(this.images.decode(protoReader));
                } else if (nextTag == 4) {
                    builder.sprites.add(SpriteEntity.ADAPTER.decode(protoReader));
                } else if (nextTag != 5) {
                    FieldEncoding peekFieldEncoding = protoReader.peekFieldEncoding();
                    builder.addUnknownField(nextTag, peekFieldEncoding, peekFieldEncoding.rawProtoAdapter().decode(protoReader));
                } else {
                    builder.audios.add(AudioEntity.ADAPTER.decode(protoReader));
                }
            }
        }

        /* JADX WARN: Type inference failed for: r3v1, types: [com.opensource.svgaplayer.proto.MovieEntity$Builder] */
        /* JADX WARN: Unknown variable types count: 1 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public MovieEntity redact(MovieEntity movieEntity) {
            ?? newBuilder = movieEntity.newBuilder2();
            if (newBuilder.params != null) {
                newBuilder.params = MovieParams.ADAPTER.redact(newBuilder.params);
            }
            Internal.redactElements(newBuilder.sprites, SpriteEntity.ADAPTER);
            Internal.redactElements(newBuilder.audios, AudioEntity.ADAPTER);
            newBuilder.clearUnknownFields();
            return newBuilder.build();
        }
    }
}
