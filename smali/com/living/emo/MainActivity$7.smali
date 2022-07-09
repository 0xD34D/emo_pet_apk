.class Lcom/living/emo/MainActivity$7;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/living/emo/blebean/parse/BlePersonalityResponseParse$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/MainActivity;->onJsonEvent(Lcom/living/emo/event/JsonEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/living/emo/MainActivity;


# direct methods
.method constructor <init>(Lcom/living/emo/MainActivity;)V
    .locals 0

    .line 643
    iput-object p1, p0, Lcom/living/emo/MainActivity$7;->this$0:Lcom/living/emo/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public response(Lcom/living/emo/blebean/config/PersonalityConfig$DataBean$PersonalityBean;)V
    .locals 1

    .line 646
    iget-object v0, p0, Lcom/living/emo/MainActivity$7;->this$0:Lcom/living/emo/MainActivity;

    invoke-static {v0}, Lcom/living/emo/MainActivity;->access$900(Lcom/living/emo/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/living/emo/blebean/config/PersonalityConfig$DataBean$PersonalityBean;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
