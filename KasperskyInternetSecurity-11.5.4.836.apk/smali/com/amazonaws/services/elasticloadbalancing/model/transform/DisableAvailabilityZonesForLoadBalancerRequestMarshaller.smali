.class public Lcom/amazonaws/services/elasticloadbalancing/model/transform/DisableAvailabilityZonesForLoadBalancerRequestMarshaller;
.super Ljava/lang/Object;
.source "DisableAvailabilityZonesForLoadBalancerRequestMarshaller.java"

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
        "Lcom/amazonaws/services/elasticloadbalancing/model/DisableAvailabilityZonesForLoadBalancerRequest;",
        ">;",
        "Lcom/amazonaws/services/elasticloadbalancing/model/DisableAvailabilityZonesForLoadBalancerRequest;",
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
.method public marshall(Lcom/amazonaws/services/elasticloadbalancing/model/DisableAvailabilityZonesForLoadBalancerRequest;)Lcom/amazonaws/Request;
    .locals 7
    .param p1, "disableAvailabilityZonesForLoadBalancerRequest"    # Lcom/amazonaws/services/elasticloadbalancing/model/DisableAvailabilityZonesForLoadBalancerRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/elasticloadbalancing/model/DisableAvailabilityZonesForLoadBalancerRequest;",
            ")",
            "Lcom/amazonaws/Request",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/DisableAvailabilityZonesForLoadBalancerRequest;",
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

    const-string v5, "AmazonElasticLoadBalancing"

    invoke-direct {v4, p1, v5}, Lcom/amazonaws/DefaultRequest;-><init>(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)V

    .line 40
    .local v4, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/elasticloadbalancing/model/DisableAvailabilityZonesForLoadBalancerRequest;>;"
    const-string v5, "Action"

    const-string v6, "DisableAvailabilityZonesForLoadBalancer"

    invoke-interface {v4, v5, v6}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v5, "Version"

    const-string v6, "2012-06-01"

    invoke-interface {v4, v5, v6}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1}, Lcom/amazonaws/services/elasticloadbalancing/model/DisableAvailabilityZonesForLoadBalancerRequest;->getLoadBalancerName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 44
    const-string v5, "LoadBalancerName"

    invoke-virtual {p1}, Lcom/amazonaws/services/elasticloadbalancing/model/DisableAvailabilityZonesForLoadBalancerRequest;->getLoadBalancerName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/services/elasticloadbalancing/model/DisableAvailabilityZonesForLoadBalancerRequest;->getAvailabilityZones()Ljava/util/List;

    move-result-object v0

    .line 48
    .local v0, "availabilityZonesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x1

    .line 50
    .local v1, "availabilityZonesListIndex":I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 51
    .local v2, "availabilityZonesListValue":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 52
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AvailabilityZones.member."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 59
    .end local v2    # "availabilityZonesListValue":Ljava/lang/String;
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
    check-cast p1, Lcom/amazonaws/services/elasticloadbalancing/model/DisableAvailabilityZonesForLoadBalancerRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/DisableAvailabilityZonesForLoadBalancerRequestMarshaller;->marshall(Lcom/amazonaws/services/elasticloadbalancing/model/DisableAvailabilityZonesForLoadBalancerRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    return-object v0
.end method
