.class Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient$10;
.super Ljava/lang/Object;
.source "AmazonSimpleDBAsyncClient.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient;->createDomainAsync(Lcom/amazonaws/services/simpledb/model/CreateDomainRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient;

.field final synthetic val$asyncHandler:Lcom/amazonaws/handlers/AsyncHandler;

.field final synthetic val$createDomainRequest:Lcom/amazonaws/services/simpledb/model/CreateDomainRequest;


# direct methods
.method constructor <init>(Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient;Lcom/amazonaws/services/simpledb/model/CreateDomainRequest;Lcom/amazonaws/handlers/AsyncHandler;)V
    .locals 0

    .prologue
    .line 835
    iput-object p1, p0, Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient$10;->this$0:Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient;

    iput-object p2, p0, Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient$10;->val$createDomainRequest:Lcom/amazonaws/services/simpledb/model/CreateDomainRequest;

    iput-object p3, p0, Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient$10;->val$asyncHandler:Lcom/amazonaws/handlers/AsyncHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 835
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient$10;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 838
    :try_start_0
    iget-object v1, p0, Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient$10;->this$0:Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient;

    iget-object v2, p0, Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient$10;->val$createDomainRequest:Lcom/amazonaws/services/simpledb/model/CreateDomainRequest;

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient;->createDomain(Lcom/amazonaws/services/simpledb/model/CreateDomainRequest;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 843
    iget-object v1, p0, Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient$10;->val$asyncHandler:Lcom/amazonaws/handlers/AsyncHandler;

    iget-object v2, p0, Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient$10;->val$createDomainRequest:Lcom/amazonaws/services/simpledb/model/CreateDomainRequest;

    invoke-interface {v1, v2, v3}, Lcom/amazonaws/handlers/AsyncHandler;->onSuccess(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/Object;)V

    .line 844
    return-object v3

    .line 839
    :catch_0
    move-exception v0

    .line 840
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient$10;->val$asyncHandler:Lcom/amazonaws/handlers/AsyncHandler;

    invoke-interface {v1, v0}, Lcom/amazonaws/handlers/AsyncHandler;->onError(Ljava/lang/Exception;)V

    .line 841
    throw v0
.end method
