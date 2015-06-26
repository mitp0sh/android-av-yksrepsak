.class public Lcom/amazonaws/services/s3/transfer/internal/TransferProgressUpdatingListener;
.super Ljava/lang/Object;
.source "TransferProgressUpdatingListener.java"

# interfaces
.implements Lcom/amazonaws/services/s3/model/ProgressListener;


# instance fields
.field private final transferProgress:Lcom/amazonaws/services/s3/transfer/internal/TransferProgressImpl;


# direct methods
.method public constructor <init>(Lcom/amazonaws/services/s3/transfer/internal/TransferProgressImpl;)V
    .locals 0
    .param p1, "transferProgress"    # Lcom/amazonaws/services/s3/transfer/internal/TransferProgressImpl;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/amazonaws/services/s3/transfer/internal/TransferProgressUpdatingListener;->transferProgress:Lcom/amazonaws/services/s3/transfer/internal/TransferProgressImpl;

    .line 25
    return-void
.end method


# virtual methods
.method public progressChanged(Lcom/amazonaws/services/s3/model/ProgressEvent;)V
    .locals 3
    .param p1, "progressEvent"    # Lcom/amazonaws/services/s3/model/ProgressEvent;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/amazonaws/services/s3/transfer/internal/TransferProgressUpdatingListener;->transferProgress:Lcom/amazonaws/services/s3/transfer/internal/TransferProgressImpl;

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ProgressEvent;->getBytesTransfered()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/amazonaws/services/s3/transfer/internal/TransferProgressImpl;->updateProgress(J)V

    .line 29
    return-void
.end method
