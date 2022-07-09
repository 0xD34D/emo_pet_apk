.class public Lcom/living/emo/blebean/config/PreferenceConfig$DataBean$PreferenceBean;
.super Ljava/lang/Object;
.source "PreferenceConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/living/emo/blebean/config/PreferenceConfig$DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PreferenceBean"
.end annotation


# instance fields
.field private auto_update:I

.field private length:I

.field private schedule_sound:I

.field private temperature:I

.field private volume:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static objectFromData(Ljava/lang/String;)Lcom/living/emo/blebean/config/PreferenceConfig$DataBean$PreferenceBean;
    .locals 2

    .line 81
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/living/emo/blebean/config/PreferenceConfig$DataBean$PreferenceBean;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/living/emo/blebean/config/PreferenceConfig$DataBean$PreferenceBean;

    return-object p0
.end method


# virtual methods
.method public getAuto_update()I
    .locals 1

    .line 109
    iget v0, p0, Lcom/living/emo/blebean/config/PreferenceConfig$DataBean$PreferenceBean;->auto_update:I

    return v0
.end method

.method public getLength()I
    .locals 1

    .line 101
    iget v0, p0, Lcom/living/emo/blebean/config/PreferenceConfig$DataBean$PreferenceBean;->length:I

    return v0
.end method

.method public getSchedule_sound()I
    .locals 1

    .line 117
    iget v0, p0, Lcom/living/emo/blebean/config/PreferenceConfig$DataBean$PreferenceBean;->schedule_sound:I

    return v0
.end method

.method public getTemperature()I
    .locals 1

    .line 93
    iget v0, p0, Lcom/living/emo/blebean/config/PreferenceConfig$DataBean$PreferenceBean;->temperature:I

    return v0
.end method

.method public getVolume()I
    .locals 1

    .line 85
    iget v0, p0, Lcom/living/emo/blebean/config/PreferenceConfig$DataBean$PreferenceBean;->volume:I

    return v0
.end method

.method public setAuto_update(I)V
    .locals 0

    .line 113
    iput p1, p0, Lcom/living/emo/blebean/config/PreferenceConfig$DataBean$PreferenceBean;->auto_update:I

    return-void
.end method

.method public setLength(I)V
    .locals 0

    .line 105
    iput p1, p0, Lcom/living/emo/blebean/config/PreferenceConfig$DataBean$PreferenceBean;->length:I

    return-void
.end method

.method public setSchedule_sound(I)V
    .locals 0

    .line 121
    iput p1, p0, Lcom/living/emo/blebean/config/PreferenceConfig$DataBean$PreferenceBean;->schedule_sound:I

    return-void
.end method

.method public setTemperature(I)V
    .locals 0

    .line 97
    iput p1, p0, Lcom/living/emo/blebean/config/PreferenceConfig$DataBean$PreferenceBean;->temperature:I

    return-void
.end method

.method public setVolume(I)V
    .locals 0

    .line 89
    iput p1, p0, Lcom/living/emo/blebean/config/PreferenceConfig$DataBean$PreferenceBean;->volume:I

    return-void
.end method
