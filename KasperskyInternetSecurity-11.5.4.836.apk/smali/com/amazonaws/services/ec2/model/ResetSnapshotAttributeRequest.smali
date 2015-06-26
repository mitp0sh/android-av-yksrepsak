.class public Lcom/amazonaws/services/ec2/model/ResetSnapshotAttributeRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "ResetSnapshotAttributeRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private attribute:Ljava/lang/String;

.field private snapshotId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/amazonaws/services/ec2/model/SnapshotAttributeName;)V
    .locals 1
    .param p1, "snapshotId"    # Ljava/lang/String;
    .param p2, "attribute"    # Lcom/amazonaws/services/ec2/model/SnapshotAttributeName;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ResetSnapshotAttributeRequest;->snapshotId:Ljava/lang/String;

    .line 78
    invoke-virtual {p2}, Lcom/amazonaws/services/ec2/model/SnapshotAttributeName;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/ResetSnapshotAttributeRequest;->attribute:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "snapshotId"    # Ljava/lang/String;
    .param p2, "attribute"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ResetSnapshotAttributeRequest;->snapshotId:Ljava/lang/String;

    .line 61
    iput-object p2, p0, Lcom/amazonaws/services/ec2/model/ResetSnapshotAttributeRequest;->attribute:Ljava/lang/String;

    .line 62
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 238
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 248
    :cond_0
    :goto_0
    return v3

    .line 239
    :cond_1
    if-eqz p1, :cond_0

    .line 241
    instance-of v1, p1, Lcom/amazonaws/services/ec2/model/ResetSnapshotAttributeRequest;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 242
    check-cast v0, Lcom/amazonaws/services/ec2/model/ResetSnapshotAttributeRequest;

    .line 244
    .local v0, "other":Lcom/amazonaws/services/ec2/model/ResetSnapshotAttributeRequest;
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ResetSnapshotAttributeRequest;->getSnapshotId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ResetSnapshotAttributeRequest;->getSnapshotId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_5

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 245
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ResetSnapshotAttributeRequest;->getSnapshotId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ResetSnapshotAttributeRequest;->getSnapshotId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ResetSnapshotAttributeRequest;->getSnapshotId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 246
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ResetSnapshotAttributeRequest;->getAttribute()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ResetSnapshotAttributeRequest;->getAttribute()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_7

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 247
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ResetSnapshotAttributeRequest;->getAttribute()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ResetSnapshotAttributeRequest;->getAttribute()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ResetSnapshotAttributeRequest;->getAttribute()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    move v3, v2

    .line 248
    goto :goto_0

    :cond_4
    move v1, v3

    .line 244
    goto :goto_1

    :cond_5
    move v4, v3

    goto :goto_2

    :cond_6
    move v1, v3

    .line 246
    goto :goto_3

    :cond_7
    move v4, v3

    goto :goto_4
.end method

.method public getAttribute()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ResetSnapshotAttributeRequest;->attribute:Ljava/lang/String;

    return-object v0
.end method

.method public getSnapshotId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ResetSnapshotAttributeRequest;->snapshotId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 228
    const/16 v1, 0x1f

    .line 229
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 231
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ResetSnapshotAttributeRequest;->getSnapshotId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 232
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ResetSnapshotAttributeRequest;->getAttribute()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    :goto_1
    add-int v0, v2, v3

    .line 233
    return v0

    .line 231
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ResetSnapshotAttributeRequest;->getSnapshotId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 232
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ResetSnapshotAttributeRequest;->getAttribute()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_1
.end method

.method public setAttribute(Lcom/amazonaws/services/ec2/model/SnapshotAttributeName;)V
    .locals 1
    .param p1, "attribute"    # Lcom/amazonaws/services/ec2/model/SnapshotAttributeName;

    .prologue
    .line 183
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/SnapshotAttributeName;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/ResetSnapshotAttributeRequest;->attribute:Ljava/lang/String;

    .line 184
    return-void
.end method

.method public setAttribute(Ljava/lang/String;)V
    .locals 0
    .param p1, "attribute"    # Ljava/lang/String;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ResetSnapshotAttributeRequest;->attribute:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public setSnapshotId(Ljava/lang/String;)V
    .locals 0
    .param p1, "snapshotId"    # Ljava/lang/String;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ResetSnapshotAttributeRequest;->snapshotId:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 219
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ResetSnapshotAttributeRequest;->getSnapshotId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SnapshotId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ResetSnapshotAttributeRequest;->getSnapshotId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ResetSnapshotAttributeRequest;->getAttribute()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attribute: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ResetSnapshotAttributeRequest;->getAttribute()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    :cond_1
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withAttribute(Lcom/amazonaws/services/ec2/model/SnapshotAttributeName;)Lcom/amazonaws/services/ec2/model/ResetSnapshotAttributeRequest;
    .locals 1
    .param p1, "attribute"    # Lcom/amazonaws/services/ec2/model/SnapshotAttributeName;

    .prologue
    .line 204
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/SnapshotAttributeName;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/ResetSnapshotAttributeRequest;->attribute:Ljava/lang/String;

    .line 205
    return-object p0
.end method

.method public withAttribute(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/ResetSnapshotAttributeRequest;
    .locals 0
    .param p1, "attribute"    # Ljava/lang/String;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ResetSnapshotAttributeRequest;->attribute:Ljava/lang/String;

    .line 166
    return-object p0
.end method

.method public withSnapshotId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/ResetSnapshotAttributeRequest;
    .locals 0
    .param p1, "snapshotId"    # Ljava/lang/String;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ResetSnapshotAttributeRequest;->snapshotId:Ljava/lang/String;

    .line 111
    return-object p0
.end method
