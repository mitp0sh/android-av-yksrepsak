.class public Lcom/amazonaws/services/ec2/model/transform/AttachVolumeRequestMarshaller;
.super Ljava/lang/Object;
.source "AttachVolumeRequestMarshaller.java"

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
        "Lcom/amazonaws/services/ec2/model/AttachVolumeRequest;",
        ">;",
        "Lcom/amazonaws/services/ec2/model/AttachVolumeRequest;",
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
.method public marshall(Lcom/amazonaws/services/ec2/model/AttachVolumeRequest;)Lcom/amazonaws/Request;
    .locals 3
    .param p1, "attachVolumeRequest"    # Lcom/amazonaws/services/ec2/model/AttachVolumeRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/AttachVolumeRequest;",
            ")",
            "Lcom/amazonaws/Request",
            "<",
            "Lcom/amazonaws/services/ec2/model/AttachVolumeRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    if-nez p1, :cond_0

    .line 36
    new-instance v1, Lcom/amazonaws/AmazonClientException;

    const-string v2, "Invalid argument passed to marshall(...)"

    invoke-direct {v1, v2}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 39
    :cond_0
    new-instance v0, Lcom/amazonaws/DefaultRequest;

    const-string v1, "AmazonEC2"

    invoke-direct {v0, p1, v1}, Lcom/amazonaws/DefaultRequest;-><init>(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)V

    .line 40
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/ec2/model/AttachVolumeRequest;>;"
    const-string v1, "Action"

    const-string v2, "AttachVolume"

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v1, "Version"

    const-string v2, "2013-02-01"

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/AttachVolumeRequest;->getVolumeId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 44
    const-string v1, "VolumeId"

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/AttachVolumeRequest;->getVolumeId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/AttachVolumeRequest;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 47
    const-string v1, "InstanceId"

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/AttachVolumeRequest;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :cond_2
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/AttachVolumeRequest;->getDevice()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 50
    const-string v1, "Device"

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/AttachVolumeRequest;->getDevice()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :cond_3
    return-object v0
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
    check-cast p1, Lcom/amazonaws/services/ec2/model/AttachVolumeRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/ec2/model/transform/AttachVolumeRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/AttachVolumeRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    return-object v0
.end method
