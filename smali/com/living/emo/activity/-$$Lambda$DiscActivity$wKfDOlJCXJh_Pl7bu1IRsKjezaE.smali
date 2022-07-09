.class public final synthetic Lcom/living/emo/activity/-$$Lambda$DiscActivity$wKfDOlJCXJh_Pl7bu1IRsKjezaE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/living/emo/view/DiscWindow$PlayerItemListener;


# instance fields
.field public final synthetic f$0:Lcom/living/emo/activity/DiscActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/living/emo/activity/DiscActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/living/emo/activity/-$$Lambda$DiscActivity$wKfDOlJCXJh_Pl7bu1IRsKjezaE;->f$0:Lcom/living/emo/activity/DiscActivity;

    return-void
.end method


# virtual methods
.method public final onPlayerItem(Lcom/living/emo/bean/MusicBean$DataBean;)V
    .locals 1

    iget-object v0, p0, Lcom/living/emo/activity/-$$Lambda$DiscActivity$wKfDOlJCXJh_Pl7bu1IRsKjezaE;->f$0:Lcom/living/emo/activity/DiscActivity;

    invoke-virtual {v0, p1}, Lcom/living/emo/activity/DiscActivity;->lambda$initWindow$1$DiscActivity(Lcom/living/emo/bean/MusicBean$DataBean;)V

    return-void
.end method
