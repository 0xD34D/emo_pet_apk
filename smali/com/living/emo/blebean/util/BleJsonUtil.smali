.class public Lcom/living/emo/blebean/util/BleJsonUtil;
.super Ljava/lang/Object;
.source "BleJsonUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Alarm(Ljava/lang/String;Lcom/living/emo/bean/AlarmBean;)Ljava/lang/String;
    .locals 2

    .line 176
    new-instance v0, Lcom/living/emo/blebean/config/AlarmConfig$DataBean;

    invoke-direct {v0}, Lcom/living/emo/blebean/config/AlarmConfig$DataBean;-><init>()V

    .line 177
    invoke-virtual {p1}, Lcom/living/emo/bean/AlarmBean;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/living/emo/blebean/config/AlarmConfig$DataBean;->setIndex(I)V

    .line 178
    invoke-virtual {p1}, Lcom/living/emo/bean/AlarmBean;->getOn()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/living/emo/blebean/config/AlarmConfig$DataBean;->setOn(I)V

    .line 179
    invoke-virtual {p1}, Lcom/living/emo/bean/AlarmBean;->getTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/living/emo/blebean/config/AlarmConfig$DataBean;->setTime(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p1}, Lcom/living/emo/bean/AlarmBean;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/living/emo/blebean/config/AlarmConfig$DataBean;->setTag(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p1}, Lcom/living/emo/bean/AlarmBean;->getRecurrence()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/living/emo/blebean/config/AlarmConfig$DataBean;->setRecurrence(Ljava/lang/String;)V

    .line 182
    invoke-virtual {v0, p0}, Lcom/living/emo/blebean/config/AlarmConfig$DataBean;->setOperation(Ljava/lang/String;)V

    .line 183
    new-instance p0, Lcom/living/emo/blebean/config/AlarmConfig;

    invoke-direct {p0}, Lcom/living/emo/blebean/config/AlarmConfig;-><init>()V

    const-string p1, "alarm_set"

    .line 184
    invoke-virtual {p0, p1}, Lcom/living/emo/blebean/config/AlarmConfig;->setType(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p0, v0}, Lcom/living/emo/blebean/config/AlarmConfig;->setData(Lcom/living/emo/blebean/config/AlarmConfig$DataBean;)V

    .line 186
    invoke-static {p0}, Lcom/living/emo/blebean/util/BleJsonUtil;->objectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static EditInfoName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 338
    new-instance v0, Lcom/living/emo/bean/EditInfoNameBean;

    invoke-direct {v0}, Lcom/living/emo/bean/EditInfoNameBean;-><init>()V

    const-string v1, "edit_info_req"

    .line 339
    invoke-virtual {v0, v1}, Lcom/living/emo/bean/EditInfoNameBean;->setType(Ljava/lang/String;)V

    .line 340
    new-instance v1, Lcom/living/emo/bean/EditInfoNameBean$DataBean;

    invoke-direct {v1}, Lcom/living/emo/bean/EditInfoNameBean$DataBean;-><init>()V

    const-string v2, "in"

    .line 341
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "out"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "update"

    .line 344
    invoke-virtual {v1, v2}, Lcom/living/emo/bean/EditInfoNameBean$DataBean;->setOp(Ljava/lang/String;)V

    .line 345
    invoke-virtual {v1, p0}, Lcom/living/emo/bean/EditInfoNameBean$DataBean;->setLast_name(Ljava/lang/String;)V

    goto :goto_1

    .line 342
    :cond_1
    :goto_0
    invoke-virtual {v1, p0}, Lcom/living/emo/bean/EditInfoNameBean$DataBean;->setOp(Ljava/lang/String;)V

    .line 347
    :goto_1
    invoke-virtual {v0, v1}, Lcom/living/emo/bean/EditInfoNameBean;->setData(Lcom/living/emo/bean/EditInfoNameBean$DataBean;)V

    .line 348
    invoke-static {v0}, Lcom/living/emo/blebean/util/BleJsonUtil;->objectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static Photo(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 208
    new-instance v0, Lcom/living/emo/blebean/config/PhotoConfig;

    invoke-direct {v0}, Lcom/living/emo/blebean/config/PhotoConfig;-><init>()V

    .line 209
    new-instance v1, Lcom/living/emo/blebean/config/PhotoConfig$DataBean;

    invoke-direct {v1}, Lcom/living/emo/blebean/config/PhotoConfig$DataBean;-><init>()V

    .line 210
    invoke-virtual {v1, p0}, Lcom/living/emo/blebean/config/PhotoConfig$DataBean;->setOp(Ljava/lang/String;)V

    .line 211
    invoke-virtual {v0, v1}, Lcom/living/emo/blebean/config/PhotoConfig;->setData(Lcom/living/emo/blebean/config/PhotoConfig$DataBean;)V

    const-string p0, "photo_req"

    .line 212
    invoke-virtual {v0, p0}, Lcom/living/emo/blebean/config/PhotoConfig;->setType(Ljava/lang/String;)V

    .line 213
    invoke-static {v0}, Lcom/living/emo/blebean/util/BleJsonUtil;->objectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static Photo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 223
    new-instance v0, Lcom/living/emo/blebean/config/PhotoConfig;

    invoke-direct {v0}, Lcom/living/emo/blebean/config/PhotoConfig;-><init>()V

    .line 224
    new-instance v1, Lcom/living/emo/blebean/config/PhotoConfig$DataBean;

    invoke-direct {v1}, Lcom/living/emo/blebean/config/PhotoConfig$DataBean;-><init>()V

    .line 225
    invoke-virtual {v1, p0}, Lcom/living/emo/blebean/config/PhotoConfig$DataBean;->setOp(Ljava/lang/String;)V

    .line 226
    invoke-virtual {v1, p1}, Lcom/living/emo/blebean/config/PhotoConfig$DataBean;->setPhoto_name(Ljava/lang/String;)V

    .line 227
    invoke-virtual {v0, v1}, Lcom/living/emo/blebean/config/PhotoConfig;->setData(Lcom/living/emo/blebean/config/PhotoConfig$DataBean;)V

    const-string p0, "photo_req"

    .line 228
    invoke-virtual {v0, p0}, Lcom/living/emo/blebean/config/PhotoConfig;->setType(Ljava/lang/String;)V

    .line 229
    invoke-static {v0}, Lcom/living/emo/blebean/util/BleJsonUtil;->objectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static Photo(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .line 239
    new-instance v0, Lcom/living/emo/blebean/config/PhotoConfig;

    invoke-direct {v0}, Lcom/living/emo/blebean/config/PhotoConfig;-><init>()V

    .line 240
    new-instance v1, Lcom/living/emo/blebean/config/PhotoConfig$DataBean;

    invoke-direct {v1}, Lcom/living/emo/blebean/config/PhotoConfig$DataBean;-><init>()V

    .line 241
    invoke-virtual {v1, p0}, Lcom/living/emo/blebean/config/PhotoConfig$DataBean;->setOp(Ljava/lang/String;)V

    .line 242
    new-instance p0, Lcom/living/emo/blebean/config/PhotoConfig$DataBean$ServerBean;

    invoke-direct {p0}, Lcom/living/emo/blebean/config/PhotoConfig$DataBean$ServerBean;-><init>()V

    .line 243
    invoke-virtual {p0, p1}, Lcom/living/emo/blebean/config/PhotoConfig$DataBean$ServerBean;->setIp(Ljava/lang/String;)V

    .line 244
    invoke-virtual {p0, p2}, Lcom/living/emo/blebean/config/PhotoConfig$DataBean$ServerBean;->setPort(I)V

    .line 245
    invoke-virtual {v1, p0}, Lcom/living/emo/blebean/config/PhotoConfig$DataBean;->setServer(Lcom/living/emo/blebean/config/PhotoConfig$DataBean$ServerBean;)V

    .line 246
    invoke-virtual {v0, v1}, Lcom/living/emo/blebean/config/PhotoConfig;->setData(Lcom/living/emo/blebean/config/PhotoConfig$DataBean;)V

    const-string p0, "photo_req"

    .line 247
    invoke-virtual {v0, p0}, Lcom/living/emo/blebean/config/PhotoConfig;->setType(Ljava/lang/String;)V

    .line 248
    invoke-static {v0}, Lcom/living/emo/blebean/util/BleJsonUtil;->objectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static PowerOff()Ljava/lang/String;
    .locals 2

    .line 195
    new-instance v0, Lcom/living/emo/blebean/config/PowerOffConfig$DataBean;

    invoke-direct {v0}, Lcom/living/emo/blebean/config/PowerOffConfig$DataBean;-><init>()V

    .line 196
    new-instance v0, Lcom/living/emo/blebean/config/PowerOffConfig;

    invoke-direct {v0}, Lcom/living/emo/blebean/config/PowerOffConfig;-><init>()V

    const-string v1, "off_req"

    .line 197
    invoke-virtual {v0, v1}, Lcom/living/emo/blebean/config/PowerOffConfig;->setType(Ljava/lang/String;)V

    .line 198
    invoke-static {v0}, Lcom/living/emo/blebean/util/BleJsonUtil;->objectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static Recognition(ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 302
    new-instance v0, Lcom/living/emo/blebean/config/RecognitionConfig;

    invoke-direct {v0}, Lcom/living/emo/blebean/config/RecognitionConfig;-><init>()V

    const-string v1, "face_req"

    .line 303
    invoke-virtual {v0, v1}, Lcom/living/emo/blebean/config/RecognitionConfig;->setType(Ljava/lang/String;)V

    .line 304
    new-instance v1, Lcom/living/emo/blebean/config/RecognitionConfig$DataBean;

    invoke-direct {v1}, Lcom/living/emo/blebean/config/RecognitionConfig$DataBean;-><init>()V

    const/4 v2, 0x1

    if-ne p0, v2, :cond_0

    const-string p0, "rescan"

    .line 306
    invoke-virtual {v1, p0}, Lcom/living/emo/blebean/config/RecognitionConfig$DataBean;->setOp(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "del"

    .line 308
    invoke-virtual {v1, p0}, Lcom/living/emo/blebean/config/RecognitionConfig$DataBean;->setOp(Ljava/lang/String;)V

    .line 310
    :goto_0
    invoke-virtual {v1, p1}, Lcom/living/emo/blebean/config/RecognitionConfig$DataBean;->setId(Ljava/lang/String;)V

    .line 311
    invoke-virtual {v0, v1}, Lcom/living/emo/blebean/config/RecognitionConfig;->setData(Lcom/living/emo/blebean/config/RecognitionConfig$DataBean;)V

    .line 312
    invoke-static {v0}, Lcom/living/emo/blebean/util/BleJsonUtil;->objectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static Recognition(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 322
    new-instance v0, Lcom/living/emo/blebean/config/RecognitionConfig;

    invoke-direct {v0}, Lcom/living/emo/blebean/config/RecognitionConfig;-><init>()V

    const-string v1, "face_req"

    .line 323
    invoke-virtual {v0, v1}, Lcom/living/emo/blebean/config/RecognitionConfig;->setType(Ljava/lang/String;)V

    .line 324
    new-instance v1, Lcom/living/emo/blebean/config/RecognitionConfig$DataBean;

    invoke-direct {v1}, Lcom/living/emo/blebean/config/RecognitionConfig$DataBean;-><init>()V

    const-string v2, "add"

    .line 325
    invoke-virtual {v1, v2}, Lcom/living/emo/blebean/config/RecognitionConfig$DataBean;->setOp(Ljava/lang/String;)V

    .line 326
    invoke-virtual {v1, p0}, Lcom/living/emo/blebean/config/RecognitionConfig$DataBean;->setName(Ljava/lang/String;)V

    .line 327
    invoke-virtual {v0, v1}, Lcom/living/emo/blebean/config/RecognitionConfig;->setData(Lcom/living/emo/blebean/config/RecognitionConfig$DataBean;)V

    .line 328
    invoke-static {v0}, Lcom/living/emo/blebean/util/BleJsonUtil;->objectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static Recognition(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 360
    new-instance v0, Lcom/living/emo/blebean/config/RecognitionConfig;

    invoke-direct {v0}, Lcom/living/emo/blebean/config/RecognitionConfig;-><init>()V

    const-string v1, "face_req"

    .line 361
    invoke-virtual {v0, v1}, Lcom/living/emo/blebean/config/RecognitionConfig;->setType(Ljava/lang/String;)V

    .line 362
    new-instance v1, Lcom/living/emo/blebean/config/RecognitionConfig$DataBean;

    invoke-direct {v1}, Lcom/living/emo/blebean/config/RecognitionConfig$DataBean;-><init>()V

    const-string v2, "rename"

    .line 363
    invoke-virtual {v1, v2}, Lcom/living/emo/blebean/config/RecognitionConfig$DataBean;->setOp(Ljava/lang/String;)V

    .line 364
    invoke-virtual {v1, p1}, Lcom/living/emo/blebean/config/RecognitionConfig$DataBean;->setName(Ljava/lang/String;)V

    .line 365
    invoke-virtual {v1, p0}, Lcom/living/emo/blebean/config/RecognitionConfig$DataBean;->setId(Ljava/lang/String;)V

    .line 366
    invoke-virtual {v0, v1}, Lcom/living/emo/blebean/config/RecognitionConfig;->setData(Lcom/living/emo/blebean/config/RecognitionConfig$DataBean;)V

    .line 367
    invoke-static {v0}, Lcom/living/emo/blebean/util/BleJsonUtil;->objectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static RecognitionIn()Ljava/lang/String;
    .locals 3

    .line 257
    new-instance v0, Lcom/living/emo/blebean/config/RecognitionConfig;

    invoke-direct {v0}, Lcom/living/emo/blebean/config/RecognitionConfig;-><init>()V

    const-string v1, "face_req"

    .line 258
    invoke-virtual {v0, v1}, Lcom/living/emo/blebean/config/RecognitionConfig;->setType(Ljava/lang/String;)V

    .line 259
    new-instance v1, Lcom/living/emo/blebean/config/RecognitionConfig$DataBean;

    invoke-direct {v1}, Lcom/living/emo/blebean/config/RecognitionConfig$DataBean;-><init>()V

    const-string v2, "in"

    .line 260
    invoke-virtual {v1, v2}, Lcom/living/emo/blebean/config/RecognitionConfig$DataBean;->setOp(Ljava/lang/String;)V

    .line 261
    invoke-virtual {v0, v1}, Lcom/living/emo/blebean/config/RecognitionConfig;->setData(Lcom/living/emo/blebean/config/RecognitionConfig$DataBean;)V

    .line 262
    invoke-static {v0}, Lcom/living/emo/blebean/util/BleJsonUtil;->objectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static RecognitionOut()Ljava/lang/String;
    .locals 3

    .line 285
    new-instance v0, Lcom/living/emo/blebean/config/RecognitionConfig;

    invoke-direct {v0}, Lcom/living/emo/blebean/config/RecognitionConfig;-><init>()V

    const-string v1, "face_req"

    .line 286
    invoke-virtual {v0, v1}, Lcom/living/emo/blebean/config/RecognitionConfig;->setType(Ljava/lang/String;)V

    .line 287
    new-instance v1, Lcom/living/emo/blebean/config/RecognitionConfig$DataBean;

    invoke-direct {v1}, Lcom/living/emo/blebean/config/RecognitionConfig$DataBean;-><init>()V

    const-string v2, "out"

    .line 288
    invoke-virtual {v1, v2}, Lcom/living/emo/blebean/config/RecognitionConfig$DataBean;->setOp(Ljava/lang/String;)V

    .line 289
    invoke-virtual {v0, v1}, Lcom/living/emo/blebean/config/RecognitionConfig;->setData(Lcom/living/emo/blebean/config/RecognitionConfig$DataBean;)V

    .line 290
    invoke-static {v0}, Lcom/living/emo/blebean/util/BleJsonUtil;->objectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static RecognitionSync()Ljava/lang/String;
    .locals 3

    .line 271
    new-instance v0, Lcom/living/emo/blebean/config/RecognitionConfig;

    invoke-direct {v0}, Lcom/living/emo/blebean/config/RecognitionConfig;-><init>()V

    const-string v1, "face_req"

    .line 272
    invoke-virtual {v0, v1}, Lcom/living/emo/blebean/config/RecognitionConfig;->setType(Ljava/lang/String;)V

    .line 273
    new-instance v1, Lcom/living/emo/blebean/config/RecognitionConfig$DataBean;

    invoke-direct {v1}, Lcom/living/emo/blebean/config/RecognitionConfig$DataBean;-><init>()V

    const-string v2, "syn"

    .line 274
    invoke-virtual {v1, v2}, Lcom/living/emo/blebean/config/RecognitionConfig$DataBean;->setOp(Ljava/lang/String;)V

    .line 275
    invoke-virtual {v0, v1}, Lcom/living/emo/blebean/config/RecognitionConfig;->setData(Lcom/living/emo/blebean/config/RecognitionConfig$DataBean;)V

    .line 276
    invoke-static {v0}, Lcom/living/emo/blebean/util/BleJsonUtil;->objectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static Setting(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 457
    new-instance v0, Lcom/living/emo/blebean/config/SettingConfig;

    invoke-direct {v0}, Lcom/living/emo/blebean/config/SettingConfig;-><init>()V

    const-string v1, "setting_req"

    .line 458
    invoke-virtual {v0, v1}, Lcom/living/emo/blebean/config/SettingConfig;->setType(Ljava/lang/String;)V

    .line 459
    new-instance v1, Lcom/living/emo/blebean/config/SettingConfig$DataBean;

    invoke-direct {v1}, Lcom/living/emo/blebean/config/SettingConfig$DataBean;-><init>()V

    .line 460
    invoke-virtual {v1, p0}, Lcom/living/emo/blebean/config/SettingConfig$DataBean;->setOp(Ljava/lang/String;)V

    .line 461
    invoke-virtual {v0, v1}, Lcom/living/emo/blebean/config/SettingConfig;->setData(Lcom/living/emo/blebean/config/SettingConfig$DataBean;)V

    .line 462
    invoke-static {v0}, Lcom/living/emo/blebean/util/BleJsonUtil;->objectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static animRequest(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 440
    new-instance v0, Lcom/living/emo/blebean/config/AnimConfig;

    invoke-direct {v0}, Lcom/living/emo/blebean/config/AnimConfig;-><init>()V

    .line 441
    new-instance v1, Lcom/living/emo/blebean/config/AnimConfig$DataBean;

    invoke-direct {v1}, Lcom/living/emo/blebean/config/AnimConfig$DataBean;-><init>()V

    const-string v2, "anim_req"

    .line 442
    invoke-virtual {v0, v2}, Lcom/living/emo/blebean/config/AnimConfig;->setType(Ljava/lang/String;)V

    .line 443
    invoke-virtual {v1, p0}, Lcom/living/emo/blebean/config/AnimConfig$DataBean;->setOp(Ljava/lang/String;)V

    .line 444
    invoke-virtual {v0, v1}, Lcom/living/emo/blebean/config/AnimConfig;->setData(Lcom/living/emo/blebean/config/AnimConfig$DataBean;)V

    .line 445
    invoke-static {v0}, Lcom/living/emo/blebean/util/BleJsonUtil;->objectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static animRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 467
    new-instance v0, Lcom/living/emo/blebean/config/AnimConfig;

    invoke-direct {v0}, Lcom/living/emo/blebean/config/AnimConfig;-><init>()V

    .line 468
    new-instance v1, Lcom/living/emo/blebean/config/AnimConfig$DataBean;

    invoke-direct {v1}, Lcom/living/emo/blebean/config/AnimConfig$DataBean;-><init>()V

    const-string v2, "anim_req"

    .line 469
    invoke-virtual {v0, v2}, Lcom/living/emo/blebean/config/AnimConfig;->setType(Ljava/lang/String;)V

    .line 470
    invoke-virtual {v1, p0}, Lcom/living/emo/blebean/config/AnimConfig$DataBean;->setOp(Ljava/lang/String;)V

    .line 471
    invoke-virtual {v1, p1}, Lcom/living/emo/blebean/config/AnimConfig$DataBean;->setName(Ljava/lang/String;)V

    .line 472
    invoke-virtual {v0, v1}, Lcom/living/emo/blebean/config/AnimConfig;->setData(Lcom/living/emo/blebean/config/AnimConfig$DataBean;)V

    .line 473
    invoke-static {v0}, Lcom/living/emo/blebean/util/BleJsonUtil;->objectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static city(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/location/Address;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 39
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/Address;

    .line 41
    invoke-virtual {p0}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v1

    .line 42
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAddress: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/location/Address;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TAG"

    invoke-static {v3, v2}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    new-instance v2, Lcom/living/emo/blebean/config/CityConfig$DataBean$CoordBean;

    invoke-direct {v2}, Lcom/living/emo/blebean/config/CityConfig$DataBean$CoordBean;-><init>()V

    .line 45
    invoke-virtual {p0}, Landroid/location/Address;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/living/emo/blebean/config/CityConfig$DataBean$CoordBean;->setLat(D)V

    .line 46
    invoke-virtual {p0}, Landroid/location/Address;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/living/emo/blebean/config/CityConfig$DataBean$CoordBean;->setLon(D)V

    .line 47
    new-instance v3, Lcom/living/emo/blebean/config/CityConfig$DataBean;

    invoke-direct {v3}, Lcom/living/emo/blebean/config/CityConfig$DataBean;-><init>()V

    .line 48
    invoke-virtual {v3, v2}, Lcom/living/emo/blebean/config/CityConfig$DataBean;->setCoord(Lcom/living/emo/blebean/config/CityConfig$DataBean$CoordBean;)V

    .line 49
    invoke-virtual {v3, v0}, Lcom/living/emo/blebean/config/CityConfig$DataBean;->setId(I)V

    .line 50
    invoke-virtual {v3, v1}, Lcom/living/emo/blebean/config/CityConfig$DataBean;->setName(Ljava/lang/String;)V

    const-string v0, ""

    .line 51
    invoke-virtual {v3, v0}, Lcom/living/emo/blebean/config/CityConfig$DataBean;->setState(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/living/emo/blebean/config/CityConfig$DataBean;->setCountry(Ljava/lang/String;)V

    .line 53
    new-instance p0, Lcom/living/emo/blebean/config/CityConfig;

    invoke-direct {p0}, Lcom/living/emo/blebean/config/CityConfig;-><init>()V

    const-string v0, "city_set"

    .line 54
    invoke-virtual {p0, v0}, Lcom/living/emo/blebean/config/CityConfig;->setType(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0, v3}, Lcom/living/emo/blebean/config/CityConfig;->setData(Lcom/living/emo/blebean/config/CityConfig$DataBean;)V

    .line 56
    invoke-static {p0}, Lcom/living/emo/blebean/util/BleJsonUtil;->objectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static customize(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 377
    new-instance v0, Lcom/living/emo/blebean/config/CustomizeConfig;

    invoke-direct {v0}, Lcom/living/emo/blebean/config/CustomizeConfig;-><init>()V

    .line 378
    new-instance v1, Lcom/living/emo/blebean/config/CustomizeConfig$DataBean;

    invoke-direct {v1}, Lcom/living/emo/blebean/config/CustomizeConfig$DataBean;-><init>()V

    .line 379
    invoke-virtual {v1, p0}, Lcom/living/emo/blebean/config/CustomizeConfig$DataBean;->setOp(Ljava/lang/String;)V

    .line 380
    invoke-virtual {v0, v1}, Lcom/living/emo/blebean/config/CustomizeConfig;->setData(Lcom/living/emo/blebean/config/CustomizeConfig$DataBean;)V

    const-string p0, "customize_req"

    .line 381
    invoke-virtual {v0, p0}, Lcom/living/emo/blebean/config/CustomizeConfig;->setType(Ljava/lang/String;)V

    .line 382
    invoke-static {v0}, Lcom/living/emo/blebean/util/BleJsonUtil;->objectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static customize(Ljava/util/List;ILjava/lang/String;ILjava/lang/String;I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 397
    new-instance p0, Lcom/living/emo/blebean/config/CustomizeConfig;

    invoke-direct {p0}, Lcom/living/emo/blebean/config/CustomizeConfig;-><init>()V

    .line 398
    new-instance v0, Lcom/living/emo/blebean/config/CustomizeConfig$DataBean;

    invoke-direct {v0}, Lcom/living/emo/blebean/config/CustomizeConfig$DataBean;-><init>()V

    const-string v1, "set_eye"

    .line 399
    invoke-virtual {v0, v1}, Lcom/living/emo/blebean/config/CustomizeConfig$DataBean;->setOp(Ljava/lang/String;)V

    .line 402
    new-instance v1, Lcom/living/emo/blebean/config/CustomizeConfig$DataBean$ServerBean;

    invoke-direct {v1}, Lcom/living/emo/blebean/config/CustomizeConfig$DataBean$ServerBean;-><init>()V

    .line 403
    invoke-virtual {v1, p2}, Lcom/living/emo/blebean/config/CustomizeConfig$DataBean$ServerBean;->setIp(Ljava/lang/String;)V

    .line 404
    invoke-virtual {v1, p3}, Lcom/living/emo/blebean/config/CustomizeConfig$DataBean$ServerBean;->setPort(I)V

    .line 405
    invoke-virtual {v0, v1}, Lcom/living/emo/blebean/config/CustomizeConfig$DataBean;->setServer(Lcom/living/emo/blebean/config/CustomizeConfig$DataBean$ServerBean;)V

    .line 406
    new-instance p2, Lcom/living/emo/blebean/config/CustomizeConfig$DataBean$ImageBean;

    invoke-direct {p2}, Lcom/living/emo/blebean/config/CustomizeConfig$DataBean$ImageBean;-><init>()V

    .line 407
    invoke-virtual {p2, p4}, Lcom/living/emo/blebean/config/CustomizeConfig$DataBean$ImageBean;->setName(Ljava/lang/String;)V

    .line 408
    invoke-virtual {p2, p5}, Lcom/living/emo/blebean/config/CustomizeConfig$DataBean$ImageBean;->setLength(I)V

    .line 409
    invoke-virtual {p2, p1}, Lcom/living/emo/blebean/config/CustomizeConfig$DataBean$ImageBean;->setTran(I)V

    .line 410
    invoke-virtual {v0, p2}, Lcom/living/emo/blebean/config/CustomizeConfig$DataBean;->setImage(Lcom/living/emo/blebean/config/CustomizeConfig$DataBean$ImageBean;)V

    .line 411
    invoke-virtual {p0, v0}, Lcom/living/emo/blebean/config/CustomizeConfig;->setData(Lcom/living/emo/blebean/config/CustomizeConfig$DataBean;)V

    const-string p1, "customize_req"

    .line 412
    invoke-virtual {p0, p1}, Lcom/living/emo/blebean/config/CustomizeConfig;->setType(Ljava/lang/String;)V

    .line 413
    invoke-static {p0}, Lcom/living/emo/blebean/util/BleJsonUtil;->objectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static lightOnOff(II)Ljava/lang/String;
    .locals 1

    .line 158
    new-instance v0, Lcom/living/emo/blebean/config/LightOnOffConfig$DataBean;

    invoke-direct {v0}, Lcom/living/emo/blebean/config/LightOnOffConfig$DataBean;-><init>()V

    .line 159
    invoke-virtual {v0, p0}, Lcom/living/emo/blebean/config/LightOnOffConfig$DataBean;->setId(I)V

    .line 160
    invoke-virtual {v0, p1}, Lcom/living/emo/blebean/config/LightOnOffConfig$DataBean;->setOn(I)V

    const-string p0, "onoff"

    .line 161
    invoke-virtual {v0, p0}, Lcom/living/emo/blebean/config/LightOnOffConfig$DataBean;->setOperation(Ljava/lang/String;)V

    .line 162
    new-instance p0, Lcom/living/emo/blebean/config/LightOnOffConfig;

    invoke-direct {p0}, Lcom/living/emo/blebean/config/LightOnOffConfig;-><init>()V

    const-string p1, "light_set"

    .line 163
    invoke-virtual {p0, p1}, Lcom/living/emo/blebean/config/LightOnOffConfig;->setType(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0, v0}, Lcom/living/emo/blebean/config/LightOnOffConfig;->setData(Lcom/living/emo/blebean/config/LightOnOffConfig$DataBean;)V

    .line 165
    invoke-static {p0}, Lcom/living/emo/blebean/util/BleJsonUtil;->objectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static lightRename(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 131
    new-instance v0, Lcom/living/emo/blebean/config/LightRenameConfig$DataBean;

    invoke-direct {v0}, Lcom/living/emo/blebean/config/LightRenameConfig$DataBean;-><init>()V

    .line 132
    invoke-virtual {v0, p0}, Lcom/living/emo/blebean/config/LightRenameConfig$DataBean;->setId(I)V

    .line 133
    invoke-virtual {v0, p1}, Lcom/living/emo/blebean/config/LightRenameConfig$DataBean;->setName(Ljava/lang/String;)V

    const-string p0, "rename"

    .line 134
    invoke-virtual {v0, p0}, Lcom/living/emo/blebean/config/LightRenameConfig$DataBean;->setOperation(Ljava/lang/String;)V

    .line 135
    new-instance p0, Lcom/living/emo/blebean/config/LightRenameConfig;

    invoke-direct {p0}, Lcom/living/emo/blebean/config/LightRenameConfig;-><init>()V

    const-string p1, "light_set"

    .line 136
    invoke-virtual {p0, p1}, Lcom/living/emo/blebean/config/LightRenameConfig;->setType(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0, v0}, Lcom/living/emo/blebean/config/LightRenameConfig;->setData(Lcom/living/emo/blebean/config/LightRenameConfig$DataBean;)V

    .line 138
    invoke-static {p0}, Lcom/living/emo/blebean/util/BleJsonUtil;->objectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static lightUnbindAll()Ljava/lang/String;
    .locals 3

    .line 142
    new-instance v0, Lcom/living/emo/blebean/config/LightRenameConfig$DataBean;

    invoke-direct {v0}, Lcom/living/emo/blebean/config/LightRenameConfig$DataBean;-><init>()V

    const-string v1, "unbind"

    .line 143
    invoke-virtual {v0, v1}, Lcom/living/emo/blebean/config/LightRenameConfig$DataBean;->setOperation(Ljava/lang/String;)V

    .line 144
    new-instance v1, Lcom/living/emo/blebean/config/LightRenameConfig;

    invoke-direct {v1}, Lcom/living/emo/blebean/config/LightRenameConfig;-><init>()V

    const-string v2, "light_set"

    .line 145
    invoke-virtual {v1, v2}, Lcom/living/emo/blebean/config/LightRenameConfig;->setType(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v1, v0}, Lcom/living/emo/blebean/config/LightRenameConfig;->setData(Lcom/living/emo/blebean/config/LightRenameConfig$DataBean;)V

    .line 147
    invoke-static {v1}, Lcom/living/emo/blebean/util/BleJsonUtil;->objectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static objectToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "app->emo ble data:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "request json"

    invoke-static {v1, v0}, Lcom/living/emo/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static ota(I)Ljava/lang/String;
    .locals 2

    .line 117
    new-instance v0, Lcom/living/emo/blebean/config/VersionConfig;

    invoke-direct {v0}, Lcom/living/emo/blebean/config/VersionConfig;-><init>()V

    const-string v1, "ota"

    .line 118
    invoke-virtual {v0, v1}, Lcom/living/emo/blebean/config/VersionConfig;->setType(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v0, p0}, Lcom/living/emo/blebean/config/VersionConfig;->setNum(I)V

    .line 120
    invoke-static {v0}, Lcom/living/emo/blebean/util/BleJsonUtil;->objectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static setCityName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 60
    new-instance v0, Lcom/living/emo/blebean/config/CityConfig$DataBean$CoordBean;

    invoke-direct {v0}, Lcom/living/emo/blebean/config/CityConfig$DataBean$CoordBean;-><init>()V

    const-wide/16 v1, 0x0

    .line 61
    invoke-virtual {v0, v1, v2}, Lcom/living/emo/blebean/config/CityConfig$DataBean$CoordBean;->setLat(D)V

    .line 62
    invoke-virtual {v0, v1, v2}, Lcom/living/emo/blebean/config/CityConfig$DataBean$CoordBean;->setLon(D)V

    .line 63
    new-instance v1, Lcom/living/emo/blebean/config/CityConfig$DataBean;

    invoke-direct {v1}, Lcom/living/emo/blebean/config/CityConfig$DataBean;-><init>()V

    .line 64
    invoke-virtual {v1, v0}, Lcom/living/emo/blebean/config/CityConfig$DataBean;->setCoord(Lcom/living/emo/blebean/config/CityConfig$DataBean$CoordBean;)V

    const/4 v0, 0x0

    .line 65
    invoke-virtual {v1, v0}, Lcom/living/emo/blebean/config/CityConfig$DataBean;->setId(I)V

    .line 66
    invoke-virtual {v1, p0}, Lcom/living/emo/blebean/config/CityConfig$DataBean;->setName(Ljava/lang/String;)V

    const-string p0, ""

    .line 67
    invoke-virtual {v1, p0}, Lcom/living/emo/blebean/config/CityConfig$DataBean;->setState(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v1, p0}, Lcom/living/emo/blebean/config/CityConfig$DataBean;->setCountry(Ljava/lang/String;)V

    .line 69
    new-instance p0, Lcom/living/emo/blebean/config/CityConfig;

    invoke-direct {p0}, Lcom/living/emo/blebean/config/CityConfig;-><init>()V

    const-string v0, "city_set"

    .line 70
    invoke-virtual {p0, v0}, Lcom/living/emo/blebean/config/CityConfig;->setType(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0, v1}, Lcom/living/emo/blebean/config/CityConfig;->setData(Lcom/living/emo/blebean/config/CityConfig$DataBean;)V

    .line 72
    invoke-static {p0}, Lcom/living/emo/blebean/util/BleJsonUtil;->objectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static timeZone(Ljava/util/TimeZone;)Ljava/lang/String;
    .locals 3

    .line 83
    new-instance v0, Lcom/living/emo/blebean/config/TimeZoneConfig$DataBean;

    invoke-direct {v0}, Lcom/living/emo/blebean/config/TimeZoneConfig$DataBean;-><init>()V

    const-string v1, ""

    .line 84
    invoke-virtual {v0, v1}, Lcom/living/emo/blebean/config/TimeZoneConfig$DataBean;->setCode(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/living/emo/blebean/config/TimeZoneConfig$DataBean;->setName(Ljava/lang/String;)V

    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result p0

    div-int/lit16 p0, p0, 0x3e8

    invoke-virtual {v0, p0}, Lcom/living/emo/blebean/config/TimeZoneConfig$DataBean;->setOffset(I)V

    .line 87
    new-instance p0, Lcom/living/emo/blebean/config/TimeZoneConfig;

    invoke-direct {p0}, Lcom/living/emo/blebean/config/TimeZoneConfig;-><init>()V

    const-string v1, "timezone_set"

    .line 88
    invoke-virtual {p0, v1}, Lcom/living/emo/blebean/config/TimeZoneConfig;->setType(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0, v0}, Lcom/living/emo/blebean/config/TimeZoneConfig;->setData(Lcom/living/emo/blebean/config/TimeZoneConfig$DataBean;)V

    .line 90
    invoke-static {p0}, Lcom/living/emo/blebean/util/BleJsonUtil;->objectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static wifi(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 101
    new-instance v0, Lcom/living/emo/blebean/config/WifiConfig$DataBean;

    invoke-direct {v0}, Lcom/living/emo/blebean/config/WifiConfig$DataBean;-><init>()V

    .line 102
    invoke-virtual {v0, p0}, Lcom/living/emo/blebean/config/WifiConfig$DataBean;->setSsid(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v0, p1}, Lcom/living/emo/blebean/config/WifiConfig$DataBean;->setPassword(Ljava/lang/String;)V

    .line 104
    new-instance p0, Lcom/living/emo/blebean/config/WifiConfig;

    invoke-direct {p0}, Lcom/living/emo/blebean/config/WifiConfig;-><init>()V

    const-string p1, "wifi_set"

    .line 105
    invoke-virtual {p0, p1}, Lcom/living/emo/blebean/config/WifiConfig;->setType(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0, v0}, Lcom/living/emo/blebean/config/WifiConfig;->setData(Lcom/living/emo/blebean/config/WifiConfig$DataBean;)V

    .line 107
    invoke-static {p0}, Lcom/living/emo/blebean/util/BleJsonUtil;->objectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static wifiRequest(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 424
    new-instance v0, Lcom/living/emo/blebean/config/WifiRequestConfig;

    invoke-direct {v0}, Lcom/living/emo/blebean/config/WifiRequestConfig;-><init>()V

    const-string v1, "wifi_syn"

    .line 425
    invoke-virtual {v0, v1}, Lcom/living/emo/blebean/config/WifiRequestConfig;->setType(Ljava/lang/String;)V

    .line 426
    new-instance v1, Lcom/living/emo/blebean/config/WifiRequestConfig$DataBean;

    invoke-direct {v1}, Lcom/living/emo/blebean/config/WifiRequestConfig$DataBean;-><init>()V

    .line 427
    invoke-virtual {v1, p0}, Lcom/living/emo/blebean/config/WifiRequestConfig$DataBean;->setOperation(Ljava/lang/String;)V

    .line 428
    invoke-virtual {v0, v1}, Lcom/living/emo/blebean/config/WifiRequestConfig;->setData(Lcom/living/emo/blebean/config/WifiRequestConfig$DataBean;)V

    .line 429
    invoke-static {v0}, Lcom/living/emo/blebean/util/BleJsonUtil;->objectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
