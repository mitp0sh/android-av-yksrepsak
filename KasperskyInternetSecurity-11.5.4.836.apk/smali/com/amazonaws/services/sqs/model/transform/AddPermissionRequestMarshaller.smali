.class public Lcom/amazonaws/services/sqs/model/transform/AddPermissionRequestMarshaller;
.super Ljava/lang/Object;
.source "AddPermissionRequestMarshaller.java"

# interfaces
.implements Lcom/amazonaws/transform/Marshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/transform/Marshaller",
        "<",
        "Lcom/amazonaws/Request",
        "<",
        "Lcom/amazonaws/services/sqs/model/AddPermissionRequest;",
        ">;",
        "Lcom/amazonaws/services/sqs/model/AddPermissionRequest;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public marshall(Lcom/amazonaws/services/sqs/model/AddPermissionRequest;)Lcom/amazonaws/Request;
    .locals 10
    .param p1, "addPermissionRequest"    # Lcom/amazonaws/services/sqs/model/AddPermissionRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/sqs/model/AddPermissionRequest;",
            ")",
            "Lcom/amazonaws/Request",
            "<",
            "Lcom/amazonaws/services/sqs/model/AddPermissionRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    if-nez p1, :cond_0

    .line 36
    new-instance v8, Lcom/amazonaws/AmazonClientException;

    const-string v9, "Invalid argument passed to marshall(...)"

    invoke-direct {v8, v9}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 39
    :cond_0
    new-instance v7, Lcom/amazonaws/DefaultRequest;

    const-string v8, "AmazonSQS"

    invoke-direct {v7, p1, v8}, Lcom/amazonaws/DefaultRequest;-><init>(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)V

    .line 40
    .local v7, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/sqs/model/AddPermissionRequest;>;"
    const-string v8, "Action"

    const-string v9, "AddPermission"

    invoke-interface {v7, v8, v9}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v8, "Version"

    const-string v9, "2012-11-05"

    invoke-interface {v7, v8, v9}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1}, Lcom/amazonaws/services/sqs/model/AddPermissionRequest;->getQueueUrl()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 44
    const-string v8, "QueueUrl"

    invoke-virtual {p1}, Lcom/amazonaws/services/sqs/model/AddPermissionRequest;->getQueueUrl()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/services/sqs/model/AddPermissionRequest;->getLabel()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 47
    const-string v8, "Label"

    invoke-virtual {p1}, Lcom/amazonaws/services/sqs/model/AddPermissionRequest;->getLabel()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :cond_2
    invoke-virtual {p1}, Lcom/amazonaws/services/sqs/model/AddPermissionRequest;->getAWSAccountIds()Ljava/util/List;

    move-result-object v0

    .line 51
    .local v0, "aWSAccountIdsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x1

    .line 53
    .local v1, "aWSAccountIdsListIndex":I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 54
    .local v2, "aWSAccountIdsListValue":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 55
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AWSAccountId."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 61
    .end local v2    # "aWSAccountIdsListValue":Ljava/lang/String;
    :cond_4
    invoke-virtual {p1}, Lcom/amazonaws/services/sqs/model/AddPermissionRequest;->getActions()Ljava/util/List;

    move-result-object v3

    .line 62
    .local v3, "actionsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x1

    .line 64
    .local v4, "actionsListIndex":I
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 65
    .local v5, "actionsListValue":Ljava/lang/String;
    if-eqz v5, :cond_5

    .line 66
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ActionName."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 73
    .end local v5    # "actionsListValue":Ljava/lang/String;
    :cond_6
    return-object v7
.end method

.method public bridge synthetic marshall(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 31
    check-cast p1, Lcom/amazonaws/services/sqs/model/AddPermissionRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/sqs/model/transform/AddPermissionRequestMarshaller;->marshall(Lcom/amazonaws/services/sqs/model/AddPermissionRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    return-object v0
.end method
