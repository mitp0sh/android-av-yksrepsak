.class final Lku;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 384
    invoke-direct {p0}, Lku;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 388
    invoke-static {}, Lqz;->b()I

    move-result v0

    if-nez v0, :cond_0

    .line 389
    invoke-static {}, Lkr;->b()V

    .line 391
    :cond_0
    return-void
.end method
