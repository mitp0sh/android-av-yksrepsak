.class public final Lrf;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 211
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 212
    iput-object p1, p0, Lrf;->a:Landroid/content/Context;

    .line 213
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lrf;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/kms/kmsshared/Utils;->b(Landroid/content/Context;)V

    .line 218
    invoke-static {}, Lcom/kms/kmsshared/Utils;->x()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 219
    return-void
.end method
