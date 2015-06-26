.class public final LiB;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field private synthetic a:Lcom/kavsdk/secureinput/widget/SafeEditText;


# direct methods
.method public constructor <init>(Lcom/kavsdk/secureinput/widget/SafeEditText;)V
    .locals 0

    .prologue
    .line 372
    iput-object p1, p0, LiB;->a:Lcom/kavsdk/secureinput/widget/SafeEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, LiB;->a:Lcom/kavsdk/secureinput/widget/SafeEditText;

    invoke-static {v0}, Lcom/kavsdk/secureinput/widget/SafeEditText;->d(Lcom/kavsdk/secureinput/widget/SafeEditText;)Landroid/view/View$OnKeyListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, LiB;->a:Lcom/kavsdk/secureinput/widget/SafeEditText;

    invoke-static {v0}, Lcom/kavsdk/secureinput/widget/SafeEditText;->d(Lcom/kavsdk/secureinput/widget/SafeEditText;)Landroid/view/View$OnKeyListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/view/View$OnKeyListener;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 379
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
