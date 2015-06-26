.class public Lcom/amazonaws/services/s3/model/CreateBucketRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "CreateBucketRequest.java"


# instance fields
.field private accessControlList:Lcom/amazonaws/services/s3/model/AccessControlList;

.field private bucketName:Ljava/lang/String;

.field private cannedAcl:Lcom/amazonaws/services/s3/model/CannedAccessControlList;

.field private region:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 57
    sget-object v0, Lcom/amazonaws/services/s3/model/Region;->US_Standard:Lcom/amazonaws/services/s3/model/Region;

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/s3/model/CreateBucketRequest;-><init>(Ljava/lang/String;Lcom/amazonaws/services/s3/model/Region;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/amazonaws/services/s3/model/Region;)V
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "region"    # Lcom/amazonaws/services/s3/model/Region;

    .prologue
    .line 74
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/Region;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/s3/model/CreateBucketRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "region"    # Ljava/lang/String;

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 91
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/CreateBucketRequest;->setBucketName(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0, p2}, Lcom/amazonaws/services/s3/model/CreateBucketRequest;->setRegion(Ljava/lang/String;)V

    .line 93
    return-void
.end method


# virtual methods
.method public getAccessControlList()Lcom/amazonaws/services/s3/model/AccessControlList;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CreateBucketRequest;->accessControlList:Lcom/amazonaws/services/s3/model/AccessControlList;

    return-object v0
.end method

.method public getBucketName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CreateBucketRequest;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getCannedAcl()Lcom/amazonaws/services/s3/model/CannedAccessControlList;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CreateBucketRequest;->cannedAcl:Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    return-object v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CreateBucketRequest;->region:Ljava/lang/String;

    return-object v0
.end method

.method public setAccessControlList(Lcom/amazonaws/services/s3/model/AccessControlList;)V
    .locals 0
    .param p1, "accessControlList"    # Lcom/amazonaws/services/s3/model/AccessControlList;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CreateBucketRequest;->accessControlList:Lcom/amazonaws/services/s3/model/AccessControlList;

    .line 192
    return-void
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CreateBucketRequest;->bucketName:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setCannedAcl(Lcom/amazonaws/services/s3/model/CannedAccessControlList;)V
    .locals 0
    .param p1, "cannedAcl"    # Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CreateBucketRequest;->cannedAcl:Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    .line 158
    return-void
.end method

.method public setRegion(Ljava/lang/String;)V
    .locals 0
    .param p1, "region"    # Ljava/lang/String;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CreateBucketRequest;->region:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public withAccessControlList(Lcom/amazonaws/services/s3/model/AccessControlList;)Lcom/amazonaws/services/s3/model/CreateBucketRequest;
    .locals 0
    .param p1, "accessControlList"    # Lcom/amazonaws/services/s3/model/AccessControlList;

    .prologue
    .line 203
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/CreateBucketRequest;->setAccessControlList(Lcom/amazonaws/services/s3/model/AccessControlList;)V

    .line 204
    return-object p0
.end method

.method public withCannedAcl(Lcom/amazonaws/services/s3/model/CannedAccessControlList;)Lcom/amazonaws/services/s3/model/CreateBucketRequest;
    .locals 0
    .param p1, "cannedAcl"    # Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    .prologue
    .line 171
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/CreateBucketRequest;->setCannedAcl(Lcom/amazonaws/services/s3/model/CannedAccessControlList;)V

    .line 172
    return-object p0
.end method
