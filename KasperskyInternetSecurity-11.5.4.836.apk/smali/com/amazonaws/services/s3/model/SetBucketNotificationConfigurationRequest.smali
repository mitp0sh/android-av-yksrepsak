.class public Lcom/amazonaws/services/s3/model/SetBucketNotificationConfigurationRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "SetBucketNotificationConfigurationRequest.java"


# instance fields
.field private bucket:Ljava/lang/String;

.field private bucketNotificationConfiguration:Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration;


# direct methods
.method public constructor <init>(Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration;Ljava/lang/String;)V
    .locals 0
    .param p1, "bucketNotificationConfiguration"    # Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration;
    .param p2, "bucket"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/SetBucketNotificationConfigurationRequest;->bucketNotificationConfiguration:Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration;

    .line 29
    iput-object p2, p0, Lcom/amazonaws/services/s3/model/SetBucketNotificationConfigurationRequest;->bucket:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public getBucket()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/SetBucketNotificationConfigurationRequest;->bucket:Ljava/lang/String;

    return-object v0
.end method

.method public getBucketNotificationConfiguration()Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/SetBucketNotificationConfigurationRequest;->bucketNotificationConfiguration:Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration;

    return-object v0
.end method

.method public setBucket(Ljava/lang/String;)V
    .locals 0
    .param p1, "bucket"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/SetBucketNotificationConfigurationRequest;->bucket:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setBucketNotificationConfiguration(Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration;)V
    .locals 0
    .param p1, "bucketNotificationConfiguration"    # Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/SetBucketNotificationConfigurationRequest;->bucketNotificationConfiguration:Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration;

    .line 38
    return-void
.end method
