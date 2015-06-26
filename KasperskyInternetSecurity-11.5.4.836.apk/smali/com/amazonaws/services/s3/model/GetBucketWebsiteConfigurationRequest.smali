.class public Lcom/amazonaws/services/s3/model/GetBucketWebsiteConfigurationRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "GetBucketWebsiteConfigurationRequest.java"


# instance fields
.field private bucketName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GetBucketWebsiteConfigurationRequest;->bucketName:Ljava/lang/String;

    .line 63
    return-void
.end method


# virtual methods
.method public getBucketName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetBucketWebsiteConfigurationRequest;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GetBucketWebsiteConfigurationRequest;->bucketName:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public withBucketName(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/GetBucketWebsiteConfigurationRequest;
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 101
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GetBucketWebsiteConfigurationRequest;->setBucketName(Ljava/lang/String;)V

    .line 102
    return-object p0
.end method
