.class Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient$36;
.super Ljava/lang/Object;
.source "AmazonSimpleEmailServiceAsyncClient.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient;->setIdentityNotificationTopicAsync(Lcom/amazonaws/services/simpleemail/model/SetIdentityNotificationTopicRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
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
        "Lcom/amazonaws/services/simpleemail/model/SetIdentityNotificationTopicResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient;

.field final synthetic val$asyncHandler:Lcom/amazonaws/handlers/AsyncHandler;

.field final synthetic val$setIdentityNotificationTopicRequest:Lcom/amazonaws/services/simpleemail/model/SetIdentityNotificationTopicRequest;


# direct methods
.method constructor <init>(Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient;Lcom/amazonaws/services/simpleemail/model/SetIdentityNotificationTopicRequest;Lcom/amazonaws/handlers/AsyncHandler;)V
    .locals 0

    .prologue
    .line 1900
    iput-object p1, p0, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient$36;->this$0:Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient;

    iput-object p2, p0, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient$36;->val$setIdentityNotificationTopicRequest:Lcom/amazonaws/services/simpleemail/model/SetIdentityNotificationTopicRequest;

    iput-object p3, p0, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient$36;->val$asyncHandler:Lcom/amazonaws/handlers/AsyncHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/amazonaws/services/simpleemail/model/SetIdentityNotificationTopicResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1904
    :try_start_0
    iget-object v2, p0, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient$36;->this$0:Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient;

    iget-object v3, p0, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient$36;->val$setIdentityNotificationTopicRequest:Lcom/amazonaws/services/simpleemail/model/SetIdentityNotificationTopicRequest;

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient;->setIdentityNotificationTopic(Lcom/amazonaws/services/simpleemail/model/SetIdentityNotificationTopicRequest;)Lcom/amazonaws/services/simpleemail/model/SetIdentityNotificationTopicResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1909
    .local v1, "result":Lcom/amazonaws/services/simpleemail/model/SetIdentityNotificationTopicResult;
    iget-object v2, p0, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient$36;->val$asyncHandler:Lcom/amazonaws/handlers/AsyncHandler;

    iget-object v3, p0, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient$36;->val$setIdentityNotificationTopicRequest:Lcom/amazonaws/services/simpleemail/model/SetIdentityNotificationTopicRequest;

    invoke-interface {v2, v3, v1}, Lcom/amazonaws/handlers/AsyncHandler;->onSuccess(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/Object;)V

    .line 1910
    return-object v1

    .line 1905
    .end local v1    # "result":Lcom/amazonaws/services/simpleemail/model/SetIdentityNotificationTopicResult;
    :catch_0
    move-exception v0

    .line 1906
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient$36;->val$asyncHandler:Lcom/amazonaws/handlers/AsyncHandler;

    invoke-interface {v2, v0}, Lcom/amazonaws/handlers/AsyncHandler;->onError(Ljava/lang/Exception;)V

    .line 1907
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
    .line 1900
    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient$36;->call()Lcom/amazonaws/services/simpleemail/model/SetIdentityNotificationTopicResult;

    move-result-object v0

    return-object v0
.end method
