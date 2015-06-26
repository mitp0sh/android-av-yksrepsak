.class public Lcom/amazonaws/services/elasticloadbalancing/model/transform/ConfigureHealthCheckRequestMarshaller;
.super Ljava/lang/Object;
.source "ConfigureHealthCheckRequestMarshaller.java"

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
        "Lcom/amazonaws/services/elasticloadbalancing/model/ConfigureHealthCheckRequest;",
        ">;",
        "Lcom/amazonaws/services/elasticloadbalancing/model/ConfigureHealthCheckRequest;",
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
.method public marshall(Lcom/amazonaws/services/elasticloadbalancing/model/ConfigureHealthCheckRequest;)Lcom/amazonaws/Request;
    .locals 4
    .param p1, "configureHealthCheckRequest"    # Lcom/amazonaws/services/elasticloadbalancing/model/ConfigureHealthCheckRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/elasticloadbalancing/model/ConfigureHealthCheckRequest;",
            ")",
            "Lcom/amazonaws/Request",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/ConfigureHealthCheckRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    if-nez p1, :cond_0

    .line 36
    new-instance v2, Lcom/amazonaws/AmazonClientException;

    const-string v3, "Invalid argument passed to marshall(...)"

    invoke-direct {v2, v3}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 39
    :cond_0
    new-instance v1, Lcom/amazonaws/DefaultRequest;

    const-string v2, "AmazonElasticLoadBalancing"

    invoke-direct {v1, p1, v2}, Lcom/amazonaws/DefaultRequest;-><init>(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)V

    .line 40
    .local v1, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/elasticloadbalancing/model/ConfigureHealthCheckRequest;>;"
    const-string v2, "Action"

    const-string v3, "ConfigureHealthCheck"

    invoke-interface {v1, v2, v3}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v2, "Version"

    const-string v3, "2012-06-01"

    invoke-interface {v1, v2, v3}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1}, Lcom/amazonaws/services/elasticloadbalancing/model/ConfigureHealthCheckRequest;->getLoadBalancerName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 44
    const-string v2, "LoadBalancerName"

    invoke-virtual {p1}, Lcom/amazonaws/services/elasticloadbalancing/model/ConfigureHealthCheckRequest;->getLoadBalancerName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/services/elasticloadbalancing/model/ConfigureHealthCheckRequest;->getHealthCheck()Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;

    move-result-object v0

    .line 47
    .local v0, "healthCheckHealthCheck":Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;
    if-eqz v0, :cond_6

    .line 48
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;->getTarget()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 49
    const-string v2, "HealthCheck.Target"

    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;->getTarget()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;->getInterval()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 52
    const-string v2, "HealthCheck.Interval"

    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;->getInterval()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lcom/amazonaws/util/StringUtils;->fromInteger(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;->getTimeout()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 55
    const-string v2, "HealthCheck.Timeout"

    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;->getTimeout()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lcom/amazonaws/util/StringUtils;->fromInteger(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :cond_4
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;->getUnhealthyThreshold()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 58
    const-string v2, "HealthCheck.UnhealthyThreshold"

    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;->getUnhealthyThreshold()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lcom/amazonaws/util/StringUtils;->fromInteger(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :cond_5
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;->getHealthyThreshold()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 61
    const-string v2, "HealthCheck.HealthyThreshold"

    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/HealthCheck;->getHealthyThreshold()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lcom/amazonaws/util/StringUtils;->fromInteger(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_6
    return-object v1
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
    check-cast p1, Lcom/amazonaws/services/elasticloadbalancing/model/ConfigureHealthCheckRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/ConfigureHealthCheckRequestMarshaller;->marshall(Lcom/amazonaws/services/elasticloadbalancing/model/ConfigureHealthCheckRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    return-object v0
.end method
