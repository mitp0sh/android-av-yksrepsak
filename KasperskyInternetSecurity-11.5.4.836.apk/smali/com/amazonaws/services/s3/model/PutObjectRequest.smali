.class public Lcom/amazonaws/services/s3/model/PutObjectRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "PutObjectRequest.java"


# instance fields
.field private accessControlList:Lcom/amazonaws/services/s3/model/AccessControlList;

.field private bucketName:Ljava/lang/String;

.field private cannedAcl:Lcom/amazonaws/services/s3/model/CannedAccessControlList;

.field private file:Ljava/io/File;

.field private inputStream:Ljava/io/InputStream;

.field private key:Ljava/lang/String;

.field private metadata:Lcom/amazonaws/services/s3/model/ObjectMetadata;

.field private progressListener:Lcom/amazonaws/services/s3/model/ProgressListener;

.field private redirectLocation:Ljava/lang/String;

.field private storageClass:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "file"    # Ljava/io/File;

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 168
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->bucketName:Ljava/lang/String;

    .line 169
    iput-object p2, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->key:Ljava/lang/String;

    .line 170
    iput-object p3, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->file:Ljava/io/File;

    .line 171
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Lcom/amazonaws/services/s3/model/ObjectMetadata;)V
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "input"    # Ljava/io/InputStream;
    .param p4, "metadata"    # Lcom/amazonaws/services/s3/model/ObjectMetadata;

    .prologue
    .line 223
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 224
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->bucketName:Ljava/lang/String;

    .line 225
    iput-object p2, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->key:Ljava/lang/String;

    .line 226
    iput-object p3, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->inputStream:Ljava/io/InputStream;

    .line 227
    iput-object p4, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->metadata:Lcom/amazonaws/services/s3/model/ObjectMetadata;

    .line 228
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "redirectLocation"    # Ljava/lang/String;

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 190
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->bucketName:Ljava/lang/String;

    .line 191
    iput-object p2, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->key:Ljava/lang/String;

    .line 192
    iput-object p3, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->redirectLocation:Ljava/lang/String;

    .line 193
    return-void
.end method


# virtual methods
.method public getAccessControlList()Lcom/amazonaws/services/s3/model/AccessControlList;
    .locals 1

    .prologue
    .line 642
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->accessControlList:Lcom/amazonaws/services/s3/model/AccessControlList;

    return-object v0
.end method

.method public getBucketName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getCannedAcl()Lcom/amazonaws/services/s3/model/CannedAccessControlList;
    .locals 1

    .prologue
    .line 599
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->cannedAcl:Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->file:Ljava/io/File;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 685
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->inputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->metadata:Lcom/amazonaws/services/s3/model/ObjectMetadata;

    return-object v0
.end method

.method public getProgressListener()Lcom/amazonaws/services/s3/model/ProgressListener;
    .locals 1

    .prologue
    .line 781
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->progressListener:Lcom/amazonaws/services/s3/model/ProgressListener;

    return-object v0
.end method

.method public getRedirectLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 747
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->redirectLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getStorageClass()Ljava/lang/String;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->storageClass:Ljava/lang/String;

    return-object v0
.end method

.method public setAccessControlList(Lcom/amazonaws/services/s3/model/AccessControlList;)V
    .locals 0
    .param p1, "accessControlList"    # Lcom/amazonaws/services/s3/model/AccessControlList;

    .prologue
    .line 653
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->accessControlList:Lcom/amazonaws/services/s3/model/AccessControlList;

    .line 654
    return-void
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 261
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->bucketName:Ljava/lang/String;

    .line 262
    return-void
.end method

.method public setCannedAcl(Lcom/amazonaws/services/s3/model/CannedAccessControlList;)V
    .locals 0
    .param p1, "cannedAcl"    # Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    .prologue
    .line 614
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->cannedAcl:Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    .line 615
    return-void
.end method

.method public setFile(Ljava/io/File;)V
    .locals 0
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 485
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->file:Ljava/io/File;

    .line 486
    return-void
.end method

.method public setInputStream(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 704
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->inputStream:Ljava/io/InputStream;

    .line 705
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 311
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->key:Ljava/lang/String;

    .line 312
    return-void
.end method

.method public setMetadata(Lcom/amazonaws/services/s3/model/ObjectMetadata;)V
    .locals 0
    .param p1, "metadata"    # Lcom/amazonaws/services/s3/model/ObjectMetadata;

    .prologue
    .line 556
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->metadata:Lcom/amazonaws/services/s3/model/ObjectMetadata;

    .line 557
    return-void
.end method

.method public setProgressListener(Lcom/amazonaws/services/s3/model/ProgressListener;)V
    .locals 0
    .param p1, "progressListener"    # Lcom/amazonaws/services/s3/model/ProgressListener;

    .prologue
    .line 770
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->progressListener:Lcom/amazonaws/services/s3/model/ProgressListener;

    .line 771
    return-void
.end method

.method public setRedirectLocation(Ljava/lang/String;)V
    .locals 0
    .param p1, "redirectLocation"    # Ljava/lang/String;

    .prologue
    .line 740
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->redirectLocation:Ljava/lang/String;

    .line 741
    return-void
.end method

.method public setStorageClass(Lcom/amazonaws/services/s3/model/StorageClass;)V
    .locals 1
    .param p1, "storageClass"    # Lcom/amazonaws/services/s3/model/StorageClass;

    .prologue
    .line 422
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/StorageClass;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->storageClass:Ljava/lang/String;

    .line 423
    return-void
.end method

.method public setStorageClass(Ljava/lang/String;)V
    .locals 0
    .param p1, "storageClass"    # Ljava/lang/String;

    .prologue
    .line 374
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->storageClass:Ljava/lang/String;

    .line 375
    return-void
.end method

.method public withAccessControlList(Lcom/amazonaws/services/s3/model/AccessControlList;)Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .locals 0
    .param p1, "accessControlList"    # Lcom/amazonaws/services/s3/model/AccessControlList;

    .prologue
    .line 665
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->setAccessControlList(Lcom/amazonaws/services/s3/model/AccessControlList;)V

    .line 666
    return-object p0
.end method

.method public withBucketName(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 285
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->setBucketName(Ljava/lang/String;)V

    .line 286
    return-object p0
.end method

.method public withCannedAcl(Lcom/amazonaws/services/s3/model/CannedAccessControlList;)Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .locals 0
    .param p1, "cannedAcl"    # Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    .prologue
    .line 633
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->setCannedAcl(Lcom/amazonaws/services/s3/model/CannedAccessControlList;)V

    .line 634
    return-object p0
.end method

.method public withFile(Ljava/io/File;)Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .locals 0
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 508
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->setFile(Ljava/io/File;)V

    .line 509
    return-object p0
.end method

.method public withInputStream(Ljava/io/InputStream;)Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .locals 0
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 729
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->setInputStream(Ljava/io/InputStream;)V

    .line 730
    return-object p0
.end method

.method public withKey(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 328
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->setKey(Ljava/lang/String;)V

    .line 329
    return-object p0
.end method

.method public withMetadata(Lcom/amazonaws/services/s3/model/ObjectMetadata;)Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .locals 0
    .param p1, "metadata"    # Lcom/amazonaws/services/s3/model/ObjectMetadata;

    .prologue
    .line 584
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->setMetadata(Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    .line 585
    return-object p0
.end method

.method public withProgressListener(Lcom/amazonaws/services/s3/model/ProgressListener;)Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .locals 0
    .param p1, "progressListener"    # Lcom/amazonaws/services/s3/model/ProgressListener;

    .prologue
    .line 795
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->setProgressListener(Lcom/amazonaws/services/s3/model/ProgressListener;)V

    .line 796
    return-object p0
.end method

.method public withRedirectLocation(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .locals 0
    .param p1, "redirectLocation"    # Ljava/lang/String;

    .prologue
    .line 758
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->redirectLocation:Ljava/lang/String;

    .line 759
    return-object p0
.end method

.method public withStorageClass(Lcom/amazonaws/services/s3/model/StorageClass;)Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .locals 0
    .param p1, "storageClass"    # Lcom/amazonaws/services/s3/model/StorageClass;

    .prologue
    .line 447
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->setStorageClass(Lcom/amazonaws/services/s3/model/StorageClass;)V

    .line 448
    return-object p0
.end method

.method public withStorageClass(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .locals 0
    .param p1, "storageClass"    # Ljava/lang/String;

    .prologue
    .line 399
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->setStorageClass(Ljava/lang/String;)V

    .line 400
    return-object p0
.end method
