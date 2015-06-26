.class public Lcom/amazonaws/services/ec2/model/ExportToS3TaskSpecification;
.super Ljava/lang/Object;
.source "ExportToS3TaskSpecification.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private containerFormat:Ljava/lang/String;

.field private diskImageFormat:Ljava/lang/String;

.field private s3Bucket:Ljava/lang/String;

.field private s3Prefix:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 299
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 313
    :cond_0
    :goto_0
    return v3

    .line 300
    :cond_1
    if-eqz p1, :cond_0

    .line 302
    instance-of v1, p1, Lcom/amazonaws/services/ec2/model/ExportToS3TaskSpecification;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 303
    check-cast v0, Lcom/amazonaws/services/ec2/model/ExportToS3TaskSpecification;

    .line 305
    .local v0, "other":Lcom/amazonaws/services/ec2/model/ExportToS3TaskSpecification;
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ExportToS3TaskSpecification;->getDiskImageFormat()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ExportToS3TaskSpecification;->getDiskImageFormat()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_7

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 306
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ExportToS3TaskSpecification;->getDiskImageFormat()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ExportToS3TaskSpecification;->getDiskImageFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ExportToS3TaskSpecification;->getDiskImageFormat()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 307
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ExportToS3TaskSpecification;->getContainerFormat()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ExportToS3TaskSpecification;->getContainerFormat()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_9

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 308
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ExportToS3TaskSpecification;->getContainerFormat()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ExportToS3TaskSpecification;->getContainerFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ExportToS3TaskSpecification;->getContainerFormat()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 309
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ExportToS3TaskSpecification;->getS3Bucket()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_a

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ExportToS3TaskSpecification;->getS3Bucket()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_b

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 310
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ExportToS3TaskSpecification;->getS3Bucket()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ExportToS3TaskSpecification;->getS3Bucket()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ExportToS3TaskSpecification;->getS3Bucket()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 311
    :cond_4
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ExportToS3TaskSpecification;->getS3Prefix()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_c

    move v1, v2

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ExportToS3TaskSpecification;->getS3Prefix()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_d

    move v4, v2

    :goto_8
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 312
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ExportToS3TaskSpecification;->getS3Prefix()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ExportToS3TaskSpecification;->getS3Prefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ExportToS3TaskSpecification;->getS3Prefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_5
    move v3, v2

    .line 313
    goto/16 :goto_0

    :cond_6
    move v1, v3

    .line 305
    goto/16 :goto_1

    :cond_7
    move v4, v3

    goto/16 :goto_2

    :cond_8
    move v1, v3

    .line 307
    goto :goto_3

    :cond_9
    move v4, v3

    goto :goto_4

    :cond_a
    move v1, v3

    .line 309
    goto :goto_5

    :cond_b
    move v4, v3

    goto :goto_6

    :cond_c
    move v1, v3

    .line 311
    goto :goto_7

    :cond_d
    move v4, v3

    goto :goto_8
.end method

.method public getContainerFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ExportToS3TaskSpecification;->containerFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getDiskImageFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ExportToS3TaskSpecification;->diskImageFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getS3Bucket()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ExportToS3TaskSpecification;->s3Bucket:Ljava/lang/String;

    return-object v0
.end method

.method public getS3Prefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ExportToS3TaskSpecification;->s3Prefix:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 287
    const/16 v1, 0x1f

    .line 288
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 290
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ExportToS3TaskSpecification;->getDiskImageFormat()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 291
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ExportToS3TaskSpecification;->getContainerFormat()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 292
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ExportToS3TaskSpecification;->getS3Bucket()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v0, v4, v2

    .line 293
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ExportToS3TaskSpecification;->getS3Prefix()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    :goto_3
    add-int v0, v2, v3

    .line 294
    return v0

    .line 290
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ExportToS3TaskSpecification;->getDiskImageFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 291
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ExportToS3TaskSpecification;->getContainerFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 292
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ExportToS3TaskSpecification;->getS3Bucket()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    .line 293
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ExportToS3TaskSpecification;->getS3Prefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_3
.end method

.method public setContainerFormat(Lcom/amazonaws/services/ec2/model/ContainerFormat;)V
    .locals 1
    .param p1, "containerFormat"    # Lcom/amazonaws/services/ec2/model/ContainerFormat;

    .prologue
    .line 174
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ContainerFormat;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/ExportToS3TaskSpecification;->containerFormat:Ljava/lang/String;

    .line 175
    return-void
.end method

.method public setContainerFormat(Ljava/lang/String;)V
    .locals 0
    .param p1, "containerFormat"    # Ljava/lang/String;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ExportToS3TaskSpecification;->containerFormat:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public setDiskImageFormat(Lcom/amazonaws/services/ec2/model/DiskImageFormat;)V
    .locals 1
    .param p1, "diskImageFormat"    # Lcom/amazonaws/services/ec2/model/DiskImageFormat;

    .prologue
    .line 91
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/DiskImageFormat;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/ExportToS3TaskSpecification;->diskImageFormat:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setDiskImageFormat(Ljava/lang/String;)V
    .locals 0
    .param p1, "diskImageFormat"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ExportToS3TaskSpecification;->diskImageFormat:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setS3Bucket(Ljava/lang/String;)V
    .locals 0
    .param p1, "s3Bucket"    # Ljava/lang/String;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ExportToS3TaskSpecification;->s3Bucket:Ljava/lang/String;

    .line 213
    return-void
.end method

.method public setS3Prefix(Ljava/lang/String;)V
    .locals 0
    .param p1, "s3Prefix"    # Ljava/lang/String;

    .prologue
    .line 246
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ExportToS3TaskSpecification;->s3Prefix:Ljava/lang/String;

    .line 247
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 276
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ExportToS3TaskSpecification;->getDiskImageFormat()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DiskImageFormat: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ExportToS3TaskSpecification;->getDiskImageFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ExportToS3TaskSpecification;->getContainerFormat()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ContainerFormat: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ExportToS3TaskSpecification;->getContainerFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ExportToS3TaskSpecification;->getS3Bucket()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "S3Bucket: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ExportToS3TaskSpecification;->getS3Bucket()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ExportToS3TaskSpecification;->getS3Prefix()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "S3Prefix: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ExportToS3TaskSpecification;->getS3Prefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    :cond_3
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withContainerFormat(Lcom/amazonaws/services/ec2/model/ContainerFormat;)Lcom/amazonaws/services/ec2/model/ExportToS3TaskSpecification;
    .locals 1
    .param p1, "containerFormat"    # Lcom/amazonaws/services/ec2/model/ContainerFormat;

    .prologue
    .line 193
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ContainerFormat;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/ExportToS3TaskSpecification;->containerFormat:Ljava/lang/String;

    .line 194
    return-object p0
.end method

.method public withContainerFormat(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/ExportToS3TaskSpecification;
    .locals 0
    .param p1, "containerFormat"    # Ljava/lang/String;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ExportToS3TaskSpecification;->containerFormat:Ljava/lang/String;

    .line 159
    return-object p0
.end method

.method public withDiskImageFormat(Lcom/amazonaws/services/ec2/model/DiskImageFormat;)Lcom/amazonaws/services/ec2/model/ExportToS3TaskSpecification;
    .locals 1
    .param p1, "diskImageFormat"    # Lcom/amazonaws/services/ec2/model/DiskImageFormat;

    .prologue
    .line 110
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/DiskImageFormat;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/ExportToS3TaskSpecification;->diskImageFormat:Ljava/lang/String;

    .line 111
    return-object p0
.end method

.method public withDiskImageFormat(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/ExportToS3TaskSpecification;
    .locals 0
    .param p1, "diskImageFormat"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ExportToS3TaskSpecification;->diskImageFormat:Ljava/lang/String;

    .line 76
    return-object p0
.end method

.method public withS3Bucket(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/ExportToS3TaskSpecification;
    .locals 0
    .param p1, "s3Bucket"    # Ljava/lang/String;

    .prologue
    .line 226
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ExportToS3TaskSpecification;->s3Bucket:Ljava/lang/String;

    .line 227
    return-object p0
.end method

.method public withS3Prefix(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/ExportToS3TaskSpecification;
    .locals 0
    .param p1, "s3Prefix"    # Ljava/lang/String;

    .prologue
    .line 260
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ExportToS3TaskSpecification;->s3Prefix:Ljava/lang/String;

    .line 261
    return-object p0
.end method
