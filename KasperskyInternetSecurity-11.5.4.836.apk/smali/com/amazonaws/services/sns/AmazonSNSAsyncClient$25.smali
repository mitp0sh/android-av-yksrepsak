.class Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$25;
.super Ljava/lang/Object;
.source "AmazonSNSAsyncClient.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;->unsubscribeAsync(Lcom/amazonaws/services/sns/model/UnsubscribeRequest;)Ljava/util/concurrent/Future;
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
.field final synthetic this$0:Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;

.field final synthetic val$unsubscribeRequest:Lcom/amazonaws/services/sns/model/UnsubscribeRequest;


# direct methods
.method constructor <init>(Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;Lcom/amazonaws/services/sns/model/UnsubscribeRequest;)V
    .locals 0

    .prologue
    .line 1213
    iput-object p1, p0, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$25;->this$0:Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;

    iput-object p2, p0, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$25;->val$unsubscribeRequest:Lcom/amazonaws/services/sns/model/UnsubscribeRequest;

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
    .line 1213
    invoke-virtual {p0}, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$25;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1215
    iget-object v0, p0, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$25;->this$0:Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;

    iget-object v1, p0, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$25;->val$unsubscribeRequest:Lcom/amazonaws/services/sns/model/UnsubscribeRequest;

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;->unsubscribe(Lcom/amazonaws/services/sns/model/UnsubscribeRequest;)V

    .line 1216
    const/4 v0, 0x0

    return-object v0
.end method
