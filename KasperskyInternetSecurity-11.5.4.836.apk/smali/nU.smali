.class final LnU;
.super Landroid/app/ProgressDialog;
.source "SourceFile"


# instance fields
.field private synthetic a:LnT;


# direct methods
.method constructor <init>(LnT;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, LnU;->a:LnT;

    invoke-direct {p0, p2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 62
    const/4 v0, 0x1

    .line 64
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
