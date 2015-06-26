.class Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback;
.super Ljava/lang/Object;
.source "QueueBufferCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RequestType:",
        "Lcom/amazonaws/AmazonWebServiceRequest;",
        "ResultType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final handler:Lcom/amazonaws/handlers/AsyncHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<TRequestType;TResultType;>;"
        }
    .end annotation
.end field

.field private final request:Lcom/amazonaws/AmazonWebServiceRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TRequestType;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazonaws/handlers/AsyncHandler;Lcom/amazonaws/AmazonWebServiceRequest;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<TRequestType;TResultType;>;TRequestType;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "this":Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback;, "Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback<TRequestType;TResultType;>;"
    .local p1, "paramHandler":Lcom/amazonaws/handlers/AsyncHandler;, "Lcom/amazonaws/handlers/AsyncHandler<TRequestType;TResultType;>;"
    .local p2, "request":Lcom/amazonaws/AmazonWebServiceRequest;, "TRequestType;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback;->handler:Lcom/amazonaws/handlers/AsyncHandler;

    .line 39
    iput-object p2, p0, Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback;->request:Lcom/amazonaws/AmazonWebServiceRequest;

    .line 40
    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 43
    .local p0, "this":Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback;, "Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback<TRequestType;TResultType;>;"
    iget-object v0, p0, Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback;->handler:Lcom/amazonaws/handlers/AsyncHandler;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback;->handler:Lcom/amazonaws/handlers/AsyncHandler;

    invoke-interface {v0, p1}, Lcom/amazonaws/handlers/AsyncHandler;->onError(Ljava/lang/Exception;)V

    .line 45
    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResultType;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "this":Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback;, "Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback<TRequestType;TResultType;>;"
    .local p1, "result":Ljava/lang/Object;, "TResultType;"
    iget-object v0, p0, Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback;->handler:Lcom/amazonaws/handlers/AsyncHandler;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback;->handler:Lcom/amazonaws/handlers/AsyncHandler;

    iget-object v1, p0, Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback;->request:Lcom/amazonaws/AmazonWebServiceRequest;

    invoke-interface {v0, v1, p1}, Lcom/amazonaws/handlers/AsyncHandler;->onSuccess(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/Object;)V

    .line 50
    :cond_0
    return-void
.end method
