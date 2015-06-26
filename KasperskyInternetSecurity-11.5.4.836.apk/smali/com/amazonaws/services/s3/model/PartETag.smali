.class public Lcom/amazonaws/services/s3/model/PartETag;
.super Ljava/lang/Object;
.source "PartETag.java"


# instance fields
.field private eTag:Ljava/lang/String;

.field private partNumber:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "partNumber"    # I
    .param p2, "eTag"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Lcom/amazonaws/services/s3/model/PartETag;->partNumber:I

    .line 41
    iput-object p2, p0, Lcom/amazonaws/services/s3/model/PartETag;->eTag:Ljava/lang/String;

    .line 42
    return-void
.end method


# virtual methods
.method public getETag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/PartETag;->eTag:Ljava/lang/String;

    return-object v0
.end method

.method public getPartNumber()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/amazonaws/services/s3/model/PartETag;->partNumber:I

    return v0
.end method

.method public setETag(Ljava/lang/String;)V
    .locals 0
    .param p1, "eTag"    # Ljava/lang/String;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PartETag;->eTag:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setPartNumber(I)V
    .locals 0
    .param p1, "partNumber"    # I

    .prologue
    .line 61
    iput p1, p0, Lcom/amazonaws/services/s3/model/PartETag;->partNumber:I

    .line 62
    return-void
.end method

.method public withETag(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/PartETag;
    .locals 0
    .param p1, "eTag"    # Ljava/lang/String;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PartETag;->eTag:Ljava/lang/String;

    .line 111
    return-object p0
.end method

.method public withPartNumber(I)Lcom/amazonaws/services/s3/model/PartETag;
    .locals 0
    .param p1, "partNumber"    # I

    .prologue
    .line 74
    iput p1, p0, Lcom/amazonaws/services/s3/model/PartETag;->partNumber:I

    .line 75
    return-object p0
.end method
