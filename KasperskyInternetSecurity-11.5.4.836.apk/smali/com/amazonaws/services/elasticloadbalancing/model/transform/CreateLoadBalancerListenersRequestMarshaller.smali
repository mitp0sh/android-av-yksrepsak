.class public Lcom/amazonaws/services/elasticloadbalancing/model/transform/CreateLoadBalancerListenersRequestMarshaller;
.super Ljava/lang/Object;
.source "CreateLoadBalancerListenersRequestMarshaller.java"

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
        "Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerListenersRequest;",
        ">;",
        "Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerListenersRequest;",
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
.method public marshall(Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerListenersRequest;)Lcom/amazonaws/Request;
    .locals 8
    .param p1, "createLoadBalancerListenersRequest"    # Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerListenersRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerListenersRequest;",
            ")",
            "Lcom/amazonaws/Request",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerListenersRequest;",
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
    .local v5, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerListenersRequest;>;"
    const-string v6, "Action"

    const-string v7, "CreateLoadBalancerListeners"

    invoke-interface {v5, v6, v7}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v6, "Version"

    const-string v7, "2012-06-01"

    invoke-interface {v5, v6, v7}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerListenersRequest;->getLoadBalancerName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 44
    const-string v6, "LoadBalancerName"

    invoke-virtual {p1}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerListenersRequest;->getLoadBalancerName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerListenersRequest;->getListeners()Ljava/util/List;

    move-result-object v2

    .line 48
    .local v2, "listenersList":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/elasticloadbalancing/model/Listener;>;"
    const/4 v3, 0x1

    .line 50
    .local v3, "listenersListIndex":I
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazonaws/services/elasticloadbalancing/model/Listener;

    .line 51
    .local v4, "listenersListValue":Lcom/amazonaws/services/elasticloadbalancing/model/Listener;
    move-object v1, v4

    .line 52
    .local v1, "listenerMember":Lcom/amazonaws/services/elasticloadbalancing/model/Listener;
    if-eqz v1, :cond_6

    .line 53
    invoke-virtual {v1}, Lcom/amazonaws/services/elasticloadbalancing/model/Listener;->getProtocol()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 54
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listeners.member."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".Protocol"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/amazonaws/services/elasticloadbalancing/model/Listener;->getProtocol()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :cond_2
    invoke-virtual {v1}, Lcom/amazonaws/services/elasticloadbalancing/model/Listener;->getLoadBalancerPort()Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 57
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listeners.member."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".LoadBalancerPort"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/amazonaws/services/elasticloadbalancing/model/Listener;->getLoadBalancerPort()Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v7}, Lcom/amazonaws/util/StringUtils;->fromInteger(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :cond_3
    invoke-virtual {v1}, Lcom/amazonaws/services/elasticloadbalancing/model/Listener;->getInstanceProtocol()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 60
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listeners.member."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".InstanceProtocol"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/amazonaws/services/elasticloadbalancing/model/Listener;->getInstanceProtocol()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :cond_4
    invoke-virtual {v1}, Lcom/amazonaws/services/elasticloadbalancing/model/Listener;->getInstancePort()Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 63
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listeners.member."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".InstancePort"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/amazonaws/services/elasticloadbalancing/model/Listener;->getInstancePort()Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v7}, Lcom/amazonaws/util/StringUtils;->fromInteger(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :cond_5
    invoke-virtual {v1}, Lcom/amazonaws/services/elasticloadbalancing/model/Listener;->getSSLCertificateId()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 66
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listeners.member."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".SSLCertificateId"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/amazonaws/services/elasticloadbalancing/model/Listener;->getSSLCertificateId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :cond_6
    add-int/lit8 v3, v3, 0x1

    .line 71
    goto/16 :goto_0

    .line 74
    .end local v1    # "listenerMember":Lcom/amazonaws/services/elasticloadbalancing/model/Listener;
    .end local v4    # "listenersListValue":Lcom/amazonaws/services/elasticloadbalancing/model/Listener;
    :cond_7
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
    check-cast p1, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerListenersRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/CreateLoadBalancerListenersRequestMarshaller;->marshall(Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerListenersRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    return-object v0
.end method
