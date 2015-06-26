.class public Lcom/amazonaws/services/elasticloadbalancing/model/transform/DeregisterInstancesFromLoadBalancerRequestMarshaller;
.super Ljava/lang/Object;
.source "DeregisterInstancesFromLoadBalancerRequestMarshaller.java"

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
        "Lcom/amazonaws/services/elasticloadbalancing/model/DeregisterInstancesFromLoadBalancerRequest;",
        ">;",
        "Lcom/amazonaws/services/elasticloadbalancing/model/DeregisterInstancesFromLoadBalancerRequest;",
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
.method public marshall(Lcom/amazonaws/services/elasticloadbalancing/model/DeregisterInstancesFromLoadBalancerRequest;)Lcom/amazonaws/Request;
    .locals 8
    .param p1, "deregisterInstancesFromLoadBalancerRequest"    # Lcom/amazonaws/services/elasticloadbalancing/model/DeregisterInstancesFromLoadBalancerRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/elasticloadbalancing/model/DeregisterInstancesFromLoadBalancerRequest;",
            ")",
            "Lcom/amazonaws/Request",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/DeregisterInstancesFromLoadBalancerRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    if-nez p1, :cond_0

    .line 36
    new-instance v6, Lcom/amazonaws/AmazonClientException;

    const-string v7, "Invalid argument passed to marshall(...)"

    invoke-direct {v6, v7}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 39
    :cond_0
    new-instance v5, Lcom/amazonaws/DefaultRequest;

    const-string v6, "AmazonElasticLoadBalancing"

    invoke-direct {v5, p1, v6}, Lcom/amazonaws/DefaultRequest;-><init>(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)V

    .line 40
    .local v5, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/elasticloadbalancing/model/DeregisterInstancesFromLoadBalancerRequest;>;"
    const-string v6, "Action"

    const-string v7, "DeregisterInstancesFromLoadBalancer"

    invoke-interface {v5, v6, v7}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v6, "Version"

    const-string v7, "2012-06-01"

    invoke-interface {v5, v6, v7}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1}, Lcom/amazonaws/services/elasticloadbalancing/model/DeregisterInstancesFromLoadBalancerRequest;->getLoadBalancerName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 44
    const-string v6, "LoadBalancerName"

    invoke-virtual {p1}, Lcom/amazonaws/services/elasticloadbalancing/model/DeregisterInstancesFromLoadBalancerRequest;->getLoadBalancerName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/services/elasticloadbalancing/model/DeregisterInstancesFromLoadBalancerRequest;->getInstances()Ljava/util/List;

    move-result-object v2

    .line 48
    .local v2, "instancesList":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/elasticloadbalancing/model/Instance;>;"
    const/4 v3, 0x1

    .line 50
    .local v3, "instancesListIndex":I
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazonaws/services/elasticloadbalancing/model/Instance;

    .line 51
    .local v4, "instancesListValue":Lcom/amazonaws/services/elasticloadbalancing/model/Instance;
    move-object v1, v4

    .line 52
    .local v1, "instanceMember":Lcom/amazonaws/services/elasticloadbalancing/model/Instance;
    if-eqz v1, :cond_2

    .line 53
    invoke-virtual {v1}, Lcom/amazonaws/services/elasticloadbalancing/model/Instance;->getInstanceId()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 54
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Instances.member."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".InstanceId"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/amazonaws/services/elasticloadbalancing/model/Instance;->getInstanceId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 59
    goto :goto_0

    .line 62
    .end local v1    # "instanceMember":Lcom/amazonaws/services/elasticloadbalancing/model/Instance;
    .end local v4    # "instancesListValue":Lcom/amazonaws/services/elasticloadbalancing/model/Instance;
    :cond_3
    return-object v5
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
    check-cast p1, Lcom/amazonaws/services/elasticloadbalancing/model/DeregisterInstancesFromLoadBalancerRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/DeregisterInstancesFromLoadBalancerRequestMarshaller;->marshall(Lcom/amazonaws/services/elasticloadbalancing/model/DeregisterInstancesFromLoadBalancerRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    return-object v0
.end method
