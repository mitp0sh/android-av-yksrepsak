.class Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$5;
.super Ljava/lang/Object;
.source "AmazonSNSAsyncClient.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;->subscribeAsync(Lcom/amazonaws/services/sns/model/SubscribeRequest;)Ljava/util/concurrent/Future;
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
        "Lcom/amazonaws/services/sns/model/SubscribeResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;

.field final synthetic val$subscribeRequest:Lcom/amazonaws/services/sns/model/SubscribeRequest;


# direct methods
.method constructor <init>(Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;Lcom/amazonaws/services/sns/model/SubscribeRequest;)V
    .locals 0

    .prologue
    .line 440
    iput-object p1, p0, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$5;->this$0:Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;

    iput-object p2, p0, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$5;->val$subscribeRequest:Lcom/amazonaws/services/sns/model/SubscribeRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/amazonaws/services/sns/model/SubscribeResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 442
    iget-object v0, p0, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$5;->this$0:Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;

    iget-object v1, p0, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$5;->val$subscribeRequest:Lcom/amazonaws/services/sns/model/SubscribeRequest;

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;->subscribe(Lcom/amazonaws/services/sns/model/SubscribeRequest;)Lcom/amazonaws/services/sns/model/SubscribeResult;

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
    .line 440
    invoke-virtual {p0}, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$5;->call()Lcom/amazonaws/services/sns/model/SubscribeResult;

    move-result-object v0

    return-object v0
.end method
