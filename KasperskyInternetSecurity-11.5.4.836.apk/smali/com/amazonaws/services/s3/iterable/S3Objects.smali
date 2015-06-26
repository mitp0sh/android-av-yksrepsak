.class public Lcom/amazonaws/services/s3/iterable/S3Objects;
.super Ljava/lang/Object;
.source "S3Objects.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/services/s3/iterable/S3Objects$1;,
        Lcom/amazonaws/services/s3/iterable/S3Objects$S3ObjectIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/amazonaws/services/s3/model/S3ObjectSummary;",
        ">;"
    }
.end annotation


# instance fields
.field private batchSize:Ljava/lang/Integer;

.field private bucketName:Ljava/lang/String;

.field private prefix:Ljava/lang/String;

.field private s3:Lcom/amazonaws/services/s3/AmazonS3;


# direct methods
.method private constructor <init>(Lcom/amazonaws/services/s3/AmazonS3;Ljava/lang/String;)V
    .locals 1
    .param p1, "s3"    # Lcom/amazonaws/services/s3/AmazonS3;
    .param p2, "bucketName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object v0, p0, Lcom/amazonaws/services/s3/iterable/S3Objects;->prefix:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcom/amazonaws/services/s3/iterable/S3Objects;->batchSize:Ljava/lang/Integer;

    .line 46
    iput-object p1, p0, Lcom/amazonaws/services/s3/iterable/S3Objects;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    .line 47
    iput-object p2, p0, Lcom/amazonaws/services/s3/iterable/S3Objects;->bucketName:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public static inBucket(Lcom/amazonaws/services/s3/AmazonS3;Ljava/lang/String;)Lcom/amazonaws/services/s3/iterable/S3Objects;
    .locals 1
    .param p0, "s3"    # Lcom/amazonaws/services/s3/AmazonS3;
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 61
    new-instance v0, Lcom/amazonaws/services/s3/iterable/S3Objects;

    invoke-direct {v0, p0, p1}, Lcom/amazonaws/services/s3/iterable/S3Objects;-><init>(Lcom/amazonaws/services/s3/AmazonS3;Ljava/lang/String;)V

    return-object v0
.end method

.method public static withPrefix(Lcom/amazonaws/services/s3/AmazonS3;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/iterable/S3Objects;
    .locals 1
    .param p0, "s3"    # Lcom/amazonaws/services/s3/AmazonS3;
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 77
    new-instance v0, Lcom/amazonaws/services/s3/iterable/S3Objects;

    invoke-direct {v0, p0, p1}, Lcom/amazonaws/services/s3/iterable/S3Objects;-><init>(Lcom/amazonaws/services/s3/AmazonS3;Ljava/lang/String;)V

    .line 78
    .local v0, "objects":Lcom/amazonaws/services/s3/iterable/S3Objects;
    iput-object p2, v0, Lcom/amazonaws/services/s3/iterable/S3Objects;->prefix:Ljava/lang/String;

    .line 79
    return-object v0
.end method


# virtual methods
.method public getBatchSize()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/amazonaws/services/s3/iterable/S3Objects;->batchSize:Ljava/lang/Integer;

    return-object v0
.end method

.method public getBucketName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/amazonaws/services/s3/iterable/S3Objects;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/amazonaws/services/s3/iterable/S3Objects;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public getS3()Lcom/amazonaws/services/s3/AmazonS3;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/amazonaws/services/s3/iterable/S3Objects;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/amazonaws/services/s3/model/S3ObjectSummary;",
            ">;"
        }
    .end annotation

    .prologue
    .line 154
    new-instance v0, Lcom/amazonaws/services/s3/iterable/S3Objects$S3ObjectIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazonaws/services/s3/iterable/S3Objects$S3ObjectIterator;-><init>(Lcom/amazonaws/services/s3/iterable/S3Objects;Lcom/amazonaws/services/s3/iterable/S3Objects$1;)V

    return-object v0
.end method

.method public withBatchSize(I)Lcom/amazonaws/services/s3/iterable/S3Objects;
    .locals 1
    .param p1, "batchSize"    # I

    .prologue
    .line 90
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/s3/iterable/S3Objects;->batchSize:Ljava/lang/Integer;

    .line 91
    return-object p0
.end method