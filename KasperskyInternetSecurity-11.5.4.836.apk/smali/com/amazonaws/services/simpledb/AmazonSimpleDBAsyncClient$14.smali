.class Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient$14;
.super Ljava/lang/Object;
.source "AmazonSimpleDBAsyncClient.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient;->listDomainsAsync(Lcom/amazonaws/services/simpledb/model/ListDomainsRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
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
        "Lcom/amazonaws/services/simpledb/model/ListDomainsResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient;

.field final synthetic val$asyncHandler:Lcom/amazonaws/handlers/AsyncHandler;

.field final synthetic val$listDomainsRequest:Lcom/amazonaws/services/simpledb/model/ListDomainsRequest;


# direct methods
.method constructor <init>(Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient;Lcom/amazonaws/services/simpledb/model/ListDomainsRequest;Lcom/amazonaws/handlers/AsyncHandler;)V
    .locals 0

    .prologue
    .line 1026
    iput-object p1, p0, Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient$14;->this$0:Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient;

    iput-object p2, p0, Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient$14;->val$listDomainsRequest:Lcom/amazonaws/services/simpledb/model/ListDomainsRequest;

    iput-object p3, p0, Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient$14;->val$asyncHandler:Lcom/amazonaws/handlers/AsyncHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/amazonaws/services/simpledb/model/ListDomainsResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1030
    :try_start_0
    iget-object v2, p0, Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient$14;->this$0:Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient;

    iget-object v3, p0, Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient$14;->val$listDomainsRequest:Lcom/amazonaws/services/simpledb/model/ListDomainsRequest;

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient;->listDomains(Lcom/amazonaws/services/simpledb/model/ListDomainsRequest;)Lcom/amazonaws/services/simpledb/model/ListDomainsResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1035
    .local v1, "result":Lcom/amazonaws/services/simpledb/model/ListDomainsResult;
    iget-object v2, p0, Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient$14;->val$asyncHandler:Lcom/amazonaws/handlers/AsyncHandler;

    iget-object v3, p0, Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient$14;->val$listDomainsRequest:Lcom/amazonaws/services/simpledb/model/ListDomainsRequest;

    invoke-interface {v2, v3, v1}, Lcom/amazonaws/handlers/AsyncHandler;->onSuccess(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/Object;)V

    .line 1036
    return-object v1

    .line 1031
    .end local v1    # "result":Lcom/amazonaws/services/simpledb/model/ListDomainsResult;
    :catch_0
    move-exception v0

    .line 1032
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient$14;->val$asyncHandler:Lcom/amazonaws/handlers/AsyncHandler;

    invoke-interface {v2, v0}, Lcom/amazonaws/handlers/AsyncHandler;->onError(Ljava/lang/Exception;)V

    .line 1033
    throw v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1026
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient$14;->call()Lcom/amazonaws/services/simpledb/model/ListDomainsResult;

    move-result-object v0

    return-object v0
.end method
