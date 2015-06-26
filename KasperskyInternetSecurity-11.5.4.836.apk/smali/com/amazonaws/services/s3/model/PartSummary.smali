.class public Lcom/amazonaws/services/s3/model/PartSummary;
.super Ljava/lang/Object;
.source "PartSummary.java"


# instance fields
.field private eTag:Ljava/lang/String;

.field private lastModified:Ljava/util/Date;

.field private partNumber:I

.field private size:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getETag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/PartSummary;->eTag:Ljava/lang/String;

    return-object v0
.end method

.method public getLastModified()Ljava/util/Date;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/PartSummary;->lastModified:Ljava/util/Date;

    return-object v0
.end method

.method public getPartNumber()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/amazonaws/services/s3/model/PartSummary;->partNumber:I

    return v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 113
    iget-wide v0, p0, Lcom/amazonaws/services/s3/model/PartSummary;->size:J

    return-wide v0
.end method

.method public setETag(Ljava/lang/String;)V
    .locals 0
    .param p1, "eTag"    # Ljava/lang/String;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PartSummary;->eTag:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setLastModified(Ljava/util/Date;)V
    .locals 0
    .param p1, "lastModified"    # Ljava/util/Date;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PartSummary;->lastModified:Ljava/util/Date;

    .line 86
    return-void
.end method

.method public setPartNumber(I)V
    .locals 0
    .param p1, "partNumber"    # I

    .prologue
    .line 66
    iput p1, p0, Lcom/amazonaws/services/s3/model/PartSummary;->partNumber:I

    .line 67
    return-void
.end method

.method public setSize(J)V
    .locals 0
    .param p1, "size"    # J

    .prologue
    .line 123
    iput-wide p1, p0, Lcom/amazonaws/services/s3/model/PartSummary;->size:J

    .line 124
    return-void
.end method
