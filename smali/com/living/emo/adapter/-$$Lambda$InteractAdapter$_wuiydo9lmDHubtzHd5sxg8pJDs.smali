.class public final synthetic Lcom/living/emo/adapter/-$$Lambda$InteractAdapter$_wuiydo9lmDHubtzHd5sxg8pJDs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/app/Dialog;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Dialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/living/emo/adapter/-$$Lambda$InteractAdapter$_wuiydo9lmDHubtzHd5sxg8pJDs;->f$0:Landroid/app/Dialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/living/emo/adapter/-$$Lambda$InteractAdapter$_wuiydo9lmDHubtzHd5sxg8pJDs;->f$0:Landroid/app/Dialog;

    invoke-static {v0, p1}, Lcom/living/emo/adapter/InteractAdapter;->lambda$askForMe$1(Landroid/app/Dialog;Landroid/view/View;)V

    return-void
.end method
