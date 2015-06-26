.class public Lcom/amazonaws/services/ec2/model/transform/BundleInstanceRequestMarshaller;
.super Ljava/lang/Object;
.source "BundleInstanceRequestMarshaller.java"

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
        "Lcom/amazonaws/services/ec2/model/BundleInstanceRequest;",
        ">;",
        "Lcom/amazonaws/services/ec2/model/BundleInstanceRequest;",
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
.method public marshall(Lcom/amazonaws/services/ec2/model/BundleInstanceRequest;)Lcom/amazonaws/Request;
    .locals 5
    .param p1, "bundleInstanceRequest"    # Lcom/amazonaws/services/ec2/model/BundleInstanceRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/BundleInstanceRequest;",
            ")",
            "Lcom/amazonaws/Request",
            "<",
            "Lcom/amazonaws/services/ec2/model/BundleInstanceRequest;",
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
    new-instance v0, Lcom/amazonaws/DefaultRequest;

    const-string v3, "AmazonEC2"

    invoke-direct {v0, p1, v3}, Lcom/amazonaws/DefaultRequest;-><init>(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)V

    .line 40
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/ec2/model/BundleInstanceRequest;>;"
    const-string v3, "Action"

    const-string v4, "BundleInstance"

    invoke-interface {v0, v3, v4}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v3, "Version"

    const-string v4, "2013-02-01"

    invoke-interface {v0, v3, v4}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/BundleInstanceRequest;->getInstanceId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 44
    const-string v3, "InstanceId"

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/BundleInstanceRequest;->getInstanceId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/BundleInstanceRequest;->getStorage()Lcom/amazonaws/services/ec2/model/Storage;

    move-result-object v2

    .line 47
    .local v2, "storageStorage":Lcom/amazonaws/services/ec2/model/Storage;
    if-eqz v2, :cond_6

    .line 48
    invoke-virtual {v2}, Lcom/amazonaws/services/ec2/model/Storage;->getS3()Lcom/amazonaws/services/ec2/model/S3Storage;

    move-result-object v1

    .line 49
    .local v1, "s3StorageS3":Lcom/amazonaws/services/ec2/model/S3Storage;
    if-eqz v1, :cond_6

    .line 50
    invoke-virtual {v1}, Lcom/amazonaws/services/ec2/model/S3Storage;->getBucket()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 51
    const-string v3, "Storage.S3.Bucket"

    invoke-virtual {v1}, Lcom/amazonaws/services/ec2/model/S3Storage;->getBucket()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_2
    invoke-virtual {v1}, Lcom/amazonaws/services/ec2/model/S3Storage;->getPrefix()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 54
    const-string v3, "Storage.S3.Prefix"

    invoke-virtual {v1}, Lcom/amazonaws/services/ec2/model/S3Storage;->getPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :cond_3
    invoke-virtual {v1}, Lcom/amazonaws/services/ec2/model/S3Storage;->getAWSAccessKeyId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 57
    const-string v3, "Storage.S3.AWSAccessKeyId"

    invoke-virtual {v1}, Lcom/amazonaws/services/ec2/model/S3Storage;->getAWSAccessKeyId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :cond_4
    invoke-virtual {v1}, Lcom/amazonaws/services/ec2/model/S3Storage;->getUploadPolicy()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 60
    const-string v3, "Storage.S3.UploadPolicy"

    invoke-virtual {v1}, Lcom/amazonaws/services/ec2/model/S3Storage;->getUploadPolicy()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :cond_5
    invoke-virtual {v1}, Lcom/amazonaws/services/ec2/model/S3Storage;->getUploadPolicySignature()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 63
    const-string v3, "Storage.S3.UploadPolicySignature"

    invoke-virtual {v1}, Lcom/amazonaws/services/ec2/model/S3Storage;->getUploadPolicySignature()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .end local v1    # "s3StorageS3":Lcom/amazonaws/services/ec2/model/S3Storage;
    :cond_6
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
    check-cast p1, Lcom/amazonaws/services/ec2/model/BundleInstanceRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/ec2/model/transform/BundleInstanceRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/BundleInstanceRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    return-object v0
.end method
