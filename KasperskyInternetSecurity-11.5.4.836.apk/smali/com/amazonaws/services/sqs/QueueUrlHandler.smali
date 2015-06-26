.class public Lcom/amazonaws/services/sqs/QueueUrlHandler;
.super Lcom/amazonaws/handlers/AbstractRequestHandler;
.source "QueueUrlHandler.java"


# static fields
.field private static final QUEUE_URL_PARAMETER:Ljava/lang/String; = "QueueUrl"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/amazonaws/handlers/AbstractRequestHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public beforeRequest(Lcom/amazonaws/Request;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p1, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<*>;"
    invoke-interface {p1}, Lcom/amazonaws/Request;->getParameters()Ljava/util/Map;

    move-result-object v3

    const-string v4, "QueueUrl"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 37
    invoke-interface {p1}, Lcom/amazonaws/Request;->getParameters()Ljava/util/Map;

    move-result-object v3

    const-string v4, "QueueUrl"

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 40
    .local v1, "queueUrl":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 41
    .local v2, "uri":Ljava/net/URI;
    invoke-virtual {v2}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/amazonaws/Request;->setResourcePath(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .end local v1    # "queueUrl":Ljava/lang/String;
    .end local v2    # "uri":Ljava/net/URI;
    :cond_0
    return-void

    .line 42
    .restart local v1    # "queueUrl":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Ljava/net/URISyntaxException;
    new-instance v3, Lcom/amazonaws/AmazonClientException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to parse SQS queue URL \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method
