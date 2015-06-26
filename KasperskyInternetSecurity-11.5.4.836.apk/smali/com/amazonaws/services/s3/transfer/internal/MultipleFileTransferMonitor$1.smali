.class Lcom/amazonaws/services/s3/transfer/internal/MultipleFileTransferMonitor$1;
.super Ljava/lang/Object;
.source "MultipleFileTransferMonitor.java"

# interfaces
.implements Ljava/util/concurrent/Future;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/services/s3/transfer/internal/MultipleFileTransferMonitor;-><init>(Lcom/amazonaws/services/s3/transfer/internal/AbstractTransfer;Ljava/util/Collection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Future",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazonaws/services/s3/transfer/internal/MultipleFileTransferMonitor;


# direct methods
.method constructor <init>(Lcom/amazonaws/services/s3/transfer/internal/MultipleFileTransferMonitor;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/amazonaws/services/s3/transfer/internal/MultipleFileTransferMonitor$1;->this$0:Lcom/amazonaws/services/s3/transfer/internal/MultipleFileTransferMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 1
    .param p1, "mayInterruptIfRunning"    # Z

    .prologue
    .line 44
    const/4 v0, 0x1

    return v0
.end method

.method public get()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 49
    const/4 v2, 0x0

    .line 50
    .local v2, "result":Ljava/lang/Object;
    iget-object v3, p0, Lcom/amazonaws/services/s3/transfer/internal/MultipleFileTransferMonitor$1;->this$0:Lcom/amazonaws/services/s3/transfer/internal/MultipleFileTransferMonitor;

    # getter for: Lcom/amazonaws/services/s3/transfer/internal/MultipleFileTransferMonitor;->subTransfers:Ljava/util/Collection;
    invoke-static {v3}, Lcom/amazonaws/services/s3/transfer/internal/MultipleFileTransferMonitor;->access$000(Lcom/amazonaws/services/s3/transfer/internal/MultipleFileTransferMonitor;)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local v2    # "result":Ljava/lang/Object;
    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/s3/transfer/internal/AbstractTransfer;

    .line 51
    .local v0, "download":Lcom/amazonaws/services/s3/transfer/internal/AbstractTransfer;
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/transfer/internal/AbstractTransfer;->getMonitor()Lcom/amazonaws/services/s3/transfer/internal/TransferMonitor;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazonaws/services/s3/transfer/internal/TransferMonitor;->getFuture()Ljava/util/concurrent/Future;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    .restart local v2    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 53
    .end local v0    # "download":Lcom/amazonaws/services/s3/transfer/internal/AbstractTransfer;
    .end local v2    # "result":Ljava/lang/Object;
    :cond_0
    return-object v2
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 4
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 59
    const/4 v1, 0x0

    .line 60
    .local v1, "result":Ljava/lang/Object;
    iget-object v3, p0, Lcom/amazonaws/services/s3/transfer/internal/MultipleFileTransferMonitor$1;->this$0:Lcom/amazonaws/services/s3/transfer/internal/MultipleFileTransferMonitor;

    # getter for: Lcom/amazonaws/services/s3/transfer/internal/MultipleFileTransferMonitor;->subTransfers:Ljava/util/Collection;
    invoke-static {v3}, Lcom/amazonaws/services/s3/transfer/internal/MultipleFileTransferMonitor;->access$000(Lcom/amazonaws/services/s3/transfer/internal/MultipleFileTransferMonitor;)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .end local v1    # "result":Ljava/lang/Object;
    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazonaws/services/s3/transfer/internal/AbstractTransfer;

    .line 61
    .local v2, "subTransfer":Lcom/amazonaws/services/s3/transfer/internal/AbstractTransfer;
    invoke-virtual {v2}, Lcom/amazonaws/services/s3/transfer/internal/AbstractTransfer;->getMonitor()Lcom/amazonaws/services/s3/transfer/internal/TransferMonitor;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazonaws/services/s3/transfer/internal/TransferMonitor;->getFuture()Ljava/util/concurrent/Future;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    .restart local v1    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 63
    .end local v1    # "result":Ljava/lang/Object;
    .end local v2    # "subTransfer":Lcom/amazonaws/services/s3/transfer/internal/AbstractTransfer;
    :cond_0
    return-object v1
.end method

.method public isCancelled()Z
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/amazonaws/services/s3/transfer/internal/MultipleFileTransferMonitor$1;->this$0:Lcom/amazonaws/services/s3/transfer/internal/MultipleFileTransferMonitor;

    # getter for: Lcom/amazonaws/services/s3/transfer/internal/MultipleFileTransferMonitor;->transfer:Lcom/amazonaws/services/s3/transfer/internal/AbstractTransfer;
    invoke-static {v0}, Lcom/amazonaws/services/s3/transfer/internal/MultipleFileTransferMonitor;->access$100(Lcom/amazonaws/services/s3/transfer/internal/MultipleFileTransferMonitor;)Lcom/amazonaws/services/s3/transfer/internal/AbstractTransfer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/transfer/internal/AbstractTransfer;->getState()Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;

    move-result-object v0

    sget-object v1, Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;->Canceled:Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/amazonaws/services/s3/transfer/internal/MultipleFileTransferMonitor$1;->this$0:Lcom/amazonaws/services/s3/transfer/internal/MultipleFileTransferMonitor;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/transfer/internal/MultipleFileTransferMonitor;->isDone()Z

    move-result v0

    return v0
.end method
