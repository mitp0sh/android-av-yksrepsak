.class Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$23;
.super Ljava/lang/Object;
.source "AmazonSNSAsyncClient.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;->listTopicsAsync(Lcom/amazonaws/services/sns/model/ListTopicsRequest;)Ljava/util/concurrent/Future;
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
        "Lcom/amazonaws/services/sns/model/ListTopicsResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;

.field final synthetic val$listTopicsRequest:Lcom/amazonaws/services/sns/model/ListTopicsRequest;


# direct methods
.method constructor <init>(Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;Lcom/amazonaws/services/sns/model/ListTopicsRequest;)V
    .locals 0

    .prologue
    .line 1131
    iput-object p1, p0, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$23;->this$0:Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;

    iput-object p2, p0, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$23;->val$listTopicsRequest:Lcom/amazonaws/services/sns/model/ListTopicsRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/amazonaws/services/sns/model/ListTopicsResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1133
    iget-object v0, p0, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$23;->this$0:Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;

    iget-object v1, p0, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$23;->val$listTopicsRequest:Lcom/amazonaws/services/sns/model/ListTopicsRequest;

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;->listTopics(Lcom/amazonaws/services/sns/model/ListTopicsRequest;)Lcom/amazonaws/services/sns/model/ListTopicsResult;

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
    .line 1131
    invoke-virtual {p0}, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$23;->call()Lcom/amazonaws/services/sns/model/ListTopicsResult;

    move-result-object v0

    return-object v0
.end method
