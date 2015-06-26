.class Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient$28;
.super Ljava/lang/Object;
.source "AmazonSimpleEmailServiceAsyncClient.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient;->setIdentityFeedbackForwardingEnabledAsync(Lcom/amazonaws/services/simpleemail/model/SetIdentityFeedbackForwardingEnabledRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
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
        "Lcom/amazonaws/services/simpleemail/model/SetIdentityFeedbackForwardingEnabledResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient;

.field final synthetic val$asyncHandler:Lcom/amazonaws/handlers/AsyncHandler;

.field final synthetic val$setIdentityFeedbackForwardingEnabledRequest:Lcom/amazonaws/services/simpleemail/model/SetIdentityFeedbackForwardingEnabledRequest;


# direct methods
.method constructor <init>(Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient;Lcom/amazonaws/services/simpleemail/model/SetIdentityFeedbackForwardingEnabledRequest;Lcom/amazonaws/handlers/AsyncHandler;)V
    .locals 0

    .prologue
    .line 1526
    iput-object p1, p0, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient$28;->this$0:Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient;

    iput-object p2, p0, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient$28;->val$setIdentityFeedbackForwardingEnabledRequest:Lcom/amazonaws/services/simpleemail/model/SetIdentityFeedbackForwardingEnabledRequest;

    iput-object p3, p0, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient$28;->val$asyncHandler:Lcom/amazonaws/handlers/AsyncHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/amazonaws/services/simpleemail/model/SetIdentityFeedbackForwardingEnabledResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1530
    :try_start_0
    iget-object v2, p0, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient$28;->this$0:Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient;

    iget-object v3, p0, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient$28;->val$setIdentityFeedbackForwardingEnabledRequest:Lcom/amazonaws/services/simpleemail/model/SetIdentityFeedbackForwardingEnabledRequest;

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient;->setIdentityFeedbackForwardingEnabled(Lcom/amazonaws/services/simpleemail/model/SetIdentityFeedbackForwardingEnabledRequest;)Lcom/amazonaws/services/simpleemail/model/SetIdentityFeedbackForwardingEnabledResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1535
    .local v1, "result":Lcom/amazonaws/services/simpleemail/model/SetIdentityFeedbackForwardingEnabledResult;
    iget-object v2, p0, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient$28;->val$asyncHandler:Lcom/amazonaws/handlers/AsyncHandler;

    iget-object v3, p0, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient$28;->val$setIdentityFeedbackForwardingEnabledRequest:Lcom/amazonaws/services/simpleemail/model/SetIdentityFeedbackForwardingEnabledRequest;

    invoke-interface {v2, v3, v1}, Lcom/amazonaws/handlers/AsyncHandler;->onSuccess(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/Object;)V

    .line 1536
    return-object v1

    .line 1531
    .end local v1    # "result":Lcom/amazonaws/services/simpleemail/model/SetIdentityFeedbackForwardingEnabledResult;
    :catch_0
    move-exception v0

    .line 1532
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient$28;->val$asyncHandler:Lcom/amazonaws/handlers/AsyncHandler;

    invoke-interface {v2, v0}, Lcom/amazonaws/handlers/AsyncHandler;->onError(Ljava/lang/Exception;)V

    .line 1533
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
    .line 1526
    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient$28;->call()Lcom/amazonaws/services/simpleemail/model/SetIdentityFeedbackForwardingEnabledResult;

    move-result-object v0

    return-object v0
.end method
