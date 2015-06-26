.class public Lcom/amazonaws/services/autoscaling/model/transform/CreateAutoScalingGroupRequestMarshaller;
.super Ljava/lang/Object;
.source "CreateAutoScalingGroupRequestMarshaller.java"

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
        "Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;",
        ">;",
        "Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;",
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
.method public marshall(Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;)Lcom/amazonaws/Request;
    .locals 19
    .param p1, "createAutoScalingGroupRequest"    # Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;",
            ")",
            "Lcom/amazonaws/Request",
            "<",
            "Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;",
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
    new-instance v9, Lcom/amazonaws/DefaultRequest;

    const-string v17, "AmazonAutoScaling"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-direct {v9, v0, v1}, Lcom/amazonaws/DefaultRequest;-><init>(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)V

    .line 40
    .local v9, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;>;"
    const-string v17, "Action"

    const-string v18, "CreateAutoScalingGroup"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v9, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v17, "Version"

    const-string v18, "2011-01-01"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v9, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_1

    .line 44
    const-string v17, "AutoScalingGroupName"

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v9, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getLaunchConfigurationName()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_2

    .line 47
    const-string v17, "LaunchConfigurationName"

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getLaunchConfigurationName()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v9, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getMinSize()Ljava/lang/Integer;

    move-result-object v17

    if-eqz v17, :cond_3

    .line 50
    const-string v17, "MinSize"

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getMinSize()Ljava/lang/Integer;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/amazonaws/util/StringUtils;->fromInteger(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v9, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getMaxSize()Ljava/lang/Integer;

    move-result-object v17

    if-eqz v17, :cond_4

    .line 53
    const-string v17, "MaxSize"

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getMaxSize()Ljava/lang/Integer;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/amazonaws/util/StringUtils;->fromInteger(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v9, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getDesiredCapacity()Ljava/lang/Integer;

    move-result-object v17

    if-eqz v17, :cond_5

    .line 56
    const-string v17, "DesiredCapacity"

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getDesiredCapacity()Ljava/lang/Integer;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/amazonaws/util/StringUtils;->fromInteger(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v9, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getDefaultCooldown()Ljava/lang/Integer;

    move-result-object v17

    if-eqz v17, :cond_6

    .line 59
    const-string v17, "DefaultCooldown"

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getDefaultCooldown()Ljava/lang/Integer;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/amazonaws/util/StringUtils;->fromInteger(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v9, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getAvailabilityZones()Ljava/util/List;

    move-result-object v2

    .line 63
    .local v2, "availabilityZonesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x1

    .line 65
    .local v3, "availabilityZonesListIndex":I
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 66
    .local v4, "availabilityZonesListValue":Ljava/lang/String;
    if-eqz v4, :cond_7

    .line 67
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

    invoke-interface {v9, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 73
    .end local v4    # "availabilityZonesListValue":Ljava/lang/String;
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getLoadBalancerNames()Ljava/util/List;

    move-result-object v6

    .line 74
    .local v6, "loadBalancerNamesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x1

    .line 76
    .local v7, "loadBalancerNamesListIndex":I
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 77
    .local v8, "loadBalancerNamesListValue":Ljava/lang/String;
    if-eqz v8, :cond_9

    .line 78
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "LoadBalancerNames.member."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static {v8}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v9, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 83
    .end local v8    # "loadBalancerNamesListValue":Ljava/lang/String;
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getHealthCheckType()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_b

    .line 84
    const-string v17, "HealthCheckType"

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getHealthCheckType()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v9, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getHealthCheckGracePeriod()Ljava/lang/Integer;

    move-result-object v17

    if-eqz v17, :cond_c

    .line 87
    const-string v17, "HealthCheckGracePeriod"

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getHealthCheckGracePeriod()Ljava/lang/Integer;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/amazonaws/util/StringUtils;->fromInteger(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v9, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getPlacementGroup()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_d

    .line 90
    const-string v17, "PlacementGroup"

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getPlacementGroup()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v9, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_d
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getVPCZoneIdentifier()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_e

    .line 93
    const-string v17, "VPCZoneIdentifier"

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getVPCZoneIdentifier()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v9, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getTerminationPolicies()Ljava/util/List;

    move-result-object v14

    .line 97
    .local v14, "terminationPoliciesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v15, 0x1

    .line 99
    .local v15, "terminationPoliciesListIndex":I
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_10

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 100
    .local v16, "terminationPoliciesListValue":Ljava/lang/String;
    if-eqz v16, :cond_f

    .line 101
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "TerminationPolicies.member."

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

    invoke-interface {v9, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :cond_f
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 107
    .end local v16    # "terminationPoliciesListValue":Ljava/lang/String;
    :cond_10
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;->getTags()Ljava/util/List;

    move-result-object v11

    .line 108
    .local v11, "tagsList":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/autoscaling/model/Tag;>;"
    const/4 v12, 0x1

    .line 110
    .local v12, "tagsListIndex":I
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_16

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/amazonaws/services/autoscaling/model/Tag;

    .line 111
    .local v13, "tagsListValue":Lcom/amazonaws/services/autoscaling/model/Tag;
    move-object v10, v13

    .line 112
    .local v10, "tagMember":Lcom/amazonaws/services/autoscaling/model/Tag;
    if-eqz v10, :cond_15

    .line 113
    invoke-virtual {v10}, Lcom/amazonaws/services/autoscaling/model/Tag;->getResourceId()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_11

    .line 114
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Tags.member."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ".ResourceId"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v10}, Lcom/amazonaws/services/autoscaling/model/Tag;->getResourceId()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v9, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :cond_11
    invoke-virtual {v10}, Lcom/amazonaws/services/autoscaling/model/Tag;->getResourceType()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_12

    .line 117
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Tags.member."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ".ResourceType"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v10}, Lcom/amazonaws/services/autoscaling/model/Tag;->getResourceType()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v9, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :cond_12
    invoke-virtual {v10}, Lcom/amazonaws/services/autoscaling/model/Tag;->getKey()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_13

    .line 120
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Tags.member."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ".Key"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v10}, Lcom/amazonaws/services/autoscaling/model/Tag;->getKey()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v9, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :cond_13
    invoke-virtual {v10}, Lcom/amazonaws/services/autoscaling/model/Tag;->getValue()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_14

    .line 123
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Tags.member."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ".Value"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v10}, Lcom/amazonaws/services/autoscaling/model/Tag;->getValue()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v9, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :cond_14
    invoke-virtual {v10}, Lcom/amazonaws/services/autoscaling/model/Tag;->isPropagateAtLaunch()Ljava/lang/Boolean;

    move-result-object v17

    if-eqz v17, :cond_15

    .line 126
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Tags.member."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ".PropagateAtLaunch"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v10}, Lcom/amazonaws/services/autoscaling/model/Tag;->isPropagateAtLaunch()Ljava/lang/Boolean;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/amazonaws/util/StringUtils;->fromBoolean(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v9, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :cond_15
    add-int/lit8 v12, v12, 0x1

    .line 131
    goto/16 :goto_3

    .line 134
    .end local v10    # "tagMember":Lcom/amazonaws/services/autoscaling/model/Tag;
    .end local v13    # "tagsListValue":Lcom/amazonaws/services/autoscaling/model/Tag;
    :cond_16
    return-object v9
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
    check-cast p1, Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/autoscaling/model/transform/CreateAutoScalingGroupRequestMarshaller;->marshall(Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    return-object v0
.end method
