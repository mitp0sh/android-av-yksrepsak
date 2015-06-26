.class public Lcom/amazonaws/services/s3/transfer/internal/UploadPartCallable;
.super Ljava/lang/Object;
.source "UploadPartCallable.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/amazonaws/services/s3/model/PartETag;",
        ">;"
    }
.end annotation


# instance fields
.field private final request:Lcom/amazonaws/services/s3/model/UploadPartRequest;

.field private final s3:Lcom/amazonaws/services/s3/AmazonS3;


# direct methods
.method public constructor <init>(Lcom/amazonaws/services/s3/AmazonS3;Lcom/amazonaws/services/s3/model/UploadPartRequest;)V
    .locals 0
    .param p1, "s3"    # Lcom/amazonaws/services/s3/AmazonS3;
    .param p2, "request"    # Lcom/amazonaws/services/s3/model/UploadPartRequest;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadPartCallable;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    .line 29
    iput-object p2, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadPartCallable;->request:Lcom/amazonaws/services/s3/model/UploadPartRequest;

    .line 30
    return-void
.end method


# virtual methods
.method public call()Lcom/amazonaws/services/s3/model/PartETag;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadPartCallable;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    iget-object v1, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadPartCallable;->request:Lcom/amazonaws/services/s3/model/UploadPartRequest;

    invoke-interface {v0, v1}, Lcom/amazonaws/services/s3/AmazonS3;->uploadPart(Lcom/amazonaws/services/s3/model/UploadPartRequest;)Lcom/amazonaws/services/s3/model/UploadPartResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/UploadPartResult;->getPartETag()Lcom/amazonaws/services/s3/model/PartETag;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/transfer/internal/UploadPartCallable;->call()Lcom/amazonaws/services/s3/model/PartETag;

    move-result-object v0

    return-object v0
.end method