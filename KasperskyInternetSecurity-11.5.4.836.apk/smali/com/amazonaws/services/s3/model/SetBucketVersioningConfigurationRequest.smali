.class public Lcom/amazonaws/services/s3/model/SetBucketVersioningConfigurationRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "SetBucketVersioningConfigurationRequest.java"


# instance fields
.field private bucketName:Ljava/lang/String;

.field private mfa:Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;

.field private versioningConfiguration:Lcom/amazonaws/services/s3/model/BucketVersioningConfiguration;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/amazonaws/services/s3/model/BucketVersioningConfiguration;)V
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "configuration"    # Lcom/amazonaws/services/s3/model/BucketVersioningConfiguration;

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 104
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/SetBucketVersioningConfigurationRequest;->bucketName:Ljava/lang/String;

    .line 105
    iput-object p2, p0, Lcom/amazonaws/services/s3/model/SetBucketVersioningConfigurationRequest;->versioningConfiguration:Lcom/amazonaws/services/s3/model/BucketVersioningConfiguration;

    .line 106
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/amazonaws/services/s3/model/BucketVersioningConfiguration;Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;)V
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "configuration"    # Lcom/amazonaws/services/s3/model/BucketVersioningConfiguration;
    .param p3, "mfa"    # Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;

    .prologue
    .line 129
    invoke-direct {p0, p1, p2}, Lcom/amazonaws/services/s3/model/SetBucketVersioningConfigurationRequest;-><init>(Ljava/lang/String;Lcom/amazonaws/services/s3/model/BucketVersioningConfiguration;)V

    .line 130
    iput-object p3, p0, Lcom/amazonaws/services/s3/model/SetBucketVersioningConfigurationRequest;->mfa:Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;

    .line 131
    return-void
.end method


# virtual methods
.method public getBucketName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/SetBucketVersioningConfigurationRequest;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getMfa()Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/SetBucketVersioningConfigurationRequest;->mfa:Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;

    return-object v0
.end method

.method public getVersioningConfiguration()Lcom/amazonaws/services/s3/model/BucketVersioningConfiguration;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/SetBucketVersioningConfigurationRequest;->versioningConfiguration:Lcom/amazonaws/services/s3/model/BucketVersioningConfiguration;

    return-object v0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/SetBucketVersioningConfigurationRequest;->bucketName:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public setMfa(Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;)V
    .locals 0
    .param p1, "mfa"    # Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;

    .prologue
    .line 269
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/SetBucketVersioningConfigurationRequest;->mfa:Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;

    .line 270
    return-void
.end method

.method public setVersioningConfiguration(Lcom/amazonaws/services/s3/model/BucketVersioningConfiguration;)V
    .locals 0
    .param p1, "versioningConfiguration"    # Lcom/amazonaws/services/s3/model/BucketVersioningConfiguration;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/SetBucketVersioningConfigurationRequest;->versioningConfiguration:Lcom/amazonaws/services/s3/model/BucketVersioningConfiguration;

    .line 203
    return-void
.end method

.method public withBucketName(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/SetBucketVersioningConfigurationRequest;
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 175
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/SetBucketVersioningConfigurationRequest;->setBucketName(Ljava/lang/String;)V

    .line 176
    return-object p0
.end method

.method public withMfa(Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;)Lcom/amazonaws/services/s3/model/SetBucketVersioningConfigurationRequest;
    .locals 0
    .param p1, "mfa"    # Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;

    .prologue
    .line 296
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/SetBucketVersioningConfigurationRequest;->setMfa(Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;)V

    .line 297
    return-object p0
.end method

.method public withVersioningConfiguration(Lcom/amazonaws/services/s3/model/BucketVersioningConfiguration;)Lcom/amazonaws/services/s3/model/SetBucketVersioningConfigurationRequest;
    .locals 0
    .param p1, "versioningConfiguration"    # Lcom/amazonaws/services/s3/model/BucketVersioningConfiguration;

    .prologue
    .line 221
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/SetBucketVersioningConfigurationRequest;->setVersioningConfiguration(Lcom/amazonaws/services/s3/model/BucketVersioningConfiguration;)V

    .line 222
    return-object p0
.end method
