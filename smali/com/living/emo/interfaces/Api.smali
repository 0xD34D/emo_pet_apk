.class public interface abstract Lcom/living/emo/interfaces/Api;
.super Ljava/lang/Object;
.source "Api.java"


# virtual methods
.method public abstract getVersionInfo()Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Call<",
            "Lcom/living/emo/bean/domain/Version;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "ota/version"
    .end annotation
.end method
