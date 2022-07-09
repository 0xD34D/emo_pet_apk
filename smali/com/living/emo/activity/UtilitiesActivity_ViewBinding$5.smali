.class Lcom/living/emo/activity/UtilitiesActivity_ViewBinding$5;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "UtilitiesActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/activity/UtilitiesActivity_ViewBinding;-><init>(Lcom/living/emo/activity/UtilitiesActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/living/emo/activity/UtilitiesActivity_ViewBinding;

.field final synthetic val$target:Lcom/living/emo/activity/UtilitiesActivity;


# direct methods
.method constructor <init>(Lcom/living/emo/activity/UtilitiesActivity_ViewBinding;Lcom/living/emo/activity/UtilitiesActivity;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/living/emo/activity/UtilitiesActivity_ViewBinding$5;->this$0:Lcom/living/emo/activity/UtilitiesActivity_ViewBinding;

    iput-object p2, p0, Lcom/living/emo/activity/UtilitiesActivity_ViewBinding$5;->val$target:Lcom/living/emo/activity/UtilitiesActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 82
    iget-object p1, p0, Lcom/living/emo/activity/UtilitiesActivity_ViewBinding$5;->val$target:Lcom/living/emo/activity/UtilitiesActivity;

    invoke-virtual {p1}, Lcom/living/emo/activity/UtilitiesActivity;->goLight()V

    return-void
.end method
