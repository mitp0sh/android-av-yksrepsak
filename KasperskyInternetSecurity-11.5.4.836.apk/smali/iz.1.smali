.class public final Liz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field private synthetic a:Lcom/kavsdk/secureinput/widget/SafeEditText;


# direct methods
.method public constructor <init>(Lcom/kavsdk/secureinput/widget/SafeEditText;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Liz;->a:Lcom/kavsdk/secureinput/widget/SafeEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Liz;->a:Lcom/kavsdk/secureinput/widget/SafeEditText;

    invoke-static {v0}, Lcom/kavsdk/secureinput/widget/SafeEditText;->a(Lcom/kavsdk/secureinput/widget/SafeEditText;)Landroid/view/View$OnLongClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Liz;->a:Lcom/kavsdk/secureinput/widget/SafeEditText;

    invoke-static {v0}, Lcom/kavsdk/secureinput/widget/SafeEditText;->a(Lcom/kavsdk/secureinput/widget/SafeEditText;)Landroid/view/View$OnLongClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    .line 143
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
