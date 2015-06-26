.class public final Lh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/kaspersky/bby/BbyGrace2Event;


# direct methods
.method public constructor <init>(Lcom/kaspersky/bby/BbyGrace2Event;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lh;->a:Lcom/kaspersky/bby/BbyGrace2Event;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x14

    .line 40
    invoke-static {}, Lsr;->g()Lsk;

    move-result-object v0

    invoke-virtual {v0}, Lsk;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->w()Lcom/kms/kmsshared/KMSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->u()LsY;

    move-result-object v0

    .line 42
    new-instance v1, LtA;

    invoke-direct {v1, v3, v0}, LtA;-><init>(Ltf;LsY;)V

    .line 43
    invoke-interface {v0, v1, v3}, LsY;->a(Lte;Landroid/os/Handler;)V

    .line 44
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->c:Lrq;

    invoke-virtual {v0, v2}, Lrq;->a(I)V

    .line 48
    :goto_0
    return-void

    .line 46
    :cond_0
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->c:Lrq;

    invoke-virtual {v0, v2}, Lrq;->b(I)V

    goto :goto_0
.end method
