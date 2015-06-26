.class public Lcom/amazonaws/services/s3/model/CopyPartRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "CopyPartRequest.java"


# instance fields
.field private destinationBucketName:Ljava/lang/String;

.field private destinationKey:Ljava/lang/String;

.field private firstByte:Ljava/lang/Long;

.field private lastByte:Ljava/lang/Long;

.field private final matchingETagConstraints:Ljava/util/List;
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

.field private final nonmatchingEtagConstraints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private partNumber:I

.field private sourceBucketName:Ljava/lang/String;

.field private sourceKey:Ljava/lang/String;

.field private sourceVersionId:Ljava/lang/String;

.field private unmodifiedSinceConstraint:Ljava/util/Date;

.field private uploadId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->matchingETagConstraints:Ljava/util/List;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->nonmatchingEtagConstraints:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getDestinationBucketName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->destinationBucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getDestinationKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->destinationKey:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstByte()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->firstByte:Ljava/lang/Long;

    return-object v0
.end method

.method public getLastByte()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->lastByte:Ljava/lang/Long;

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
    .line 538
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->matchingETagConstraints:Ljava/util/List;

    return-object v0
.end method

.method public getModifiedSinceConstraint()Ljava/util/Date;
    .locals 1

    .prologue
    .line 743
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->modifiedSinceConstraint:Ljava/util/Date;

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
    .line 607
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->nonmatchingEtagConstraints:Ljava/util/List;

    return-object v0
.end method

.method public getPartNumber()I
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->partNumber:I

    return v0
.end method

.method public getSourceBucketName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->sourceBucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->sourceKey:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceVersionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->sourceVersionId:Ljava/lang/String;

    return-object v0
.end method

.method public getUnmodifiedSinceConstraint()Ljava/util/Date;
    .locals 1

    .prologue
    .line 674
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->unmodifiedSinceConstraint:Ljava/util/Date;

    return-object v0
.end method

.method public getUploadId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->uploadId:Ljava/lang/String;

    return-object v0
.end method

.method public setDestinationBucketName(Ljava/lang/String;)V
    .locals 0
    .param p1, "destinationBucketName"    # Ljava/lang/String;

    .prologue
    .line 393
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->destinationBucketName:Ljava/lang/String;

    .line 394
    return-void
.end method

.method public setDestinationKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "destinationKey"    # Ljava/lang/String;

    .prologue
    .line 437
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->destinationKey:Ljava/lang/String;

    .line 438
    return-void
.end method

.method public setFirstByte(Ljava/lang/Long;)V
    .locals 0
    .param p1, "firstByte"    # Ljava/lang/Long;

    .prologue
    .line 476
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->firstByte:Ljava/lang/Long;

    .line 477
    return-void
.end method

.method public setLastByte(Ljava/lang/Long;)V
    .locals 0
    .param p1, "lastByte"    # Ljava/lang/Long;

    .prologue
    .line 507
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->lastByte:Ljava/lang/Long;

    .line 508
    return-void
.end method

.method public setMatchingETagConstraints(Ljava/util/List;)V
    .locals 1
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
    .line 561
    .local p1, "eTagList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->matchingETagConstraints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 562
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->matchingETagConstraints:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 563
    return-void
.end method

.method public setModifiedSinceConstraint(Ljava/util/Date;)V
    .locals 0
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 766
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->modifiedSinceConstraint:Ljava/util/Date;

    .line 767
    return-void
.end method

.method public setNonmatchingETagConstraints(Ljava/util/List;)V
    .locals 1
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
    .line 629
    .local p1, "eTagList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->nonmatchingEtagConstraints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 630
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->nonmatchingEtagConstraints:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 631
    return-void
.end method

.method public setPartNumber(I)V
    .locals 0
    .param p1, "partNumber"    # I

    .prologue
    .line 186
    iput p1, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->partNumber:I

    .line 187
    return-void
.end method

.method public setSourceBucketName(Ljava/lang/String;)V
    .locals 0
    .param p1, "sourceBucketName"    # Ljava/lang/String;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->sourceBucketName:Ljava/lang/String;

    .line 226
    return-void
.end method

.method public setSourceKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "sourceKey"    # Ljava/lang/String;

    .prologue
    .line 265
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->sourceKey:Ljava/lang/String;

    .line 266
    return-void
.end method

.method public setSourceVersionId(Ljava/lang/String;)V
    .locals 0
    .param p1, "sourceVersionId"    # Ljava/lang/String;

    .prologue
    .line 336
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->sourceVersionId:Ljava/lang/String;

    .line 337
    return-void
.end method

.method public setUnmodifiedSinceConstraint(Ljava/util/Date;)V
    .locals 0
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 697
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->unmodifiedSinceConstraint:Ljava/util/Date;

    .line 698
    return-void
.end method

.method public setUploadId(Ljava/lang/String;)V
    .locals 0
    .param p1, "uploadId"    # Ljava/lang/String;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->uploadId:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public withDestinationBucketName(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/CopyPartRequest;
    .locals 0
    .param p1, "destinationBucketName"    # Ljava/lang/String;

    .prologue
    .line 409
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->setDestinationBucketName(Ljava/lang/String;)V

    .line 410
    return-object p0
.end method

.method public withDestinationKey(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/CopyPartRequest;
    .locals 0
    .param p1, "destinationKey"    # Ljava/lang/String;

    .prologue
    .line 453
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->setDestinationKey(Ljava/lang/String;)V

    .line 454
    return-object p0
.end method

.method public withFirstByte(Ljava/lang/Long;)Lcom/amazonaws/services/s3/model/CopyPartRequest;
    .locals 0
    .param p1, "firstByte"    # Ljava/lang/Long;

    .prologue
    .line 490
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->firstByte:Ljava/lang/Long;

    .line 491
    return-object p0
.end method

.method public withLastByte(Ljava/lang/Long;)Lcom/amazonaws/services/s3/model/CopyPartRequest;
    .locals 0
    .param p1, "lastByte"    # Ljava/lang/Long;

    .prologue
    .line 517
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->lastByte:Ljava/lang/Long;

    .line 518
    return-object p0
.end method

.method public withMatchingETagConstraint(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/CopyPartRequest;
    .locals 1
    .param p1, "eTag"    # Ljava/lang/String;

    .prologue
    .line 585
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->matchingETagConstraints:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 586
    return-object p0
.end method

.method public withModifiedSinceConstraint(Ljava/util/Date;)Lcom/amazonaws/services/s3/model/CopyPartRequest;
    .locals 0
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 792
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->setModifiedSinceConstraint(Ljava/util/Date;)V

    .line 793
    return-object p0
.end method

.method public withNonmatchingETagConstraint(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/CopyPartRequest;
    .locals 1
    .param p1, "eTag"    # Ljava/lang/String;

    .prologue
    .line 654
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->nonmatchingEtagConstraints:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 655
    return-object p0
.end method

.method public withPartNumber(I)Lcom/amazonaws/services/s3/model/CopyPartRequest;
    .locals 0
    .param p1, "partNumber"    # I

    .prologue
    .line 202
    iput p1, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->partNumber:I

    .line 203
    return-object p0
.end method

.method public withSourceBucketName(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/CopyPartRequest;
    .locals 0
    .param p1, "sourceBucketName"    # Ljava/lang/String;

    .prologue
    .line 239
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->sourceBucketName:Ljava/lang/String;

    .line 240
    return-object p0
.end method

.method public withSourceKey(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/CopyPartRequest;
    .locals 0
    .param p1, "sourceKey"    # Ljava/lang/String;

    .prologue
    .line 280
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->sourceKey:Ljava/lang/String;

    .line 281
    return-object p0
.end method

.method public withSourceVersionId(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/CopyPartRequest;
    .locals 0
    .param p1, "sourceVersionId"    # Ljava/lang/String;

    .prologue
    .line 365
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->sourceVersionId:Ljava/lang/String;

    .line 366
    return-object p0
.end method

.method public withUnmodifiedSinceConstraint(Ljava/util/Date;)Lcom/amazonaws/services/s3/model/CopyPartRequest;
    .locals 0
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 723
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->setUnmodifiedSinceConstraint(Ljava/util/Date;)V

    .line 724
    return-object p0
.end method

.method public withUploadId(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/CopyPartRequest;
    .locals 0
    .param p1, "uploadId"    # Ljava/lang/String;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyPartRequest;->uploadId:Ljava/lang/String;

    .line 159
    return-object p0
.end method
