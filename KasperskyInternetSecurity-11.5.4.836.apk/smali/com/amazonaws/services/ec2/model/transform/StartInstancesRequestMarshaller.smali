.class public Lcom/amazonaws/services/ec2/model/transform/StartInstancesRequestMarshaller;
.super Ljava/lang/Object;
.source "StartInstancesRequestMarshaller.java"

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
        "Lcom/amazonaws/services/ec2/model/StartInstancesRequest;",
        ">;",
        "Lcom/amazonaws/services/ec2/model/StartInstancesRequest;",
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
.method public marshall(Lcom/amazonaws/services/ec2/model/StartInstancesRequest;)Lcom/amazonaws/Request;
    .locals 7
    .param p1, "startInstancesRequest"    # Lcom/amazonaws/services/ec2/model/StartInstancesRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/StartInstancesRequest;",
            ")",
            "Lcom/amazonaws/Request",
            "<",
            "Lcom/amazonaws/services/ec2/model/StartInstancesRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    if-nez p1, :cond_0

    .line 36
    new-instance v5, Lcom/amazonaws/AmazonClientException;

    const-string v6, "Invalid argument passed to marshall(...)"

    invoke-direct {v5, v6}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 39
    :cond_0
    new-instance v4, Lcom/amazonaws/DefaultRequest;

    const-string v5, "AmazonEC2"

    invoke-direct {v4, p1, v5}, Lcom/amazonaws/DefaultRequest;-><init>(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)V

    .line 40
    .local v4, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/ec2/model/StartInstancesRequest;>;"
    const-string v5, "Action"

    const-string v6, "StartInstances"

    invoke-interface {v4, v5, v6}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v5, "Version"

    const-string v6, "2013-02-01"

    invoke-interface {v4, v5, v6}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/StartInstancesRequest;->getInstanceIds()Ljava/util/List;

    move-result-object v1

    .line 45
    .local v1, "instanceIdsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x1

    .line 47
    .local v2, "instanceIdsListIndex":I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 48
    .local v3, "instanceIdsListValue":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 49
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "InstanceId."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 54
    .end local v3    # "instanceIdsListValue":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/StartInstancesRequest;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 55
    const-string v5, "AdditionalInfo"

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/StartInstancesRequest;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :cond_3
    return-object v4
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
    check-cast p1, Lcom/amazonaws/services/ec2/model/StartInstancesRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/ec2/model/transform/StartInstancesRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/StartInstancesRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    return-object v0
.end method
