.class public Lcom/amazonaws/services/elasticloadbalancing/model/transform/CreateLoadBalancerRequestMarshaller;
.super Ljava/lang/Object;
.source "CreateLoadBalancerRequestMarshaller.java"

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
        "Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;",
        ">;",
        "Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;",
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
.method public marshall(Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;)Lcom/amazonaws/Request;
    .locals 19
    .param p1, "createLoadBalancerRequest"    # Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;",
            ")",
            "Lcom/amazonaws/Request",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    if-nez p1, :cond_0

    .line 36
    new-instance v17, Lcom/amazonaws/AmazonClientException;

    const-string v18, "Invalid argument passed to marshall(...)"

    invoke-direct/range {v17 .. v18}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 39
    :cond_0
    new-instance v10, Lcom/amazonaws/DefaultRequest;

    const-string v17, "AmazonElasticLoadBalancing"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-direct {v10, v0, v1}, Lcom/amazonaws/DefaultRequest;-><init>(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)V

    .line 40
    .local v10, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;>;"
    const-string v17, "Action"

    const-string v18, "CreateLoadBalancer"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v10, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v17, "Version"

    const-string v18, "2012-06-01"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v10, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getLoadBalancerName()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_1

    .line 44
    const-string v17, "LoadBalancerName"

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getLoadBalancerName()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v10, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getListeners()Ljava/util/List;

    move-result-object v7

    .line 48
    .local v7, "listenersList":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/elasticloadbalancing/model/Listener;>;"
    const/4 v8, 0x1

    .line 50
    .local v8, "listenersListIndex":I
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/amazonaws/services/elasticloadbalancing/model/Listener;

    .line 51
    .local v9, "listenersListValue":Lcom/amazonaws/services/elasticloadbalancing/model/Listener;
    move-object v6, v9

    .line 52
    .local v6, "listenerMember":Lcom/amazonaws/services/elasticloadbalancing/model/Listener;
    if-eqz v6, :cond_6

    .line 53
    invoke-virtual {v6}, Lcom/amazonaws/services/elasticloadbalancing/model/Listener;->getProtocol()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_2

    .line 54
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Listeners.member."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ".Protocol"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v6}, Lcom/amazonaws/services/elasticloadbalancing/model/Listener;->getProtocol()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v10, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :cond_2
    invoke-virtual {v6}, Lcom/amazonaws/services/elasticloadbalancing/model/Listener;->getLoadBalancerPort()Ljava/lang/Integer;

    move-result-object v17

    if-eqz v17, :cond_3

    .line 57
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Listeners.member."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ".LoadBalancerPort"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v6}, Lcom/amazonaws/services/elasticloadbalancing/model/Listener;->getLoadBalancerPort()Ljava/lang/Integer;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/amazonaws/util/StringUtils;->fromInteger(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v10, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :cond_3
    invoke-virtual {v6}, Lcom/amazonaws/services/elasticloadbalancing/model/Listener;->getInstanceProtocol()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_4

    .line 60
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Listeners.member."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ".InstanceProtocol"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v6}, Lcom/amazonaws/services/elasticloadbalancing/model/Listener;->getInstanceProtocol()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v10, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :cond_4
    invoke-virtual {v6}, Lcom/amazonaws/services/elasticloadbalancing/model/Listener;->getInstancePort()Ljava/lang/Integer;

    move-result-object v17

    if-eqz v17, :cond_5

    .line 63
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Listeners.member."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ".InstancePort"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v6}, Lcom/amazonaws/services/elasticloadbalancing/model/Listener;->getInstancePort()Ljava/lang/Integer;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/amazonaws/util/StringUtils;->fromInteger(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v10, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :cond_5
    invoke-virtual {v6}, Lcom/amazonaws/services/elasticloadbalancing/model/Listener;->getSSLCertificateId()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_6

    .line 66
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Listeners.member."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ".SSLCertificateId"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v6}, Lcom/amazonaws/services/elasticloadbalancing/model/Listener;->getSSLCertificateId()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v10, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :cond_6
    add-int/lit8 v8, v8, 0x1

    .line 71
    goto/16 :goto_0

    .line 73
    .end local v6    # "listenerMember":Lcom/amazonaws/services/elasticloadbalancing/model/Listener;
    .end local v9    # "listenersListValue":Lcom/amazonaws/services/elasticloadbalancing/model/Listener;
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getAvailabilityZones()Ljava/util/List;

    move-result-object v2

    .line 74
    .local v2, "availabilityZonesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x1

    .line 76
    .local v3, "availabilityZonesListIndex":I
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 77
    .local v4, "availabilityZonesListValue":Ljava/lang/String;
    if-eqz v4, :cond_8

    .line 78
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "AvailabilityZones.member."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static {v4}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v10, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 84
    .end local v4    # "availabilityZonesListValue":Ljava/lang/String;
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getSubnets()Ljava/util/List;

    move-result-object v14

    .line 85
    .local v14, "subnetsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v15, 0x1

    .line 87
    .local v15, "subnetsListIndex":I
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 88
    .local v16, "subnetsListValue":Ljava/lang/String;
    if-eqz v16, :cond_a

    .line 89
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Subnets.member."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v16}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v10, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_a
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 95
    .end local v16    # "subnetsListValue":Ljava/lang/String;
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getSecurityGroups()Ljava/util/List;

    move-result-object v11

    .line 96
    .local v11, "securityGroupsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v12, 0x1

    .line 98
    .local v12, "securityGroupsListIndex":I
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 99
    .local v13, "securityGroupsListValue":Ljava/lang/String;
    if-eqz v13, :cond_c

    .line 100
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "SecurityGroups.member."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static {v13}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v10, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :cond_c
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 105
    .end local v13    # "securityGroupsListValue":Ljava/lang/String;
    :cond_d
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getScheme()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_e

    .line 106
    const-string v17, "Scheme"

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getScheme()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v10, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :cond_e
    return-object v10
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
    check-cast p1, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/CreateLoadBalancerRequestMarshaller;->marshall(Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    return-object v0
.end method
