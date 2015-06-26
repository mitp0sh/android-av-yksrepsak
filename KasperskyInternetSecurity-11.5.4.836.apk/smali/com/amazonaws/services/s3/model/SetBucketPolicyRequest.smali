.class public Lcom/amazonaws/services/s3/model/SetBucketPolicyRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "SetBucketPolicyRequest.java"


# instance fields
.field private bucketName:Ljava/lang/String;

.field private policyText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "policyText"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/SetBucketPolicyRequest;->bucketName:Ljava/lang/String;

    .line 58
    iput-object p2, p0, Lcom/amazonaws/services/s3/model/SetBucketPolicyRequest;->policyText:Ljava/lang/String;

    .line 59
    return-void
.end method


# virtual methods
.method public getBucketName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/SetBucketPolicyRequest;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getPolicyText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/SetBucketPolicyRequest;->policyText:Ljava/lang/String;

    return-object v0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/SetBucketPolicyRequest;->bucketName:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setPolicyText(Ljava/lang/String;)V
    .locals 0
    .param p1, "policyText"    # Ljava/lang/String;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/SetBucketPolicyRequest;->policyText:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public withBucketName(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/SetBucketPolicyRequest;
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/SetBucketPolicyRequest;->setBucketName(Ljava/lang/String;)V

    .line 94
    return-object p0
.end method

.method public withPolicyText(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/SetBucketPolicyRequest;
    .locals 0
    .param p1, "policyText"    # Ljava/lang/String;

    .prologue
    .line 127
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/SetBucketPolicyRequest;->setPolicyText(Ljava/lang/String;)V

    .line 128
    return-object p0
.end method
