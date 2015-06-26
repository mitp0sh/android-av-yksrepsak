.class public Lcom/amazonaws/services/s3/model/DeleteBucketRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "DeleteBucketRequest.java"


# instance fields
.field private bucketName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 46
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/DeleteBucketRequest;->setBucketName(Ljava/lang/String;)V

    .line 47
    return-void
.end method


# virtual methods
.method public getBucketName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/DeleteBucketRequest;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/DeleteBucketRequest;->bucketName:Ljava/lang/String;

    .line 59
    return-void
.end method
