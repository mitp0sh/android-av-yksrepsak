.class public Lcom/amazonaws/services/ec2/model/transform/CreateImageRequestMarshaller;
.super Ljava/lang/Object;
.source "CreateImageRequestMarshaller.java"

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
        "Lcom/amazonaws/services/ec2/model/CreateImageRequest;",
        ">;",
        "Lcom/amazonaws/services/ec2/model/CreateImageRequest;",
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
.method public marshall(Lcom/amazonaws/services/ec2/model/CreateImageRequest;)Lcom/amazonaws/Request;
    .locals 9
    .param p1, "createImageRequest"    # Lcom/amazonaws/services/ec2/model/CreateImageRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/CreateImageRequest;",
            ")",
            "Lcom/amazonaws/Request",
            "<",
            "Lcom/amazonaws/services/ec2/model/CreateImageRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    if-nez p1, :cond_0

    .line 36
    new-instance v7, Lcom/amazonaws/AmazonClientException;

    const-string v8, "Invalid argument passed to marshall(...)"

    invoke-direct {v7, v8}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 39
    :cond_0
    new-instance v6, Lcom/amazonaws/DefaultRequest;

    const-string v7, "AmazonEC2"

    invoke-direct {v6, p1, v7}, Lcom/amazonaws/DefaultRequest;-><init>(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)V

    .line 40
    .local v6, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/ec2/model/CreateImageRequest;>;"
    const-string v7, "Action"

    const-string v8, "CreateImage"

    invoke-interface {v6, v7, v8}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v7, "Version"

    const-string v8, "2013-02-01"

    invoke-interface {v6, v7, v8}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/CreateImageRequest;->getInstanceId()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 44
    const-string v7, "InstanceId"

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/CreateImageRequest;->getInstanceId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/CreateImageRequest;->getName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 47
    const-string v7, "Name"

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/CreateImageRequest;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :cond_2
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/CreateImageRequest;->getDescription()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 50
    const-string v7, "Description"

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/CreateImageRequest;->getDescription()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :cond_3
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/CreateImageRequest;->isNoReboot()Ljava/lang/Boolean;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 53
    const-string v7, "NoReboot"

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/CreateImageRequest;->isNoReboot()Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {v8}, Lcom/amazonaws/util/StringUtils;->fromBoolean(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :cond_4
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/CreateImageRequest;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v1

    .line 57
    .local v1, "blockDeviceMappingsList":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;>;"
    const/4 v2, 0x1

    .line 59
    .local v2, "blockDeviceMappingsListIndex":I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;

    .line 60
    .local v3, "blockDeviceMappingsListValue":Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;
    move-object v0, v3

    .line 61
    .local v0, "blockDeviceMappingMember":Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;
    if-eqz v0, :cond_c

    .line 62
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;->getVirtualName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 63
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BlockDeviceMapping."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".VirtualName"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;->getVirtualName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :cond_5
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;->getDeviceName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 66
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BlockDeviceMapping."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".DeviceName"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;->getDeviceName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :cond_6
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;->getEbs()Lcom/amazonaws/services/ec2/model/EbsBlockDevice;

    move-result-object v4

    .line 69
    .local v4, "ebsBlockDeviceEbs":Lcom/amazonaws/services/ec2/model/EbsBlockDevice;
    if-eqz v4, :cond_b

    .line 70
    invoke-virtual {v4}, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->getSnapshotId()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_7

    .line 71
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BlockDeviceMapping."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".Ebs.SnapshotId"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->getSnapshotId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :cond_7
    invoke-virtual {v4}, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->getVolumeSize()Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_8

    .line 74
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BlockDeviceMapping."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".Ebs.VolumeSize"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->getVolumeSize()Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v8}, Lcom/amazonaws/util/StringUtils;->fromInteger(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :cond_8
    invoke-virtual {v4}, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->isDeleteOnTermination()Ljava/lang/Boolean;

    move-result-object v7

    if-eqz v7, :cond_9

    .line 77
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BlockDeviceMapping."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".Ebs.DeleteOnTermination"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->isDeleteOnTermination()Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {v8}, Lcom/amazonaws/util/StringUtils;->fromBoolean(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :cond_9
    invoke-virtual {v4}, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->getVolumeType()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_a

    .line 80
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BlockDeviceMapping."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".Ebs.VolumeType"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->getVolumeType()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :cond_a
    invoke-virtual {v4}, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->getIops()Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_b

    .line 83
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BlockDeviceMapping."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".Ebs.Iops"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->getIops()Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v8}, Lcom/amazonaws/util/StringUtils;->fromInteger(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :cond_b
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;->getNoDevice()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_c

    .line 87
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BlockDeviceMapping."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".NoDevice"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;->getNoDevice()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .end local v4    # "ebsBlockDeviceEbs":Lcom/amazonaws/services/ec2/model/EbsBlockDevice;
    :cond_c
    add-int/lit8 v2, v2, 0x1

    .line 92
    goto/16 :goto_0

    .line 95
    .end local v0    # "blockDeviceMappingMember":Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;
    .end local v3    # "blockDeviceMappingsListValue":Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;
    :cond_d
    return-object v6
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
    check-cast p1, Lcom/amazonaws/services/ec2/model/CreateImageRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/ec2/model/transform/CreateImageRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/CreateImageRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    return-object v0
.end method
