.class Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceAsyncClient$6;
.super Ljava/lang/Object;
.source "AWSSecurityTokenServiceAsyncClient.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceAsyncClient;->assumeRoleAsync(Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
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
        "Lcom/amazonaws/services/securitytoken/model/AssumeRoleResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceAsyncClient;

.field final synthetic val$assumeRoleRequest:Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;

.field final synthetic val$asyncHandler:Lcom/amazonaws/handlers/AsyncHandler;


# direct methods
.method constructor <init>(Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceAsyncClient;Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;Lcom/amazonaws/handlers/AsyncHandler;)V
    .locals 0

    .prologue
    .line 616
    iput-object p1, p0, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceAsyncClient$6;->this$0:Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceAsyncClient;

    iput-object p2, p0, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceAsyncClient$6;->val$assumeRoleRequest:Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;

    iput-object p3, p0, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceAsyncClient$6;->val$asyncHandler:Lcom/amazonaws/handlers/AsyncHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/amazonaws/services/securitytoken/model/AssumeRoleResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 620
    :try_start_0
    iget-object v2, p0, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceAsyncClient$6;->this$0:Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceAsyncClient;

    iget-object v3, p0, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceAsyncClient$6;->val$assumeRoleRequest:Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceAsyncClient;->assumeRole(Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;)Lcom/amazonaws/services/securitytoken/model/AssumeRoleResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 625
    .local v1, "result":Lcom/amazonaws/services/securitytoken/model/AssumeRoleResult;
    iget-object v2, p0, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceAsyncClient$6;->val$asyncHandler:Lcom/amazonaws/handlers/AsyncHandler;

    iget-object v3, p0, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceAsyncClient$6;->val$assumeRoleRequest:Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;

    invoke-interface {v2, v3, v1}, Lcom/amazonaws/handlers/AsyncHandler;->onSuccess(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/Object;)V

    .line 626
    return-object v1

    .line 621
    .end local v1    # "result":Lcom/amazonaws/services/securitytoken/model/AssumeRoleResult;
    :catch_0
    move-exception v0

    .line 622
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceAsyncClient$6;->val$asyncHandler:Lcom/amazonaws/handlers/AsyncHandler;

    invoke-interface {v2, v0}, Lcom/amazonaws/handlers/AsyncHandler;->onError(Ljava/lang/Exception;)V

    .line 623
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
    .line 616
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/AWSSecurityTokenServiceAsyncClient$6;->call()Lcom/amazonaws/services/securitytoken/model/AssumeRoleResult;

    move-result-object v0

    return-object v0
.end method
