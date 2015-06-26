.class public Lcom/amazonaws/services/s3/model/GetBucketLocationRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "GetBucketLocationRequest.java"


# instance fields
.field private bucketName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GetBucketLocationRequest;->bucketName:Ljava/lang/String;

    .line 45
    return-void
.end method


# virtual methods
.method public getBucketName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetBucketLocationRequest;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GetBucketLocationRequest;->bucketName:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public withBucketName(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/GetBucketLocationRequest;
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 79
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GetBucketLocationRequest;->setBucketName(Ljava/lang/String;)V

    .line 80
    return-object p0
.end method
