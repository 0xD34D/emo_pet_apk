.class Lcom/living/emo/fragment/LightFragment$5;
.super Ljava/lang/Object;
.source "LightFragment.java"

# interfaces
.implements Lcom/living/emo/blebean/parse/BleLightResponseParse$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/fragment/LightFragment;->onJsonEvent(Lcom/living/emo/event/JsonEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/living/emo/fragment/LightFragment;


# direct methods
.method constructor <init>(Lcom/living/emo/fragment/LightFragment;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/living/emo/fragment/LightFragment$5;->this$0:Lcom/living/emo/fragment/LightFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public response(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/living/emo/blebean/response/LightResponse$DataBean$LightBean$StateBean;",
            ">;)V"
        }
    .end annotation

    .line 214
    iget-object v0, p0, Lcom/living/emo/fragment/LightFragment$5;->this$0:Lcom/living/emo/fragment/LightFragment;

    invoke-static {v0, p1}, Lcom/living/emo/fragment/LightFragment;->access$1200(Lcom/living/emo/fragment/LightFragment;Ljava/util/List;)V

    return-void
.end method
