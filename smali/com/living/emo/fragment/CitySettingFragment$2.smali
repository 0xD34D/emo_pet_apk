.class Lcom/living/emo/fragment/CitySettingFragment$2;
.super Ljava/lang/Object;
.source "CitySettingFragment.java"

# interfaces
.implements Lcom/living/emo/blebean/parse/BleCityResponseParse$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/fragment/CitySettingFragment;->onMessageEvent(Lcom/living/emo/event/JsonEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/living/emo/fragment/CitySettingFragment;


# direct methods
.method constructor <init>(Lcom/living/emo/fragment/CitySettingFragment;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/living/emo/fragment/CitySettingFragment$2;->this$0:Lcom/living/emo/fragment/CitySettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public response(Lcom/living/emo/blebean/response/CityResponse$DataBean$CityBean;)V
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/living/emo/fragment/CitySettingFragment$2;->this$0:Lcom/living/emo/fragment/CitySettingFragment;

    iget-object v0, v0, Lcom/living/emo/fragment/CitySettingFragment;->mCityName:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/living/emo/blebean/response/CityResponse$DataBean$CityBean;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 214
    iget-object p1, p0, Lcom/living/emo/fragment/CitySettingFragment$2;->this$0:Lcom/living/emo/fragment/CitySettingFragment;

    sget-object v0, Lcom/living/emo/fragment/CitySettingFragment$State;->EDIT:Lcom/living/emo/fragment/CitySettingFragment$State;

    invoke-static {p1, v0}, Lcom/living/emo/fragment/CitySettingFragment;->access$000(Lcom/living/emo/fragment/CitySettingFragment;Lcom/living/emo/fragment/CitySettingFragment$State;)V

    return-void
.end method
