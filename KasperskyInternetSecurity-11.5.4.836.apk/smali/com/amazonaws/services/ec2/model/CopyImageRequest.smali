.class public Lcom/amazonaws/services/ec2/model/CopyImageRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "CopyImageRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private clientToken:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private sourceImageId:Ljava/lang/String;

.field private sourceRegion:Ljava/lang/String;


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

    .line 243
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 259
    :cond_0
    :goto_0
    return v3

    .line 244
    :cond_1
    if-eqz p1, :cond_0

    .line 246
    instance-of v1, p1, Lcom/amazonaws/services/ec2/model/CopyImageRequest;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 247
    check-cast v0, Lcom/amazonaws/services/ec2/model/CopyImageRequest;

    .line 249
    .local v0, "other":Lcom/amazonaws/services/ec2/model/CopyImageRequest;
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/CopyImageRequest;->getSourceRegion()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CopyImageRequest;->getSourceRegion()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_8

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 250
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/CopyImageRequest;->getSourceRegion()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/CopyImageRequest;->getSourceRegion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CopyImageRequest;->getSourceRegion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 251
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/CopyImageRequest;->getSourceImageId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_9

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CopyImageRequest;->getSourceImageId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_a

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 252
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/CopyImageRequest;->getSourceImageId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/CopyImageRequest;->getSourceImageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CopyImageRequest;->getSourceImageId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 253
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/CopyImageRequest;->getName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_b

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CopyImageRequest;->getName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_c

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 254
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/CopyImageRequest;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/CopyImageRequest;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CopyImageRequest;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 255
    :cond_4
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/CopyImageRequest;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_d

    move v1, v2

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CopyImageRequest;->getDescription()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_e

    move v4, v2

    :goto_8
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 256
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/CopyImageRequest;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/CopyImageRequest;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CopyImageRequest;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 257
    :cond_5
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/CopyImageRequest;->getClientToken()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_f

    move v1, v2

    :goto_9
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CopyImageRequest;->getClientToken()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_10

    move v4, v2

    :goto_a
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 258
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/CopyImageRequest;->getClientToken()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/CopyImageRequest;->getClientToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CopyImageRequest;->getClientToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_6
    move v3, v2

    .line 259
    goto/16 :goto_0

    :cond_7
    move v1, v3

    .line 249
    goto/16 :goto_1

    :cond_8
    move v4, v3

    goto/16 :goto_2

    :cond_9
    move v1, v3

    .line 251
    goto/16 :goto_3

    :cond_a
    move v4, v3

    goto/16 :goto_4

    :cond_b
    move v1, v3

    .line 253
    goto :goto_5

    :cond_c
    move v4, v3

    goto :goto_6

    :cond_d
    move v1, v3

    .line 255
    goto :goto_7

    :cond_e
    move v4, v3

    goto :goto_8

    :cond_f
    move v1, v3

    .line 257
    goto :goto_9

    :cond_10
    move v4, v3

    goto :goto_a
.end method

.method public getClientToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/CopyImageRequest;->clientToken:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/CopyImageRequest;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/CopyImageRequest;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceImageId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/CopyImageRequest;->sourceImageId:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceRegion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/CopyImageRequest;->sourceRegion:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 230
    const/16 v1, 0x1f

    .line 231
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 233
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CopyImageRequest;->getSourceRegion()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 234
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CopyImageRequest;->getSourceImageId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 235
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CopyImageRequest;->getName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v0, v4, v2

    .line 236
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CopyImageRequest;->getDescription()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v3

    :goto_3
    add-int v0, v4, v2

    .line 237
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CopyImageRequest;->getClientToken()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4

    :goto_4
    add-int v0, v2, v3

    .line 238
    return v0

    .line 233
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CopyImageRequest;->getSourceRegion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 234
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CopyImageRequest;->getSourceImageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 235
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CopyImageRequest;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    .line 236
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CopyImageRequest;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    .line 237
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CopyImageRequest;->getClientToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_4
.end method

.method public setClientToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "clientToken"    # Ljava/lang/String;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/CopyImageRequest;->clientToken:Ljava/lang/String;

    .line 189
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/CopyImageRequest;->description:Ljava/lang/String;

    .line 155
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/CopyImageRequest;->name:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setSourceImageId(Ljava/lang/String;)V
    .locals 0
    .param p1, "sourceImageId"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/CopyImageRequest;->sourceImageId:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setSourceRegion(Ljava/lang/String;)V
    .locals 0
    .param p1, "sourceRegion"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/CopyImageRequest;->sourceRegion:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 218
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CopyImageRequest;->getSourceRegion()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SourceRegion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CopyImageRequest;->getSourceRegion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CopyImageRequest;->getSourceImageId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SourceImageId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CopyImageRequest;->getSourceImageId()Ljava/lang/String;

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
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CopyImageRequest;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CopyImageRequest;->getName()Ljava/lang/String;

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
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CopyImageRequest;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Description: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CopyImageRequest;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CopyImageRequest;->getClientToken()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ClientToken: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CopyImageRequest;->getClientToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    :cond_4
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withClientToken(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/CopyImageRequest;
    .locals 0
    .param p1, "clientToken"    # Ljava/lang/String;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/CopyImageRequest;->clientToken:Ljava/lang/String;

    .line 203
    return-object p0
.end method

.method public withDescription(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/CopyImageRequest;
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/CopyImageRequest;->description:Ljava/lang/String;

    .line 169
    return-object p0
.end method

.method public withName(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/CopyImageRequest;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/CopyImageRequest;->name:Ljava/lang/String;

    .line 135
    return-object p0
.end method

.method public withSourceImageId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/CopyImageRequest;
    .locals 0
    .param p1, "sourceImageId"    # Ljava/lang/String;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/CopyImageRequest;->sourceImageId:Ljava/lang/String;

    .line 101
    return-object p0
.end method

.method public withSourceRegion(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/CopyImageRequest;
    .locals 0
    .param p1, "sourceRegion"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/CopyImageRequest;->sourceRegion:Ljava/lang/String;

    .line 67
    return-object p0
.end method
