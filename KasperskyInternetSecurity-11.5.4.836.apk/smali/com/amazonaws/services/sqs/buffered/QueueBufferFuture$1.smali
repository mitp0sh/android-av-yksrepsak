.class Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture$1;
.super Ljava/lang/Object;
.source "QueueBufferFuture.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;->setSuccess(Ljava/lang/Object;)V
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
.field final synthetic this$0:Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;


# direct methods
.method constructor <init>(Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;)V
    .locals 0

    .prologue
    .line 75
    .local p0, "this":Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture$1;, "Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture.1;"
    iput-object p1, p0, Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture$1;->this$0:Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;

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
    .line 75
    .local p0, "this":Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture$1;, "Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture.1;"
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture$1;->call()Ljava/lang/Void;

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
    .line 77
    .local p0, "this":Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture$1;, "Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture.1;"
    iget-object v0, p0, Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture$1;->this$0:Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;

    # getter for: Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;->callback:Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback;
    invoke-static {v0}, Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;->access$100(Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;)Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture$1;->this$0:Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;

    # getter for: Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;->result:Ljava/lang/Object;
    invoke-static {v1}, Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;->access$000(Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback;->onSuccess(Ljava/lang/Object;)V

    .line 78
    const/4 v0, 0x0

    return-object v0
.end method
