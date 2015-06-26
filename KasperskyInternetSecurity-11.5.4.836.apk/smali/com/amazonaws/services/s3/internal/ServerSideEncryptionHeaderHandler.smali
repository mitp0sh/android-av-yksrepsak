.class public Lcom/amazonaws/services/s3/internal/ServerSideEncryptionHeaderHandler;
.super Ljava/lang/Object;
.source "ServerSideEncryptionHeaderHandler.java"

# interfaces
.implements Lcom/amazonaws/services/s3/internal/HeaderHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/amazonaws/services/s3/internal/ServerSideEncryptionResult;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/amazonaws/services/s3/internal/HeaderHandler",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    .local p0, "this":Lcom/amazonaws/services/s3/internal/ServerSideEncryptionHeaderHandler;, "Lcom/amazonaws/services/s3/internal/ServerSideEncryptionHeaderHandler<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Lcom/amazonaws/services/s3/internal/ServerSideEncryptionResult;Lcom/amazonaws/http/HttpResponse;)V
    .locals 2
    .param p2, "response"    # Lcom/amazonaws/http/HttpResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/amazonaws/http/HttpResponse;",
            ")V"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, "this":Lcom/amazonaws/services/s3/internal/ServerSideEncryptionHeaderHandler;, "Lcom/amazonaws/services/s3/internal/ServerSideEncryptionHeaderHandler<TT;>;"
    .local p1, "result":Lcom/amazonaws/services/s3/internal/ServerSideEncryptionResult;, "TT;"
    invoke-virtual {p2}, Lcom/amazonaws/http/HttpResponse;->getHeaders()Ljava/util/Map;

    move-result-object v0

    const-string v1, "x-amz-server-side-encryption"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/amazonaws/services/s3/internal/ServerSideEncryptionResult;->setServerSideEncryption(Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public bridge synthetic handle(Ljava/lang/Object;Lcom/amazonaws/http/HttpResponse;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lcom/amazonaws/http/HttpResponse;

    .prologue
    .line 25
    .local p0, "this":Lcom/amazonaws/services/s3/internal/ServerSideEncryptionHeaderHandler;, "Lcom/amazonaws/services/s3/internal/ServerSideEncryptionHeaderHandler<TT;>;"
    check-cast p1, Lcom/amazonaws/services/s3/internal/ServerSideEncryptionResult;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/amazonaws/services/s3/internal/ServerSideEncryptionHeaderHandler;->handle(Lcom/amazonaws/services/s3/internal/ServerSideEncryptionResult;Lcom/amazonaws/http/HttpResponse;)V

    return-void
.end method
