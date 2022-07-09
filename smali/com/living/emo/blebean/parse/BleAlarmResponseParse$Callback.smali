.class public interface abstract Lcom/living/emo/blebean/parse/BleAlarmResponseParse$Callback;
.super Ljava/lang/Object;
.source "BleAlarmResponseParse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/living/emo/blebean/parse/BleAlarmResponseParse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract response(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/living/emo/blebean/response/AlarmResponse$DataBean$AlarmBean$StateBean;",
            ">;)V"
        }
    .end annotation
.end method
