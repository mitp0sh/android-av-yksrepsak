.class public final Lrg;
.super Ljava/util/TimerTask;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 201
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 201
    invoke-direct {p0}, Lrg;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 204
    invoke-static {}, Lcom/kms/kmsshared/Utils;->w()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 205
    return-void
.end method
