.class Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$3;
.super Ljava/lang/Object;
.source "AmazonSNSAsyncClient.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;->getTopicAttributesAsync(Lcom/amazonaws/services/sns/model/GetTopicAttributesRequest;)Ljava/util/concurrent/Future;
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
        "Lcom/amazonaws/services/sns/model/GetTopicAttributesResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;

.field final synthetic val$getTopicAttributesRequest:Lcom/amazonaws/services/sns/model/GetTopicAttributesRequest;


# direct methods
.method constructor <init>(Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;Lcom/amazonaws/services/sns/model/GetTopicAttributesRequest;)V
    .locals 0

    .prologue
    .line 363
    iput-object p1, p0, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$3;->this$0:Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;

    iput-object p2, p0, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$3;->val$getTopicAttributesRequest:Lcom/amazonaws/services/sns/model/GetTopicAttributesRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/amazonaws/services/sns/model/GetTopicAttributesResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 365
    iget-object v0, p0, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$3;->this$0:Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;

    iget-object v1, p0, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$3;->val$getTopicAttributesRequest:Lcom/amazonaws/services/sns/model/GetTopicAttributesRequest;

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;->getTopicAttributes(Lcom/amazonaws/services/sns/model/GetTopicAttributesRequest;)Lcom/amazonaws/services/sns/model/GetTopicAttributesResult;

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
    .line 363
    invoke-virtual {p0}, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$3;->call()Lcom/amazonaws/services/sns/model/GetTopicAttributesResult;

    move-result-object v0

    return-object v0
.end method
