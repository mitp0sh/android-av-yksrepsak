.class public Lcom/amazonaws/services/s3/model/DeleteBucketPolicyRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "DeleteBucketPolicyRequest.java"


# instance fields
.field private bucketName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/DeleteBucketPolicyRequest;->bucketName:Ljava/lang/String;

    .line 51
    return-void
.end method


# virtual methods
.method public getBucketName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/DeleteBucketPolicyRequest;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/DeleteBucketPolicyRequest;->bucketName:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public withBucketName(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/DeleteBucketPolicyRequest;
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/DeleteBucketPolicyRequest;->setBucketName(Ljava/lang/String;)V

    .line 88
    return-object p0
.end method
