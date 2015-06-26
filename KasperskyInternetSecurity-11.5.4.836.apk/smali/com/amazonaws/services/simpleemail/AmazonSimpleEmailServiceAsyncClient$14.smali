.class Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient$14;
.super Ljava/lang/Object;
.source "AmazonSimpleEmailServiceAsyncClient.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient;->getIdentityDkimAttributesAsync(Lcom/amazonaws/services/simpleemail/model/GetIdentityDkimAttributesRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
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
        "Lcom/amazonaws/services/simpleemail/model/GetIdentityDkimAttributesResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient;

.field final synthetic val$asyncHandler:Lcom/amazonaws/handlers/AsyncHandler;

.field final synthetic val$getIdentityDkimAttributesRequest:Lcom/amazonaws/services/simpleemail/model/GetIdentityDkimAttributesRequest;


# direct methods
.method constructor <init>(Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient;Lcom/amazonaws/services/simpleemail/model/GetIdentityDkimAttributesRequest;Lcom/amazonaws/handlers/AsyncHandler;)V
    .locals 0

    .prologue
    .line 879
    iput-object p1, p0, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient$14;->this$0:Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient;

    iput-object p2, p0, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient$14;->val$getIdentityDkimAttributesRequest:Lcom/amazonaws/services/simpleemail/model/GetIdentityDkimAttributesRequest;

    iput-object p3, p0, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient$14;->val$asyncHandler:Lcom/amazonaws/handlers/AsyncHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/amazonaws/services/simpleemail/model/GetIdentityDkimAttributesResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 883
    :try_start_0
    iget-object v2, p0, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient$14;->this$0:Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient;

    iget-object v3, p0, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient$14;->val$getIdentityDkimAttributesRequest:Lcom/amazonaws/services/simpleemail/model/GetIdentityDkimAttributesRequest;

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient;->getIdentityDkimAttributes(Lcom/amazonaws/services/simpleemail/model/GetIdentityDkimAttributesRequest;)Lcom/amazonaws/services/simpleemail/model/GetIdentityDkimAttributesResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 888
    .local v1, "result":Lcom/amazonaws/services/simpleemail/model/GetIdentityDkimAttributesResult;
    iget-object v2, p0, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient$14;->val$asyncHandler:Lcom/amazonaws/handlers/AsyncHandler;

    iget-object v3, p0, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient$14;->val$getIdentityDkimAttributesRequest:Lcom/amazonaws/services/simpleemail/model/GetIdentityDkimAttributesRequest;

    invoke-interface {v2, v3, v1}, Lcom/amazonaws/handlers/AsyncHandler;->onSuccess(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/Object;)V

    .line 889
    return-object v1

    .line 884
    .end local v1    # "result":Lcom/amazonaws/services/simpleemail/model/GetIdentityDkimAttributesResult;
    :catch_0
    move-exception v0

    .line 885
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient$14;->val$asyncHandler:Lcom/amazonaws/handlers/AsyncHandler;

    invoke-interface {v2, v0}, Lcom/amazonaws/handlers/AsyncHandler;->onError(Ljava/lang/Exception;)V

    .line 886
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
    .line 879
    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient$14;->call()Lcom/amazonaws/services/simpleemail/model/GetIdentityDkimAttributesResult;

    move-result-object v0

    return-object v0
.end method
