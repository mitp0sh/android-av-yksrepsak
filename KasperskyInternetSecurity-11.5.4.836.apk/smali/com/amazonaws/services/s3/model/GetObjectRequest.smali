.class public Lcom/amazonaws/services/s3/model/GetObjectRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "GetObjectRequest.java"


# instance fields
.field private bucketName:Ljava/lang/String;

.field private key:Ljava/lang/String;

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

.field private progressListener:Lcom/amazonaws/services/s3/model/ProgressListener;

.field private range:[J

.field private responseHeaders:Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;

.field private unmodifiedSinceConstraint:Ljava/util/Date;

.field private versionId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 112
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/amazonaws/services/s3/model/GetObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "versionId"    # Ljava/lang/String;

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->matchingETagConstraints:Ljava/util/List;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->nonmatchingEtagConstraints:Ljava/util/List;

    .line 130
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->setBucketName(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0, p2}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->setKey(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0, p3}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->setVersionId(Ljava/lang/String;)V

    .line 133
    return-void
.end method


# virtual methods
.method public getBucketName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->key:Ljava/lang/String;

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
    .line 414
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->matchingETagConstraints:Ljava/util/List;

    return-object v0
.end method

.method public getModifiedSinceConstraint()Ljava/util/Date;
    .locals 1

    .prologue
    .line 598
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->modifiedSinceConstraint:Ljava/util/Date;

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
    .line 476
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->nonmatchingEtagConstraints:Ljava/util/List;

    return-object v0
.end method

.method public getProgressListener()Lcom/amazonaws/services/s3/model/ProgressListener;
    .locals 1

    .prologue
    .line 699
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->progressListener:Lcom/amazonaws/services/s3/model/ProgressListener;

    return-object v0
.end method

.method public getRange()[J
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->range:[J

    return-object v0
.end method

.method public getResponseHeaders()Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;
    .locals 1

    .prologue
    .line 652
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->responseHeaders:Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;

    return-object v0
.end method

.method public getUnmodifiedSinceConstraint()Ljava/util/Date;
    .locals 1

    .prologue
    .line 538
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->unmodifiedSinceConstraint:Ljava/util/Date;

    return-object v0
.end method

.method public getVersionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->versionId:Ljava/lang/String;

    return-object v0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->bucketName:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->key:Ljava/lang/String;

    .line 202
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
    .line 433
    .local p1, "eTagList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->matchingETagConstraints:Ljava/util/List;

    .line 434
    return-void
.end method

.method public setModifiedSinceConstraint(Ljava/util/Date;)V
    .locals 0
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 618
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->modifiedSinceConstraint:Ljava/util/Date;

    .line 619
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
    .line 495
    .local p1, "eTagList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->nonmatchingEtagConstraints:Ljava/util/List;

    .line 496
    return-void
.end method

.method public setProgressListener(Lcom/amazonaws/services/s3/model/ProgressListener;)V
    .locals 0
    .param p1, "progressListener"    # Lcom/amazonaws/services/s3/model/ProgressListener;

    .prologue
    .line 688
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->progressListener:Lcom/amazonaws/services/s3/model/ProgressListener;

    .line 689
    return-void
.end method

.method public setRange(JJ)V
    .locals 2
    .param p1, "start"    # J
    .param p3, "end"    # J

    .prologue
    .line 364
    const/4 v0, 0x2

    new-array v0, v0, [J

    const/4 v1, 0x0

    aput-wide p1, v0, v1

    const/4 v1, 0x1

    aput-wide p3, v0, v1

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->range:[J

    .line 365
    return-void
.end method

.method public setResponseHeaders(Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;)V
    .locals 0
    .param p1, "responseHeaders"    # Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;

    .prologue
    .line 662
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->responseHeaders:Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;

    .line 663
    return-void
.end method

.method public setUnmodifiedSinceConstraint(Ljava/util/Date;)V
    .locals 0
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 557
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->unmodifiedSinceConstraint:Ljava/util/Date;

    .line 558
    return-void
.end method

.method public setVersionId(Ljava/lang/String;)V
    .locals 0
    .param p1, "versionId"    # Ljava/lang/String;

    .prologue
    .line 274
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->versionId:Ljava/lang/String;

    .line 275
    return-void
.end method

.method public withBucketName(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/GetObjectRequest;
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 175
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->setBucketName(Ljava/lang/String;)V

    .line 176
    return-object p0
.end method

.method public withKey(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/GetObjectRequest;
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 219
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->setKey(Ljava/lang/String;)V

    .line 220
    return-object p0
.end method

.method public withMatchingETagConstraint(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/GetObjectRequest;
    .locals 1
    .param p1, "eTag"    # Ljava/lang/String;

    .prologue
    .line 457
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->matchingETagConstraints:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 458
    return-object p0
.end method

.method public withModifiedSinceConstraint(Ljava/util/Date;)Lcom/amazonaws/services/s3/model/GetObjectRequest;
    .locals 0
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 642
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->setModifiedSinceConstraint(Ljava/util/Date;)V

    .line 643
    return-object p0
.end method

.method public withNonmatchingETagConstraint(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/GetObjectRequest;
    .locals 1
    .param p1, "eTag"    # Ljava/lang/String;

    .prologue
    .line 521
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->nonmatchingEtagConstraints:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 522
    return-object p0
.end method

.method public withProgressListener(Lcom/amazonaws/services/s3/model/ProgressListener;)Lcom/amazonaws/services/s3/model/GetObjectRequest;
    .locals 0
    .param p1, "progressListener"    # Lcom/amazonaws/services/s3/model/ProgressListener;

    .prologue
    .line 713
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->setProgressListener(Lcom/amazonaws/services/s3/model/ProgressListener;)V

    .line 714
    return-object p0
.end method

.method public withRange(JJ)Lcom/amazonaws/services/s3/model/GetObjectRequest;
    .locals 0
    .param p1, "start"    # J
    .param p3, "end"    # J

    .prologue
    .line 396
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->setRange(JJ)V

    .line 397
    return-object p0
.end method

.method public withResponseHeaders(Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;)Lcom/amazonaws/services/s3/model/GetObjectRequest;
    .locals 0
    .param p1, "responseHeaders"    # Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;

    .prologue
    .line 676
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->setResponseHeaders(Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;)V

    .line 677
    return-object p0
.end method

.method public withUnmodifiedSinceConstraint(Ljava/util/Date;)Lcom/amazonaws/services/s3/model/GetObjectRequest;
    .locals 0
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 581
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->setUnmodifiedSinceConstraint(Ljava/util/Date;)V

    .line 582
    return-object p0
.end method

.method public withVersionId(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/GetObjectRequest;
    .locals 0
    .param p1, "versionId"    # Ljava/lang/String;

    .prologue
    .line 307
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->setVersionId(Ljava/lang/String;)V

    .line 308
    return-object p0
.end method
