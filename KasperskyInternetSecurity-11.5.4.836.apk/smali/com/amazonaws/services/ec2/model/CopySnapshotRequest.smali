.class public Lcom/amazonaws/services/ec2/model/CopySnapshotRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "CopySnapshotRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private description:Ljava/lang/String;

.field private sourceRegion:Ljava/lang/String;

.field private sourceSnapshotId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 167
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 179
    :cond_0
    :goto_0
    return v3

    .line 168
    :cond_1
    if-eqz p1, :cond_0

    .line 170
    instance-of v1, p1, Lcom/amazonaws/services/ec2/model/CopySnapshotRequest;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 171
    check-cast v0, Lcom/amazonaws/services/ec2/model/CopySnapshotRequest;

    .line 173
    .local v0, "other":Lcom/amazonaws/services/ec2/model/CopySnapshotRequest;
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/CopySnapshotRequest;->getSourceRegion()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CopySnapshotRequest;->getSourceRegion()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_6

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 174
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/CopySnapshotRequest;->getSourceRegion()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/CopySnapshotRequest;->getSourceRegion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CopySnapshotRequest;->getSourceRegion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 175
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/CopySnapshotRequest;->getSourceSnapshotId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CopySnapshotRequest;->getSourceSnapshotId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_8

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 176
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/CopySnapshotRequest;->getSourceSnapshotId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/CopySnapshotRequest;->getSourceSnapshotId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CopySnapshotRequest;->getSourceSnapshotId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/CopySnapshotRequest;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_9

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CopySnapshotRequest;->getDescription()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_a

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 178
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/CopySnapshotRequest;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/CopySnapshotRequest;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CopySnapshotRequest;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_4
    move v3, v2

    .line 179
    goto :goto_0

    :cond_5
    move v1, v3

    .line 173
    goto :goto_1

    :cond_6
    move v4, v3

    goto :goto_2

    :cond_7
    move v1, v3

    .line 175
    goto :goto_3

    :cond_8
    move v4, v3

    goto :goto_4

    :cond_9
    move v1, v3

    .line 177
    goto :goto_5

    :cond_a
    move v4, v3

    goto :goto_6
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/CopySnapshotRequest;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceRegion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/CopySnapshotRequest;->sourceRegion:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceSnapshotId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/CopySnapshotRequest;->sourceSnapshotId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 156
    const/16 v1, 0x1f

    .line 157
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 159
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CopySnapshotRequest;->getSourceRegion()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 160
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CopySnapshotRequest;->getSourceSnapshotId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 161
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CopySnapshotRequest;->getDescription()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    :goto_2
    add-int v0, v2, v3

    .line 162
    return v0

    .line 159
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CopySnapshotRequest;->getSourceRegion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 160
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CopySnapshotRequest;->getSourceSnapshotId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 161
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CopySnapshotRequest;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_2
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/CopySnapshotRequest;->description:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public setSourceRegion(Ljava/lang/String;)V
    .locals 0
    .param p1, "sourceRegion"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/CopySnapshotRequest;->sourceRegion:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setSourceSnapshotId(Ljava/lang/String;)V
    .locals 0
    .param p1, "sourceSnapshotId"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/CopySnapshotRequest;->sourceSnapshotId:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CopySnapshotRequest;->getSourceRegion()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SourceRegion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CopySnapshotRequest;->getSourceRegion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CopySnapshotRequest;->getSourceSnapshotId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SourceSnapshotId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CopySnapshotRequest;->getSourceSnapshotId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CopySnapshotRequest;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Description: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CopySnapshotRequest;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    :cond_2
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withDescription(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/CopySnapshotRequest;
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/CopySnapshotRequest;->description:Ljava/lang/String;

    .line 131
    return-object p0
.end method

.method public withSourceRegion(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/CopySnapshotRequest;
    .locals 0
    .param p1, "sourceRegion"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/CopySnapshotRequest;->sourceRegion:Ljava/lang/String;

    .line 63
    return-object p0
.end method

.method public withSourceSnapshotId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/CopySnapshotRequest;
    .locals 0
    .param p1, "sourceSnapshotId"    # Ljava/lang/String;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/CopySnapshotRequest;->sourceSnapshotId:Ljava/lang/String;

    .line 97
    return-object p0
.end method
