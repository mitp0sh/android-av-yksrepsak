.class public abstract Lcom/amazonaws/services/s3/transfer/internal/MultipleFileTransfer;
.super Lcom/amazonaws/services/s3/transfer/internal/AbstractTransfer;
.source "MultipleFileTransfer.java"


# instance fields
.field protected final subTransfers:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<+",
            "Lcom/amazonaws/services/s3/transfer/Transfer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/amazonaws/services/s3/transfer/TransferProgress;Lcom/amazonaws/services/s3/transfer/internal/ProgressListenerChain;Ljava/util/Collection;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "transferProgress"    # Lcom/amazonaws/services/s3/transfer/TransferProgress;
    .param p3, "progressListenerChain"    # Lcom/amazonaws/services/s3/transfer/internal/ProgressListenerChain;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/s3/transfer/TransferProgress;",
            "Lcom/amazonaws/services/s3/transfer/internal/ProgressListenerChain;",
            "Ljava/util/Collection",
            "<+",
            "Lcom/amazonaws/services/s3/transfer/Transfer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p4, "subTransfers":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/amazonaws/services/s3/transfer/Transfer;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/amazonaws/services/s3/transfer/internal/AbstractTransfer;-><init>(Ljava/lang/String;Lcom/amazonaws/services/s3/transfer/TransferProgress;Lcom/amazonaws/services/s3/transfer/internal/ProgressListenerChain;)V

    .line 33
    iput-object p4, p0, Lcom/amazonaws/services/s3/transfer/internal/MultipleFileTransfer;->subTransfers:Ljava/util/Collection;

    .line 34
    return-void
.end method


# virtual methods
.method public collateFinalState()V
    .locals 5

    .prologue
    .line 45
    const/4 v2, 0x0

    .line 46
    .local v2, "seenCanceled":Z
    iget-object v3, p0, Lcom/amazonaws/services/s3/transfer/internal/MultipleFileTransfer;->subTransfers:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/s3/transfer/Transfer;

    .line 47
    .local v0, "download":Lcom/amazonaws/services/s3/transfer/Transfer;
    invoke-interface {v0}, Lcom/amazonaws/services/s3/transfer/Transfer;->getState()Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;

    move-result-object v3

    sget-object v4, Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;->Failed:Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;

    if-ne v3, v4, :cond_1

    .line 48
    sget-object v3, Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;->Failed:Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;

    invoke-virtual {p0, v3}, Lcom/amazonaws/services/s3/transfer/internal/MultipleFileTransfer;->setState(Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;)V

    .line 58
    .end local v0    # "download":Lcom/amazonaws/services/s3/transfer/Transfer;
    :goto_1
    return-void

    .line 50
    .restart local v0    # "download":Lcom/amazonaws/services/s3/transfer/Transfer;
    :cond_1
    invoke-interface {v0}, Lcom/amazonaws/services/s3/transfer/Transfer;->getState()Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;

    move-result-object v3

    sget-object v4, Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;->Canceled:Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;

    if-ne v3, v4, :cond_0

    .line 51
    const/4 v2, 0x1

    goto :goto_0

    .line 54
    .end local v0    # "download":Lcom/amazonaws/services/s3/transfer/Transfer;
    :cond_2
    if-eqz v2, :cond_3

    .line 55
    sget-object v3, Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;->Canceled:Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;

    invoke-virtual {p0, v3}, Lcom/amazonaws/services/s3/transfer/internal/MultipleFileTransfer;->setState(Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;)V

    goto :goto_1

    .line 57
    :cond_3
    sget-object v3, Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;->Completed:Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;

    invoke-virtual {p0, v3}, Lcom/amazonaws/services/s3/transfer/internal/MultipleFileTransfer;->setState(Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;)V

    goto :goto_1
.end method
