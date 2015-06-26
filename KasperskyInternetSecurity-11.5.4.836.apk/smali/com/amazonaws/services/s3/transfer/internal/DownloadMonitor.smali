.class public Lcom/amazonaws/services/s3/transfer/internal/DownloadMonitor;
.super Ljava/lang/Object;
.source "DownloadMonitor.java"

# interfaces
.implements Lcom/amazonaws/services/s3/transfer/internal/TransferMonitor;


# instance fields
.field private final download:Lcom/amazonaws/services/s3/transfer/internal/DownloadImpl;

.field private final future:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazonaws/services/s3/transfer/internal/DownloadImpl;Ljava/util/concurrent/Future;)V
    .locals 0
    .param p1, "download"    # Lcom/amazonaws/services/s3/transfer/internal/DownloadImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/s3/transfer/internal/DownloadImpl;",
            "Ljava/util/concurrent/Future",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p2, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/amazonaws/services/s3/transfer/internal/DownloadMonitor;->download:Lcom/amazonaws/services/s3/transfer/internal/DownloadImpl;

    .line 26
    iput-object p2, p0, Lcom/amazonaws/services/s3/transfer/internal/DownloadMonitor;->future:Ljava/util/concurrent/Future;

    .line 27
    return-void
.end method


# virtual methods
.method public getFuture()Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lcom/amazonaws/services/s3/transfer/internal/DownloadMonitor;->future:Ljava/util/concurrent/Future;

    return-object v0
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/amazonaws/services/s3/transfer/internal/DownloadMonitor;->download:Lcom/amazonaws/services/s3/transfer/internal/DownloadImpl;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/transfer/internal/DownloadImpl;->isDone()Z

    move-result v0

    return v0
.end method
