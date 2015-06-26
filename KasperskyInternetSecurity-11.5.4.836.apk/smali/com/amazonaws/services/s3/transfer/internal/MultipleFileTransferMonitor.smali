.class public Lcom/amazonaws/services/s3/transfer/internal/MultipleFileTransferMonitor;
.super Ljava/lang/Object;
.source "MultipleFileTransferMonitor.java"

# interfaces
.implements Lcom/amazonaws/services/s3/transfer/internal/TransferMonitor;


# instance fields
.field private final future:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field

.field private final subTransfers:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<+",
            "Lcom/amazonaws/services/s3/transfer/internal/AbstractTransfer;",
            ">;"
        }
    .end annotation
.end field

.field private final transfer:Lcom/amazonaws/services/s3/transfer/internal/AbstractTransfer;


# direct methods
.method public constructor <init>(Lcom/amazonaws/services/s3/transfer/internal/AbstractTransfer;Ljava/util/Collection;)V
    .locals 1
    .param p1, "transfer"    # Lcom/amazonaws/services/s3/transfer/internal/AbstractTransfer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/s3/transfer/internal/AbstractTransfer;",
            "Ljava/util/Collection",
            "<+",
            "Lcom/amazonaws/services/s3/transfer/internal/AbstractTransfer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p2, "subTransfers":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/amazonaws/services/s3/transfer/internal/AbstractTransfer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p2, p0, Lcom/amazonaws/services/s3/transfer/internal/MultipleFileTransferMonitor;->subTransfers:Ljava/util/Collection;

    .line 33
    iput-object p1, p0, Lcom/amazonaws/services/s3/transfer/internal/MultipleFileTransferMonitor;->transfer:Lcom/amazonaws/services/s3/transfer/internal/AbstractTransfer;

    .line 40
    new-instance v0, Lcom/amazonaws/services/s3/transfer/internal/MultipleFileTransferMonitor$1;

    invoke-direct {v0, p0}, Lcom/amazonaws/services/s3/transfer/internal/MultipleFileTransferMonitor$1;-><init>(Lcom/amazonaws/services/s3/transfer/internal/MultipleFileTransferMonitor;)V

    iput-object v0, p0, Lcom/amazonaws/services/s3/transfer/internal/MultipleFileTransferMonitor;->future:Ljava/util/concurrent/Future;

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/amazonaws/services/s3/transfer/internal/MultipleFileTransferMonitor;)Ljava/util/Collection;
    .locals 1
    .param p0, "x0"    # Lcom/amazonaws/services/s3/transfer/internal/MultipleFileTransferMonitor;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/amazonaws/services/s3/transfer/internal/MultipleFileTransferMonitor;->subTransfers:Ljava/util/Collection;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazonaws/services/s3/transfer/internal/MultipleFileTransferMonitor;)Lcom/amazonaws/services/s3/transfer/internal/AbstractTransfer;
    .locals 1
    .param p0, "x0"    # Lcom/amazonaws/services/s3/transfer/internal/MultipleFileTransferMonitor;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/amazonaws/services/s3/transfer/internal/MultipleFileTransferMonitor;->transfer:Lcom/amazonaws/services/s3/transfer/internal/AbstractTransfer;

    return-object v0
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
    .line 80
    iget-object v0, p0, Lcom/amazonaws/services/s3/transfer/internal/MultipleFileTransferMonitor;->future:Ljava/util/concurrent/Future;

    return-object v0
.end method

.method public declared-synchronized isDone()Z
    .locals 3

    .prologue
    .line 85
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/amazonaws/services/s3/transfer/internal/MultipleFileTransferMonitor;->subTransfers:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/s3/transfer/internal/AbstractTransfer;

    .line 86
    .local v1, "subTransfer":Lcom/amazonaws/services/s3/transfer/Transfer;
    invoke-interface {v1}, Lcom/amazonaws/services/s3/transfer/Transfer;->isDone()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 87
    const/4 v2, 0x0

    .line 89
    .end local v1    # "subTransfer":Lcom/amazonaws/services/s3/transfer/Transfer;
    :goto_0
    monitor-exit p0

    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    .line 85
    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
