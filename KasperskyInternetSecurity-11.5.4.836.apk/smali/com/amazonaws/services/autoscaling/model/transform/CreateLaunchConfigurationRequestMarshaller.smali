.class public Lcom/amazonaws/services/autoscaling/model/transform/CreateLaunchConfigurationRequestMarshaller;
.super Ljava/lang/Object;
.source "CreateLaunchConfigurationRequestMarshaller.java"

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
        "Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;",
        ">;",
        "Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;",
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
.method public marshall(Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;)Lcom/amazonaws/Request;
    .locals 13
    .param p1, "createLaunchConfigurationRequest"    # Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;",
            ")",
            "Lcom/amazonaws/Request",
            "<",
            "Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    if-nez p1, :cond_0

    .line 36
    new-instance v11, Lcom/amazonaws/AmazonClientException;

    const-string v12, "Invalid argument passed to marshall(...)"

    invoke-direct {v11, v12}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 39
    :cond_0
    new-instance v7, Lcom/amazonaws/DefaultRequest;

    const-string v11, "AmazonAutoScaling"

    invoke-direct {v7, p1, v11}, Lcom/amazonaws/DefaultRequest;-><init>(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)V

    .line 40
    .local v7, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;>;"
    const-string v11, "Action"

    const-string v12, "CreateLaunchConfiguration"

    invoke-interface {v7, v11, v12}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v11, "Version"

    const-string v12, "2011-01-01"

    invoke-interface {v7, v11, v12}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getLaunchConfigurationName()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_1

    .line 44
    const-string v11, "LaunchConfigurationName"

    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getLaunchConfigurationName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v7, v11, v12}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getImageId()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_2

    .line 47
    const-string v11, "ImageId"

    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getImageId()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v7, v11, v12}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :cond_2
    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getKeyName()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_3

    .line 50
    const-string v11, "KeyName"

    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getKeyName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v7, v11, v12}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_3
    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getSecurityGroups()Ljava/util/List;

    move-result-object v8

    .line 54
    .local v8, "securityGroupsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, 0x1

    .line 56
    .local v9, "securityGroupsListIndex":I
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 57
    .local v10, "securityGroupsListValue":Ljava/lang/String;
    if-eqz v10, :cond_4

    .line 58
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SecurityGroups.member."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v7, v11, v12}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 63
    .end local v10    # "securityGroupsListValue":Ljava/lang/String;
    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getUserData()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_6

    .line 64
    const-string v11, "UserData"

    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getUserData()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v7, v11, v12}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getInstanceType()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_7

    .line 67
    const-string v11, "InstanceType"

    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getInstanceType()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v7, v11, v12}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :cond_7
    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getKernelId()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_8

    .line 70
    const-string v11, "KernelId"

    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getKernelId()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v7, v11, v12}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :cond_8
    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getRamdiskId()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_9

    .line 73
    const-string v11, "RamdiskId"

    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getRamdiskId()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v7, v11, v12}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :cond_9
    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v1

    .line 77
    .local v1, "blockDeviceMappingsList":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/autoscaling/model/BlockDeviceMapping;>;"
    const/4 v2, 0x1

    .line 79
    .local v2, "blockDeviceMappingsListIndex":I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/autoscaling/model/BlockDeviceMapping;

    .line 80
    .local v3, "blockDeviceMappingsListValue":Lcom/amazonaws/services/autoscaling/model/BlockDeviceMapping;
    move-object v0, v3

    .line 81
    .local v0, "blockDeviceMappingMember":Lcom/amazonaws/services/autoscaling/model/BlockDeviceMapping;
    if-eqz v0, :cond_d

    .line 82
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/BlockDeviceMapping;->getVirtualName()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_a

    .line 83
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "BlockDeviceMappings.member."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".VirtualName"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/BlockDeviceMapping;->getVirtualName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v7, v11, v12}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :cond_a
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/BlockDeviceMapping;->getDeviceName()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_b

    .line 86
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "BlockDeviceMappings.member."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".DeviceName"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/BlockDeviceMapping;->getDeviceName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v7, v11, v12}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :cond_b
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/BlockDeviceMapping;->getEbs()Lcom/amazonaws/services/autoscaling/model/Ebs;

    move-result-object v4

    .line 89
    .local v4, "ebsEbs":Lcom/amazonaws/services/autoscaling/model/Ebs;
    if-eqz v4, :cond_d

    .line 90
    invoke-virtual {v4}, Lcom/amazonaws/services/autoscaling/model/Ebs;->getSnapshotId()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_c

    .line 91
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "BlockDeviceMappings.member."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".Ebs.SnapshotId"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4}, Lcom/amazonaws/services/autoscaling/model/Ebs;->getSnapshotId()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v7, v11, v12}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :cond_c
    invoke-virtual {v4}, Lcom/amazonaws/services/autoscaling/model/Ebs;->getVolumeSize()Ljava/lang/Integer;

    move-result-object v11

    if-eqz v11, :cond_d

    .line 94
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "BlockDeviceMappings.member."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".Ebs.VolumeSize"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4}, Lcom/amazonaws/services/autoscaling/model/Ebs;->getVolumeSize()Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v12}, Lcom/amazonaws/util/StringUtils;->fromInteger(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v7, v11, v12}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .end local v4    # "ebsEbs":Lcom/amazonaws/services/autoscaling/model/Ebs;
    :cond_d
    add-int/lit8 v2, v2, 0x1

    .line 100
    goto/16 :goto_1

    .line 101
    .end local v0    # "blockDeviceMappingMember":Lcom/amazonaws/services/autoscaling/model/BlockDeviceMapping;
    .end local v3    # "blockDeviceMappingsListValue":Lcom/amazonaws/services/autoscaling/model/BlockDeviceMapping;
    :cond_e
    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getInstanceMonitoring()Lcom/amazonaws/services/autoscaling/model/InstanceMonitoring;

    move-result-object v6

    .line 102
    .local v6, "instanceMonitoringInstanceMonitoring":Lcom/amazonaws/services/autoscaling/model/InstanceMonitoring;
    if-eqz v6, :cond_f

    .line 103
    invoke-virtual {v6}, Lcom/amazonaws/services/autoscaling/model/InstanceMonitoring;->isEnabled()Ljava/lang/Boolean;

    move-result-object v11

    if-eqz v11, :cond_f

    .line 104
    const-string v11, "InstanceMonitoring.Enabled"

    invoke-virtual {v6}, Lcom/amazonaws/services/autoscaling/model/InstanceMonitoring;->isEnabled()Ljava/lang/Boolean;

    move-result-object v12

    invoke-static {v12}, Lcom/amazonaws/util/StringUtils;->fromBoolean(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v7, v11, v12}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :cond_f
    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getSpotPrice()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_10

    .line 108
    const-string v11, "SpotPrice"

    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getSpotPrice()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v7, v11, v12}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :cond_10
    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getIamInstanceProfile()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_11

    .line 111
    const-string v11, "IamInstanceProfile"

    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getIamInstanceProfile()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v7, v11, v12}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :cond_11
    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->isEbsOptimized()Ljava/lang/Boolean;

    move-result-object v11

    if-eqz v11, :cond_12

    .line 114
    const-string v11, "EbsOptimized"

    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->isEbsOptimized()Ljava/lang/Boolean;

    move-result-object v12

    invoke-static {v12}, Lcom/amazonaws/util/StringUtils;->fromBoolean(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v7, v11, v12}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :cond_12
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
    check-cast p1, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/autoscaling/model/transform/CreateLaunchConfigurationRequestMarshaller;->marshall(Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    return-object v0
.end method
