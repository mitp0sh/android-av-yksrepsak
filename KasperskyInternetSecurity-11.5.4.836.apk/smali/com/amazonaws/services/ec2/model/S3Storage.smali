.class public Lcom/amazonaws/services/ec2/model/S3Storage;
.super Ljava/lang/Object;
.source "S3Storage.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private aWSAccessKeyId:Ljava/lang/String;

.field private bucket:Ljava/lang/String;

.field private prefix:Ljava/lang/String;

.field private uploadPolicy:Ljava/lang/String;

.field private uploadPolicySignature:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
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

    .line 284
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 300
    :cond_0
    :goto_0
    return v3

    .line 285
    :cond_1
    if-eqz p1, :cond_0

    .line 287
    instance-of v1, p1, Lcom/amazonaws/services/ec2/model/S3Storage;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 288
    check-cast v0, Lcom/amazonaws/services/ec2/model/S3Storage;

    .line 290
    .local v0, "other":Lcom/amazonaws/services/ec2/model/S3Storage;
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/S3Storage;->getBucket()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/S3Storage;->getBucket()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_8

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 291
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/S3Storage;->getBucket()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/S3Storage;->getBucket()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/S3Storage;->getBucket()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 292
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/S3Storage;->getPrefix()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_9

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/S3Storage;->getPrefix()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_a

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 293
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/S3Storage;->getPrefix()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/S3Storage;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/S3Storage;->getPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 294
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/S3Storage;->getAWSAccessKeyId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_b

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/S3Storage;->getAWSAccessKeyId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_c

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 295
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/S3Storage;->getAWSAccessKeyId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/S3Storage;->getAWSAccessKeyId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/S3Storage;->getAWSAccessKeyId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 296
    :cond_4
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/S3Storage;->getUploadPolicy()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_d

    move v1, v2

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/S3Storage;->getUploadPolicy()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_e

    move v4, v2

    :goto_8
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 297
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/S3Storage;->getUploadPolicy()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/S3Storage;->getUploadPolicy()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/S3Storage;->getUploadPolicy()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 298
    :cond_5
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/S3Storage;->getUploadPolicySignature()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_f

    move v1, v2

    :goto_9
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/S3Storage;->getUploadPolicySignature()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_10

    move v4, v2

    :goto_a
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 299
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/S3Storage;->getUploadPolicySignature()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/S3Storage;->getUploadPolicySignature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/S3Storage;->getUploadPolicySignature()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_6
    move v3, v2

    .line 300
    goto/16 :goto_0

    :cond_7
    move v1, v3

    .line 290
    goto/16 :goto_1

    :cond_8
    move v4, v3

    goto/16 :goto_2

    :cond_9
    move v1, v3

    .line 292
    goto/16 :goto_3

    :cond_a
    move v4, v3

    goto/16 :goto_4

    :cond_b
    move v1, v3

    .line 294
    goto :goto_5

    :cond_c
    move v4, v3

    goto :goto_6

    :cond_d
    move v1, v3

    .line 296
    goto :goto_7

    :cond_e
    move v4, v3

    goto :goto_8

    :cond_f
    move v1, v3

    .line 298
    goto :goto_9

    :cond_10
    move v4, v3

    goto :goto_a
.end method

.method public getAWSAccessKeyId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/S3Storage;->aWSAccessKeyId:Ljava/lang/String;

    return-object v0
.end method

.method public getBucket()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/S3Storage;->bucket:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/S3Storage;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public getUploadPolicy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/S3Storage;->uploadPolicy:Ljava/lang/String;

    return-object v0
.end method

.method public getUploadPolicySignature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/S3Storage;->uploadPolicySignature:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 271
    const/16 v1, 0x1f

    .line 272
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 274
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/S3Storage;->getBucket()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 275
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/S3Storage;->getPrefix()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 276
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/S3Storage;->getAWSAccessKeyId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v0, v4, v2

    .line 277
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/S3Storage;->getUploadPolicy()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v3

    :goto_3
    add-int v0, v4, v2

    .line 278
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/S3Storage;->getUploadPolicySignature()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4

    :goto_4
    add-int v0, v2, v3

    .line 279
    return v0

    .line 274
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/S3Storage;->getBucket()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 275
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/S3Storage;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 276
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/S3Storage;->getAWSAccessKeyId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    .line 277
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/S3Storage;->getUploadPolicy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    .line 278
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/S3Storage;->getUploadPolicySignature()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_4
.end method

.method public setAWSAccessKeyId(Ljava/lang/String;)V
    .locals 0
    .param p1, "aWSAccessKeyId"    # Ljava/lang/String;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/S3Storage;->aWSAccessKeyId:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public setBucket(Ljava/lang/String;)V
    .locals 0
    .param p1, "bucket"    # Ljava/lang/String;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/S3Storage;->bucket:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/S3Storage;->prefix:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setUploadPolicy(Ljava/lang/String;)V
    .locals 0
    .param p1, "uploadPolicy"    # Ljava/lang/String;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/S3Storage;->uploadPolicy:Ljava/lang/String;

    .line 194
    return-void
.end method

.method public setUploadPolicySignature(Ljava/lang/String;)V
    .locals 0
    .param p1, "uploadPolicySignature"    # Ljava/lang/String;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/S3Storage;->uploadPolicySignature:Ljava/lang/String;

    .line 230
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 259
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/S3Storage;->getBucket()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bucket: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/S3Storage;->getBucket()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/S3Storage;->getPrefix()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Prefix: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/S3Storage;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/S3Storage;->getAWSAccessKeyId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AWSAccessKeyId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/S3Storage;->getAWSAccessKeyId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/S3Storage;->getUploadPolicy()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UploadPolicy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/S3Storage;->getUploadPolicy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/S3Storage;->getUploadPolicySignature()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UploadPolicySignature: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/S3Storage;->getUploadPolicySignature()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    :cond_4
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withAWSAccessKeyId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/S3Storage;
    .locals 0
    .param p1, "aWSAccessKeyId"    # Ljava/lang/String;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/S3Storage;->aWSAccessKeyId:Ljava/lang/String;

    .line 170
    return-object p0
.end method

.method public withBucket(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/S3Storage;
    .locals 0
    .param p1, "bucket"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/S3Storage;->bucket:Ljava/lang/String;

    .line 102
    return-object p0
.end method

.method public withPrefix(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/S3Storage;
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/S3Storage;->prefix:Ljava/lang/String;

    .line 136
    return-object p0
.end method

.method public withUploadPolicy(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/S3Storage;
    .locals 0
    .param p1, "uploadPolicy"    # Ljava/lang/String;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/S3Storage;->uploadPolicy:Ljava/lang/String;

    .line 210
    return-object p0
.end method

.method public withUploadPolicySignature(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/S3Storage;
    .locals 0
    .param p1, "uploadPolicySignature"    # Ljava/lang/String;

    .prologue
    .line 243
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/S3Storage;->uploadPolicySignature:Ljava/lang/String;

    .line 244
    return-object p0
.end method
