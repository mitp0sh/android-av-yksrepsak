.class final Lkw;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 374
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 374
    invoke-direct {p0}, Lkw;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 378
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    invoke-static {}, Lkr;->b()V

    .line 381
    :cond_0
    return-void
.end method
