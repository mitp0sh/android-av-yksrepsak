.class Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$21;
.super Ljava/lang/Object;
.source "AmazonSNSAsyncClient.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;->getSubscriptionAttributesAsync(Lcom/amazonaws/services/sns/model/GetSubscriptionAttributesRequest;)Ljava/util/concurrent/Future;
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
        "Lcom/amazonaws/services/sns/model/GetSubscriptionAttributesResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;

.field final synthetic val$getSubscriptionAttributesRequest:Lcom/amazonaws/services/sns/model/GetSubscriptionAttributesRequest;


# direct methods
.method constructor <init>(Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;Lcom/amazonaws/services/sns/model/GetSubscriptionAttributesRequest;)V
    .locals 0

    .prologue
    .line 1054
    iput-object p1, p0, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$21;->this$0:Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;

    iput-object p2, p0, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$21;->val$getSubscriptionAttributesRequest:Lcom/amazonaws/services/sns/model/GetSubscriptionAttributesRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/amazonaws/services/sns/model/GetSubscriptionAttributesResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1056
    iget-object v0, p0, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$21;->this$0:Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;

    iget-object v1, p0, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$21;->val$getSubscriptionAttributesRequest:Lcom/amazonaws/services/sns/model/GetSubscriptionAttributesRequest;

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;->getSubscriptionAttributes(Lcom/amazonaws/services/sns/model/GetSubscriptionAttributesRequest;)Lcom/amazonaws/services/sns/model/GetSubscriptionAttributesResult;

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
    .line 1054
    invoke-virtual {p0}, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$21;->call()Lcom/amazonaws/services/sns/model/GetSubscriptionAttributesResult;

    move-result-object v0

    return-object v0
.end method
