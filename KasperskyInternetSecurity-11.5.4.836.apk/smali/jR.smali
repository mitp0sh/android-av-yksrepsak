.class public abstract LjR;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrz;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method private a(LjD;)V
    .locals 2

    .prologue
    .line 12
    sget-object v1, LjS;->a:[I

    invoke-virtual {p1}, LjD;->n()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kms/ActivityLifecycleEventType;

    invoke-virtual {v0}, Lcom/kms/ActivityLifecycleEventType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 24
    :cond_0
    :goto_0
    return-void

    .line 14
    :pswitch_0
    invoke-virtual {p1}, LjD;->a()Landroid/app/Activity;

    move-result-object v0

    .line 15
    invoke-static {v0}, Lcom/kms/kmsshared/KMSApplication;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17
    invoke-static {}, LjJ;->b()Lrx;

    move-result-object v0

    invoke-interface {v0, p0}, Lrx;->a(Lrz;)V

    .line 20
    invoke-virtual {p1}, LjD;->b()LjE;

    move-result-object v0

    invoke-virtual {p0, v0}, LjR;->a(LjE;)V

    goto :goto_0

    .line 12
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected abstract a(LjE;)V
.end method

.method public final bridge synthetic a(Lrw;)V
    .locals 0

    .prologue
    .line 8
    check-cast p1, LjD;

    invoke-direct {p0, p1}, LjR;->a(LjD;)V

    return-void
.end method
