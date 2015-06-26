.class public Lcom/amazonaws/services/autoscaling/model/transform/UpdateAutoScalingGroupRequestMarshaller;
.super Ljava/lang/Object;
.source "UpdateAutoScalingGroupRequestMarshaller.java"

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
        "Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;",
        ">;",
        "Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;",
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
.method public marshall(Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;)Lcom/amazonaws/Request;
    .locals 10
    .param p1, "updateAutoScalingGroupRequest"    # Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;",
            ")",
            "Lcom/amazonaws/Request",
            "<",
            "Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;",
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
    new-instance v4, Lcom/amazonaws/DefaultRequest;

    const-string v8, "AmazonAutoScaling"

    invoke-direct {v4, p1, v8}, Lcom/amazonaws/DefaultRequest;-><init>(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)V

    .line 40
    .local v4, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;>;"
    const-string v8, "Action"

    const-string v9, "UpdateAutoScalingGroup"

    invoke-interface {v4, v8, v9}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v8, "Version"

    const-string v9, "2011-01-01"

    invoke-interface {v4, v8, v9}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 44
    const-string v8, "AutoScalingGroupName"

    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v8, v9}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getLaunchConfigurationName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 47
    const-string v8, "LaunchConfigurationName"

    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getLaunchConfigurationName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v8, v9}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :cond_2
    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getMinSize()Ljava/lang/Integer;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 50
    const-string v8, "MinSize"

    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getMinSize()Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v9}, Lcom/amazonaws/util/StringUtils;->fromInteger(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v8, v9}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :cond_3
    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getMaxSize()Ljava/lang/Integer;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 53
    const-string v8, "MaxSize"

    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getMaxSize()Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v9}, Lcom/amazonaws/util/StringUtils;->fromInteger(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v8, v9}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :cond_4
    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getDesiredCapacity()Ljava/lang/Integer;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 56
    const-string v8, "DesiredCapacity"

    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getDesiredCapacity()Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v9}, Lcom/amazonaws/util/StringUtils;->fromInteger(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v8, v9}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getDefaultCooldown()Ljava/lang/Integer;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 59
    const-string v8, "DefaultCooldown"

    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getDefaultCooldown()Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v9}, Lcom/amazonaws/util/StringUtils;->fromInteger(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v8, v9}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getAvailabilityZones()Ljava/util/List;

    move-result-object v0

    .line 63
    .local v0, "availabilityZonesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x1

    .line 65
    .local v1, "availabilityZonesListIndex":I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 66
    .local v2, "availabilityZonesListValue":Ljava/lang/String;
    if-eqz v2, :cond_7

    .line 67
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AvailabilityZones.member."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v8, v9}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 72
    .end local v2    # "availabilityZonesListValue":Ljava/lang/String;
    :cond_8
    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getHealthCheckType()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_9

    .line 73
    const-string v8, "HealthCheckType"

    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getHealthCheckType()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v8, v9}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :cond_9
    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getHealthCheckGracePeriod()Ljava/lang/Integer;

    move-result-object v8

    if-eqz v8, :cond_a

    .line 76
    const-string v8, "HealthCheckGracePeriod"

    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getHealthCheckGracePeriod()Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v9}, Lcom/amazonaws/util/StringUtils;->fromInteger(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v8, v9}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :cond_a
    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getPlacementGroup()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_b

    .line 79
    const-string v8, "PlacementGroup"

    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getPlacementGroup()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v8, v9}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :cond_b
    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getVPCZoneIdentifier()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_c

    .line 82
    const-string v8, "VPCZoneIdentifier"

    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getVPCZoneIdentifier()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v8, v9}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :cond_c
    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getTerminationPolicies()Ljava/util/List;

    move-result-object v5

    .line 86
    .local v5, "terminationPoliciesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x1

    .line 88
    .local v6, "terminationPoliciesListIndex":I
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 89
    .local v7, "terminationPoliciesListValue":Ljava/lang/String;
    if-eqz v7, :cond_d

    .line 90
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "TerminationPolicies.member."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v8, v9}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :cond_d
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 97
    .end local v7    # "terminationPoliciesListValue":Ljava/lang/String;
    :cond_e
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
    check-cast p1, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/autoscaling/model/transform/UpdateAutoScalingGroupRequestMarshaller;->marshall(Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    return-object v0
.end method
