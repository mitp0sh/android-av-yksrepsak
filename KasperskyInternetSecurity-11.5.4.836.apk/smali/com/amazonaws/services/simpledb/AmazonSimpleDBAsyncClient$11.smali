.class Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient$11;
.super Ljava/lang/Object;
.source "AmazonSimpleDBAsyncClient.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient;->deleteAttributesAsync(Lcom/amazonaws/services/simpledb/model/DeleteAttributesRequest;)Ljava/util/concurrent/Future;
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
.field final synthetic this$0:Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient;

.field final synthetic val$deleteAttributesRequest:Lcom/amazonaws/services/simpledb/model/DeleteAttributesRequest;


# direct methods
.method constructor <init>(Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient;Lcom/amazonaws/services/simpledb/model/DeleteAttributesRequest;)V
    .locals 0

    .prologue
    .line 888
    iput-object p1, p0, Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient$11;->this$0:Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient;

    iput-object p2, p0, Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient$11;->val$deleteAttributesRequest:Lcom/amazonaws/services/simpledb/model/DeleteAttributesRequest;

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
    .line 888
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient$11;->call()Ljava/lang/Void;

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
    .line 890
    iget-object v0, p0, Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient$11;->this$0:Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient;

    iget-object v1, p0, Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient$11;->val$deleteAttributesRequest:Lcom/amazonaws/services/simpledb/model/DeleteAttributesRequest;

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/simpledb/AmazonSimpleDBAsyncClient;->deleteAttributes(Lcom/amazonaws/services/simpledb/model/DeleteAttributesRequest;)V

    .line 891
    const/4 v0, 0x0

    return-object v0
.end method
