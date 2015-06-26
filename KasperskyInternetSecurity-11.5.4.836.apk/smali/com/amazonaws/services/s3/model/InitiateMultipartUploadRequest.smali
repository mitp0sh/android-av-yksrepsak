.class public Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "InitiateMultipartUploadRequest.java"


# instance fields
.field private accessControlList:Lcom/amazonaws/services/s3/model/AccessControlList;

.field private bucketName:Ljava/lang/String;

.field private cannedACL:Lcom/amazonaws/services/s3/model/CannedAccessControlList;

.field private key:Ljava/lang/String;

.field public objectMetadata:Lcom/amazonaws/services/s3/model/ObjectMetadata;

.field private redirectLocation:Ljava/lang/String;

.field private storageClass:Lcom/amazonaws/services/s3/model/StorageClass;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->bucketName:Ljava/lang/String;

    .line 85
    iput-object p2, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->key:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/model/ObjectMetadata;)V
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "objectMetadata"    # Lcom/amazonaws/services/s3/model/ObjectMetadata;

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 105
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->bucketName:Ljava/lang/String;

    .line 106
    iput-object p2, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->key:Ljava/lang/String;

    .line 107
    iput-object p3, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->objectMetadata:Lcom/amazonaws/services/s3/model/ObjectMetadata;

    .line 108
    return-void
.end method


# virtual methods
.method public getAccessControlList()Lcom/amazonaws/services/s3/model/AccessControlList;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->accessControlList:Lcom/amazonaws/services/s3/model/AccessControlList;

    return-object v0
.end method

.method public getBucketName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getCannedACL()Lcom/amazonaws/services/s3/model/CannedAccessControlList;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->cannedACL:Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getObjectMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->objectMetadata:Lcom/amazonaws/services/s3/model/ObjectMetadata;

    return-object v0
.end method

.method public getRedirectLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->redirectLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getStorageClass()Lcom/amazonaws/services/s3/model/StorageClass;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->storageClass:Lcom/amazonaws/services/s3/model/StorageClass;

    return-object v0
.end method

.method public setAccessControlList(Lcom/amazonaws/services/s3/model/AccessControlList;)V
    .locals 0
    .param p1, "accessControlList"    # Lcom/amazonaws/services/s3/model/AccessControlList;

    .prologue
    .line 259
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->accessControlList:Lcom/amazonaws/services/s3/model/AccessControlList;

    .line 260
    return-void
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->bucketName:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public setCannedACL(Lcom/amazonaws/services/s3/model/CannedAccessControlList;)V
    .locals 0
    .param p1, "cannedACL"    # Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->cannedACL:Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    .line 222
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->key:Ljava/lang/String;

    .line 176
    return-void
.end method

.method public setObjectMetadata(Lcom/amazonaws/services/s3/model/ObjectMetadata;)V
    .locals 0
    .param p1, "objectMetadata"    # Lcom/amazonaws/services/s3/model/ObjectMetadata;

    .prologue
    .line 346
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->objectMetadata:Lcom/amazonaws/services/s3/model/ObjectMetadata;

    .line 347
    return-void
.end method

.method public setRedirectLocation(Ljava/lang/String;)V
    .locals 0
    .param p1, "redirectLocation"    # Ljava/lang/String;

    .prologue
    .line 374
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->redirectLocation:Ljava/lang/String;

    .line 375
    return-void
.end method

.method public setStorageClass(Lcom/amazonaws/services/s3/model/StorageClass;)V
    .locals 0
    .param p1, "storageClass"    # Lcom/amazonaws/services/s3/model/StorageClass;

    .prologue
    .line 304
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->storageClass:Lcom/amazonaws/services/s3/model/StorageClass;

    .line 305
    return-void
.end method

.method public withAccessControlList(Lcom/amazonaws/services/s3/model/AccessControlList;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;
    .locals 0
    .param p1, "accessControlList"    # Lcom/amazonaws/services/s3/model/AccessControlList;

    .prologue
    .line 271
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->setAccessControlList(Lcom/amazonaws/services/s3/model/AccessControlList;)V

    .line 272
    return-object p0
.end method

.method public withBucketName(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->bucketName:Ljava/lang/String;

    .line 152
    return-object p0
.end method

.method public withCannedACL(Lcom/amazonaws/services/s3/model/CannedAccessControlList;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;
    .locals 0
    .param p1, "acl"    # Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    .prologue
    .line 239
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->cannedACL:Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    .line 240
    return-object p0
.end method

.method public withKey(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->key:Ljava/lang/String;

    .line 193
    return-object p0
.end method

.method public withObjectMetadata(Lcom/amazonaws/services/s3/model/ObjectMetadata;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;
    .locals 0
    .param p1, "objectMetadata"    # Lcom/amazonaws/services/s3/model/ObjectMetadata;

    .prologue
    .line 363
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->setObjectMetadata(Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    .line 364
    return-object p0
.end method

.method public withRedirectLocation(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;
    .locals 0
    .param p1, "redirectLocation"    # Ljava/lang/String;

    .prologue
    .line 392
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->redirectLocation:Ljava/lang/String;

    .line 393
    return-object p0
.end method

.method public withStorageClass(Lcom/amazonaws/services/s3/model/StorageClass;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;
    .locals 0
    .param p1, "storageClass"    # Lcom/amazonaws/services/s3/model/StorageClass;

    .prologue
    .line 322
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->storageClass:Lcom/amazonaws/services/s3/model/StorageClass;

    .line 323
    return-object p0
.end method
