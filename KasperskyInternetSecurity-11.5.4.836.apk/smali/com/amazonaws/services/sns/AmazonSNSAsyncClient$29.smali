.class Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$29;
.super Ljava/lang/Object;
.source "AmazonSNSAsyncClient.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;->publishAsync(Lcom/amazonaws/services/sns/model/PublishRequest;)Ljava/util/concurrent/Future;
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
        "Lcom/amazonaws/services/sns/model/PublishResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;

.field final synthetic val$publishRequest:Lcom/amazonaws/services/sns/model/PublishRequest;


# direct methods
.method constructor <init>(Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;Lcom/amazonaws/services/sns/model/PublishRequest;)V
    .locals 0

    .prologue
    .line 1379
    iput-object p1, p0, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$29;->this$0:Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;

    iput-object p2, p0, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$29;->val$publishRequest:Lcom/amazonaws/services/sns/model/PublishRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/amazonaws/services/sns/model/PublishResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1381
    iget-object v0, p0, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$29;->this$0:Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;

    iget-object v1, p0, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$29;->val$publishRequest:Lcom/amazonaws/services/sns/model/PublishRequest;

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;->publish(Lcom/amazonaws/services/sns/model/PublishRequest;)Lcom/amazonaws/services/sns/model/PublishResult;

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
    .line 1379
    invoke-virtual {p0}, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$29;->call()Lcom/amazonaws/services/sns/model/PublishResult;

    move-result-object v0

    return-object v0
.end method
