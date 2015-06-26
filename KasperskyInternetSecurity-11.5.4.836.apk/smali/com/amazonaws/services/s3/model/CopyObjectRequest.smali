.class public Lcom/amazonaws/services/s3/model/CopyObjectRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "CopyObjectRequest.java"


# instance fields
.field private accessControlList:Lcom/amazonaws/services/s3/model/AccessControlList;

.field private cannedACL:Lcom/amazonaws/services/s3/model/CannedAccessControlList;

.field private destinationBucketName:Ljava/lang/String;

.field private destinationKey:Ljava/lang/String;

.field private matchingETagConstraints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private modifiedSinceConstraint:Ljava/util/Date;

.field private newObjectMetadata:Lcom/amazonaws/services/s3/model/ObjectMetadata;

.field private nonmatchingEtagConstraints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private redirectLocation:Ljava/lang/String;

.field private sourceBucketName:Ljava/lang/String;

.field private sourceKey:Ljava/lang/String;

.field private sourceVersionId:Ljava/lang/String;

.field private storageClass:Ljava/lang/String;

.field private unmodifiedSinceConstraint:Ljava/util/Date;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "sourceBucketName"    # Ljava/lang/String;
    .param p2, "sourceKey"    # Ljava/lang/String;
    .param p3, "destinationBucketName"    # Ljava/lang/String;
    .param p4, "destinationKey"    # Ljava/lang/String;

    .prologue
    .line 149
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "sourceBucketName"    # Ljava/lang/String;
    .param p2, "sourceKey"    # Ljava/lang/String;
    .param p3, "sourceVersionId"    # Ljava/lang/String;
    .param p4, "destinationBucketName"    # Ljava/lang/String;
    .param p5, "destinationKey"    # Ljava/lang/String;

    .prologue
    .line 177
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->matchingETagConstraints:Ljava/util/List;

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->nonmatchingEtagConstraints:Ljava/util/List;

    .line 178
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->sourceBucketName:Ljava/lang/String;

    .line 179
    iput-object p2, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->sourceKey:Ljava/lang/String;

    .line 180
    iput-object p3, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->sourceVersionId:Ljava/lang/String;

    .line 181
    iput-object p4, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->destinationBucketName:Ljava/lang/String;

    .line 182
    iput-object p5, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->destinationKey:Ljava/lang/String;

    .line 183
    return-void
.end method


# virtual methods
.method public getAccessControlList()Lcom/amazonaws/services/s3/model/AccessControlList;
    .locals 1

    .prologue
    .line 598
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->accessControlList:Lcom/amazonaws/services/s3/model/AccessControlList;

    return-object v0
.end method

.method public getCannedAccessControlList()Lcom/amazonaws/services/s3/model/CannedAccessControlList;
    .locals 1

    .prologue
    .line 561
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->cannedACL:Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    return-object v0
.end method

.method public getDestinationBucketName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->destinationBucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getDestinationKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->destinationKey:Ljava/lang/String;

    return-object v0
.end method

.method public getMatchingETagConstraints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 692
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->matchingETagConstraints:Ljava/util/List;

    return-object v0
.end method

.method public getModifiedSinceConstraint()Ljava/util/Date;
    .locals 1

    .prologue
    .line 898
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->modifiedSinceConstraint:Ljava/util/Date;

    return-object v0
.end method

.method public getNewObjectMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;
    .locals 1

    .prologue
    .line 634
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->newObjectMetadata:Lcom/amazonaws/services/s3/model/ObjectMetadata;

    return-object v0
.end method

.method public getNonmatchingETagConstraints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 761
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->nonmatchingEtagConstraints:Ljava/util/List;

    return-object v0
.end method

.method public getRedirectLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 966
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->redirectLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceBucketName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->sourceBucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->sourceKey:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceVersionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->sourceVersionId:Ljava/lang/String;

    return-object v0
.end method

.method public getStorageClass()Ljava/lang/String;
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->storageClass:Ljava/lang/String;

    return-object v0
.end method

.method public getUnmodifiedSinceConstraint()Ljava/util/Date;
    .locals 1

    .prologue
    .line 828
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->unmodifiedSinceConstraint:Ljava/util/Date;

    return-object v0
.end method

.method public setAccessControlList(Lcom/amazonaws/services/s3/model/AccessControlList;)V
    .locals 0
    .param p1, "accessControlList"    # Lcom/amazonaws/services/s3/model/AccessControlList;

    .prologue
    .line 609
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->accessControlList:Lcom/amazonaws/services/s3/model/AccessControlList;

    .line 610
    return-void
.end method

.method public setCannedAccessControlList(Lcom/amazonaws/services/s3/model/CannedAccessControlList;)V
    .locals 0
    .param p1, "cannedACL"    # Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    .prologue
    .line 574
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->cannedACL:Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    .line 575
    return-void
.end method

.method public setDestinationBucketName(Ljava/lang/String;)V
    .locals 0
    .param p1, "destinationBucketName"    # Ljava/lang/String;

    .prologue
    .line 379
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->destinationBucketName:Ljava/lang/String;

    .line 380
    return-void
.end method

.method public setDestinationKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "destinationKey"    # Ljava/lang/String;

    .prologue
    .line 423
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->destinationKey:Ljava/lang/String;

    .line 424
    return-void
.end method

.method public setMatchingETagConstraints(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 715
    .local p1, "eTagList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->matchingETagConstraints:Ljava/util/List;

    .line 716
    return-void
.end method

.method public setModifiedSinceConstraint(Ljava/util/Date;)V
    .locals 0
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 921
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->modifiedSinceConstraint:Ljava/util/Date;

    .line 922
    return-void
.end method

.method public setNewObjectMetadata(Lcom/amazonaws/services/s3/model/ObjectMetadata;)V
    .locals 0
    .param p1, "newObjectMetadata"    # Lcom/amazonaws/services/s3/model/ObjectMetadata;

    .prologue
    .line 650
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->newObjectMetadata:Lcom/amazonaws/services/s3/model/ObjectMetadata;

    .line 651
    return-void
.end method

.method public setNonmatchingETagConstraints(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 783
    .local p1, "eTagList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->nonmatchingEtagConstraints:Ljava/util/List;

    .line 784
    return-void
.end method

.method public setRedirectLocation(Ljava/lang/String;)V
    .locals 0
    .param p1, "redirectLocation"    # Ljava/lang/String;

    .prologue
    .line 959
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->redirectLocation:Ljava/lang/String;

    .line 960
    return-void
.end method

.method public setSourceBucketName(Ljava/lang/String;)V
    .locals 0
    .param p1, "sourceBucketName"    # Ljava/lang/String;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->sourceBucketName:Ljava/lang/String;

    .line 206
    return-void
.end method

.method public setSourceKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "sourceKey"    # Ljava/lang/String;

    .prologue
    .line 249
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->sourceKey:Ljava/lang/String;

    .line 250
    return-void
.end method

.method public setSourceVersionId(Ljava/lang/String;)V
    .locals 0
    .param p1, "sourceVersionId"    # Ljava/lang/String;

    .prologue
    .line 321
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->sourceVersionId:Ljava/lang/String;

    .line 322
    return-void
.end method

.method public setStorageClass(Lcom/amazonaws/services/s3/model/StorageClass;)V
    .locals 1
    .param p1, "storageClass"    # Lcom/amazonaws/services/s3/model/StorageClass;

    .prologue
    .line 527
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/StorageClass;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->storageClass:Ljava/lang/String;

    .line 528
    return-void
.end method

.method public setStorageClass(Ljava/lang/String;)V
    .locals 0
    .param p1, "storageClass"    # Ljava/lang/String;

    .prologue
    .line 486
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->storageClass:Ljava/lang/String;

    .line 487
    return-void
.end method

.method public setUnmodifiedSinceConstraint(Ljava/util/Date;)V
    .locals 0
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 851
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->unmodifiedSinceConstraint:Ljava/util/Date;

    .line 852
    return-void
.end method

.method public withAccessControlList(Lcom/amazonaws/services/s3/model/AccessControlList;)Lcom/amazonaws/services/s3/model/CopyObjectRequest;
    .locals 0
    .param p1, "accessControlList"    # Lcom/amazonaws/services/s3/model/AccessControlList;

    .prologue
    .line 621
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->setAccessControlList(Lcom/amazonaws/services/s3/model/AccessControlList;)V

    .line 622
    return-object p0
.end method

.method public withCannedAccessControlList(Lcom/amazonaws/services/s3/model/CannedAccessControlList;)Lcom/amazonaws/services/s3/model/CopyObjectRequest;
    .locals 0
    .param p1, "cannedACL"    # Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    .prologue
    .line 589
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->setCannedAccessControlList(Lcom/amazonaws/services/s3/model/CannedAccessControlList;)V

    .line 590
    return-object p0
.end method

.method public withDestinationBucketName(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/CopyObjectRequest;
    .locals 0
    .param p1, "destinationBucketName"    # Ljava/lang/String;

    .prologue
    .line 395
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->setDestinationBucketName(Ljava/lang/String;)V

    .line 396
    return-object p0
.end method

.method public withDestinationKey(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/CopyObjectRequest;
    .locals 0
    .param p1, "destinationKey"    # Ljava/lang/String;

    .prologue
    .line 439
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->setDestinationKey(Ljava/lang/String;)V

    .line 440
    return-object p0
.end method

.method public withMatchingETagConstraint(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/CopyObjectRequest;
    .locals 1
    .param p1, "eTag"    # Ljava/lang/String;

    .prologue
    .line 739
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->matchingETagConstraints:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 740
    return-object p0
.end method

.method public withModifiedSinceConstraint(Ljava/util/Date;)Lcom/amazonaws/services/s3/model/CopyObjectRequest;
    .locals 0
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 948
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->setModifiedSinceConstraint(Ljava/util/Date;)V

    .line 949
    return-object p0
.end method

.method public withNewObjectMetadata(Lcom/amazonaws/services/s3/model/ObjectMetadata;)Lcom/amazonaws/services/s3/model/CopyObjectRequest;
    .locals 0
    .param p1, "newObjectMetadata"    # Lcom/amazonaws/services/s3/model/ObjectMetadata;

    .prologue
    .line 667
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->setNewObjectMetadata(Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    .line 668
    return-object p0
.end method

.method public withNonmatchingETagConstraint(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/CopyObjectRequest;
    .locals 1
    .param p1, "eTag"    # Ljava/lang/String;

    .prologue
    .line 808
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->nonmatchingEtagConstraints:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 809
    return-object p0
.end method

.method public withRedirectLocation(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/CopyObjectRequest;
    .locals 0
    .param p1, "redirectLocation"    # Ljava/lang/String;

    .prologue
    .line 977
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->redirectLocation:Ljava/lang/String;

    .line 978
    return-object p0
.end method

.method public withSourceBucketName(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/CopyObjectRequest;
    .locals 0
    .param p1, "sourceBucketName"    # Ljava/lang/String;

    .prologue
    .line 221
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->setSourceBucketName(Ljava/lang/String;)V

    .line 222
    return-object p0
.end method

.method public withSourceKey(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/CopyObjectRequest;
    .locals 0
    .param p1, "sourceKey"    # Ljava/lang/String;

    .prologue
    .line 265
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->setSourceKey(Ljava/lang/String;)V

    .line 266
    return-object p0
.end method

.method public withSourceVersionId(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/CopyObjectRequest;
    .locals 0
    .param p1, "sourceVersionId"    # Ljava/lang/String;

    .prologue
    .line 351
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->setSourceVersionId(Ljava/lang/String;)V

    .line 352
    return-object p0
.end method

.method public withStorageClass(Lcom/amazonaws/services/s3/model/StorageClass;)Lcom/amazonaws/services/s3/model/CopyObjectRequest;
    .locals 0
    .param p1, "storageClass"    # Lcom/amazonaws/services/s3/model/StorageClass;

    .prologue
    .line 546
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->setStorageClass(Lcom/amazonaws/services/s3/model/StorageClass;)V

    .line 547
    return-object p0
.end method

.method public withStorageClass(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/CopyObjectRequest;
    .locals 0
    .param p1, "storageClass"    # Ljava/lang/String;

    .prologue
    .line 505
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->setStorageClass(Ljava/lang/String;)V

    .line 506
    return-object p0
.end method

.method public withUnmodifiedSinceConstraint(Ljava/util/Date;)Lcom/amazonaws/services/s3/model/CopyObjectRequest;
    .locals 0
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 878
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->setUnmodifiedSinceConstraint(Ljava/util/Date;)V

    .line 879
    return-object p0
.end method
