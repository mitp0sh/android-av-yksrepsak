.class public Lcom/amazonaws/services/ec2/model/transform/ImportVolumeRequestMarshaller;
.super Ljava/lang/Object;
.source "ImportVolumeRequestMarshaller.java"

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
        "Lcom/amazonaws/services/ec2/model/ImportVolumeRequest;",
        ">;",
        "Lcom/amazonaws/services/ec2/model/ImportVolumeRequest;",
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
.method public marshall(Lcom/amazonaws/services/ec2/model/ImportVolumeRequest;)Lcom/amazonaws/Request;
    .locals 5
    .param p1, "importVolumeRequest"    # Lcom/amazonaws/services/ec2/model/ImportVolumeRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/ImportVolumeRequest;",
            ")",
            "Lcom/amazonaws/Request",
            "<",
            "Lcom/amazonaws/services/ec2/model/ImportVolumeRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    if-nez p1, :cond_0

    .line 36
    new-instance v3, Lcom/amazonaws/AmazonClientException;

    const-string v4, "Invalid argument passed to marshall(...)"

    invoke-direct {v3, v4}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 39
    :cond_0
    new-instance v1, Lcom/amazonaws/DefaultRequest;

    const-string v3, "AmazonEC2"

    invoke-direct {v1, p1, v3}, Lcom/amazonaws/DefaultRequest;-><init>(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)V

    .line 40
    .local v1, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/ec2/model/ImportVolumeRequest;>;"
    const-string v3, "Action"

    const-string v4, "ImportVolume"

    invoke-interface {v1, v3, v4}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v3, "Version"

    const-string v4, "2013-02-01"

    invoke-interface {v1, v3, v4}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ImportVolumeRequest;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 44
    const-string v3, "AvailabilityZone"

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ImportVolumeRequest;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ImportVolumeRequest;->getImage()Lcom/amazonaws/services/ec2/model/DiskImageDetail;

    move-result-object v0

    .line 47
    .local v0, "diskImageDetailImage":Lcom/amazonaws/services/ec2/model/DiskImageDetail;
    if-eqz v0, :cond_4

    .line 48
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DiskImageDetail;->getFormat()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 49
    const-string v3, "Image.Format"

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DiskImageDetail;->getFormat()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DiskImageDetail;->getBytes()Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 52
    const-string v3, "Image.Bytes"

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DiskImageDetail;->getBytes()Ljava/lang/Long;

    move-result-object v4

    invoke-static {v4}, Lcom/amazonaws/util/StringUtils;->fromLong(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DiskImageDetail;->getImportManifestUrl()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 55
    const-string v3, "Image.ImportManifestUrl"

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DiskImageDetail;->getImportManifestUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :cond_4
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ImportVolumeRequest;->getDescription()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 59
    const-string v3, "Description"

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ImportVolumeRequest;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ImportVolumeRequest;->getVolume()Lcom/amazonaws/services/ec2/model/VolumeDetail;

    move-result-object v2

    .line 62
    .local v2, "volumeDetailVolume":Lcom/amazonaws/services/ec2/model/VolumeDetail;
    if-eqz v2, :cond_6

    .line 63
    invoke-virtual {v2}, Lcom/amazonaws/services/ec2/model/VolumeDetail;->getSize()Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 64
    const-string v3, "Volume.Size"

    invoke-virtual {v2}, Lcom/amazonaws/services/ec2/model/VolumeDetail;->getSize()Ljava/lang/Long;

    move-result-object v4

    invoke-static {v4}, Lcom/amazonaws/util/StringUtils;->fromLong(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
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
    check-cast p1, Lcom/amazonaws/services/ec2/model/ImportVolumeRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/ec2/model/transform/ImportVolumeRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/ImportVolumeRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    return-object v0
.end method
