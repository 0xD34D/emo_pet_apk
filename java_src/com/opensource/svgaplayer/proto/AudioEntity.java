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
public final class AudioEntity extends Message<AudioEntity, Builder> {
    public static final String DEFAULT_AUDIOKEY = "";
    private static final long serialVersionUID = 0;
    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", tag = 1)
    public final String audioKey;
    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32", tag = 3)
    public final Integer endFrame;
    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32", tag = 2)
    public final Integer startFrame;
    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32", tag = 4)
    public final Integer startTime;
    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32", tag = 5)
    public final Integer totalTime;
    public static final ProtoAdapter<AudioEntity> ADAPTER = new ProtoAdapter_AudioEntity();
    public static final Integer DEFAULT_STARTFRAME = 0;
    public static final Integer DEFAULT_ENDFRAME = 0;
    public static final Integer DEFAULT_STARTTIME = 0;
    public static final Integer DEFAULT_TOTALTIME = 0;

    public AudioEntity(String str, Integer num, Integer num2, Integer num3, Integer num4) {
        this(str, num, num2, num3, num4, ByteString.EMPTY);
    }

    public AudioEntity(String str, Integer num, Integer num2, Integer num3, Integer num4, ByteString byteString) {
        super(ADAPTER, byteString);
        this.audioKey = str;
        this.startFrame = num;
        this.endFrame = num2;
        this.startTime = num3;
        this.totalTime = num4;
    }

    @Override // com.squareup.wire.Message
    /* renamed from: newBuilder */
    public Message.Builder<AudioEntity, Builder> newBuilder2() {
        Builder builder = new Builder();
        builder.audioKey = this.audioKey;
        builder.startFrame = this.startFrame;
        builder.endFrame = this.endFrame;
        builder.startTime = this.startTime;
        builder.totalTime = this.totalTime;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AudioEntity)) {
            return false;
        }
        AudioEntity audioEntity = (AudioEntity) obj;
        return unknownFields().equals(audioEntity.unknownFields()) && Internal.equals(this.audioKey, audioEntity.audioKey) && Internal.equals(this.startFrame, audioEntity.startFrame) && Internal.equals(this.endFrame, audioEntity.endFrame) && Internal.equals(this.startTime, audioEntity.startTime) && Internal.equals(this.totalTime, audioEntity.totalTime);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int hashCode = unknownFields().hashCode() * 37;
        String str = this.audioKey;
        int i2 = 0;
        int hashCode2 = (hashCode + (str != null ? str.hashCode() : 0)) * 37;
        Integer num = this.startFrame;
        int hashCode3 = (hashCode2 + (num != null ? num.hashCode() : 0)) * 37;
        Integer num2 = this.endFrame;
        int hashCode4 = (hashCode3 + (num2 != null ? num2.hashCode() : 0)) * 37;
        Integer num3 = this.startTime;
        int hashCode5 = (hashCode4 + (num3 != null ? num3.hashCode() : 0)) * 37;
        Integer num4 = this.totalTime;
        if (num4 != null) {
            i2 = num4.hashCode();
        }
        int i3 = hashCode5 + i2;
        this.hashCode = i3;
        return i3;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        StringBuilder sb = new StringBuilder();
        if (this.audioKey != null) {
            sb.append(", audioKey=");
            sb.append(this.audioKey);
        }
        if (this.startFrame != null) {
            sb.append(", startFrame=");
            sb.append(this.startFrame);
        }
        if (this.endFrame != null) {
            sb.append(", endFrame=");
            sb.append(this.endFrame);
        }
        if (this.startTime != null) {
            sb.append(", startTime=");
            sb.append(this.startTime);
        }
        if (this.totalTime != null) {
            sb.append(", totalTime=");
            sb.append(this.totalTime);
        }
        StringBuilder replace = sb.replace(0, 2, "AudioEntity{");
        replace.append('}');
        return replace.toString();
    }

    /* loaded from: classes.dex */
    public static final class Builder extends Message.Builder<AudioEntity, Builder> {
        public String audioKey;
        public Integer endFrame;
        public Integer startFrame;
        public Integer startTime;
        public Integer totalTime;

        public Builder audioKey(String str) {
            this.audioKey = str;
            return this;
        }

        public Builder startFrame(Integer num) {
            this.startFrame = num;
            return this;
        }

        public Builder endFrame(Integer num) {
            this.endFrame = num;
            return this;
        }

        public Builder startTime(Integer num) {
            this.startTime = num;
            return this;
        }

        public Builder totalTime(Integer num) {
            this.totalTime = num;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public AudioEntity build() {
            return new AudioEntity(this.audioKey, this.startFrame, this.endFrame, this.startTime, this.totalTime, super.buildUnknownFields());
        }
    }

    /* loaded from: classes.dex */
    private static final class ProtoAdapter_AudioEntity extends ProtoAdapter<AudioEntity> {
        ProtoAdapter_AudioEntity() {
            super(FieldEncoding.LENGTH_DELIMITED, AudioEntity.class);
        }

        public int encodedSize(AudioEntity audioEntity) {
            int i = 0;
            int encodedSizeWithTag = (audioEntity.audioKey != null ? ProtoAdapter.STRING.encodedSizeWithTag(1, audioEntity.audioKey) : 0) + (audioEntity.startFrame != null ? ProtoAdapter.INT32.encodedSizeWithTag(2, audioEntity.startFrame) : 0) + (audioEntity.endFrame != null ? ProtoAdapter.INT32.encodedSizeWithTag(3, audioEntity.endFrame) : 0) + (audioEntity.startTime != null ? ProtoAdapter.INT32.encodedSizeWithTag(4, audioEntity.startTime) : 0);
            if (audioEntity.totalTime != null) {
                i = ProtoAdapter.INT32.encodedSizeWithTag(5, audioEntity.totalTime);
            }
            return encodedSizeWithTag + i + audioEntity.unknownFields().size();
        }

        public void encode(ProtoWriter protoWriter, AudioEntity audioEntity) throws IOException {
            if (audioEntity.audioKey != null) {
                ProtoAdapter.STRING.encodeWithTag(protoWriter, 1, audioEntity.audioKey);
            }
            if (audioEntity.startFrame != null) {
                ProtoAdapter.INT32.encodeWithTag(protoWriter, 2, audioEntity.startFrame);
            }
            if (audioEntity.endFrame != null) {
                ProtoAdapter.INT32.encodeWithTag(protoWriter, 3, audioEntity.endFrame);
            }
            if (audioEntity.startTime != null) {
                ProtoAdapter.INT32.encodeWithTag(protoWriter, 4, audioEntity.startTime);
            }
            if (audioEntity.totalTime != null) {
                ProtoAdapter.INT32.encodeWithTag(protoWriter, 5, audioEntity.totalTime);
            }
            protoWriter.writeBytes(audioEntity.unknownFields());
        }

        @Override // com.squareup.wire.ProtoAdapter
        public AudioEntity decode(ProtoReader protoReader) throws IOException {
            Builder builder = new Builder();
            long beginMessage = protoReader.beginMessage();
            while (true) {
                int nextTag = protoReader.nextTag();
                if (nextTag == -1) {
                    protoReader.endMessage(beginMessage);
                    return builder.build();
                } else if (nextTag == 1) {
                    builder.audioKey(ProtoAdapter.STRING.decode(protoReader));
                } else if (nextTag == 2) {
                    builder.startFrame(ProtoAdapter.INT32.decode(protoReader));
                } else if (nextTag == 3) {
                    builder.endFrame(ProtoAdapter.INT32.decode(protoReader));
                } else if (nextTag == 4) {
                    builder.startTime(ProtoAdapter.INT32.decode(protoReader));
                } else if (nextTag != 5) {
                    FieldEncoding peekFieldEncoding = protoReader.peekFieldEncoding();
                    builder.addUnknownField(nextTag, peekFieldEncoding, peekFieldEncoding.rawProtoAdapter().decode(protoReader));
                } else {
                    builder.totalTime(ProtoAdapter.INT32.decode(protoReader));
                }
            }
        }

        public AudioEntity redact(AudioEntity audioEntity) {
            Message.Builder<AudioEntity, Builder> newBuilder = audioEntity.newBuilder2();
            newBuilder.clearUnknownFields();
            return newBuilder.build();
        }
    }
}
