.class public Lcom/amazonaws/services/ec2/model/ResetImageAttributeRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "ResetImageAttributeRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private attribute:Ljava/lang/String;

.field private imageId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "imageId"    # Ljava/lang/String;
    .param p2, "attribute"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ResetImageAttributeRequest;->imageId:Ljava/lang/String;

    .line 60
    iput-object p2, p0, Lcom/amazonaws/services/ec2/model/ResetImageAttributeRequest;->attribute:Ljava/lang/String;

    .line 61
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 169
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 179
    :cond_0
    :goto_0
    return v3

    .line 170
    :cond_1
    if-eqz p1, :cond_0

    .line 172
    instance-of v1, p1, Lcom/amazonaws/services/ec2/model/ResetImageAttributeRequest;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 173
    check-cast v0, Lcom/amazonaws/services/ec2/model/ResetImageAttributeRequest;

    .line 175
    .local v0, "other":Lcom/amazonaws/services/ec2/model/ResetImageAttributeRequest;
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ResetImageAttributeRequest;->getImageId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ResetImageAttributeRequest;->getImageId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_5

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 176
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ResetImageAttributeRequest;->getImageId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ResetImageAttributeRequest;->getImageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ResetImageAttributeRequest;->getImageId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ResetImageAttributeRequest;->getAttribute()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ResetImageAttributeRequest;->getAttribute()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_7

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 178
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ResetImageAttributeRequest;->getAttribute()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ResetImageAttributeRequest;->getAttribute()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ResetImageAttributeRequest;->getAttribute()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    move v3, v2

    .line 179
    goto :goto_0

    :cond_4
    move v1, v3

    .line 175
    goto :goto_1

    :cond_5
    move v4, v3

    goto :goto_2

    :cond_6
    move v1, v3

    .line 177
    goto :goto_3

    :cond_7
    move v4, v3

    goto :goto_4
.end method

.method public getAttribute()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ResetImageAttributeRequest;->attribute:Ljava/lang/String;

    return-object v0
.end method

.method public getImageId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ResetImageAttributeRequest;->imageId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 159
    const/16 v1, 0x1f

    .line 160
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 162
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ResetImageAttributeRequest;->getImageId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 163
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ResetImageAttributeRequest;->getAttribute()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    :goto_1
    add-int v0, v2, v3

    .line 164
    return v0

    .line 162
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ResetImageAttributeRequest;->getImageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 163
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ResetImageAttributeRequest;->getAttribute()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_1
.end method

.method public setAttribute(Ljava/lang/String;)V
    .locals 0
    .param p1, "attribute"    # Ljava/lang/String;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ResetImageAttributeRequest;->attribute:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setImageId(Ljava/lang/String;)V
    .locals 0
    .param p1, "imageId"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ResetImageAttributeRequest;->imageId:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ResetImageAttributeRequest;->getImageId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImageId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ResetImageAttributeRequest;->getImageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ResetImageAttributeRequest;->getAttribute()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attribute: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ResetImageAttributeRequest;->getAttribute()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    :cond_1
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withAttribute(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/ResetImageAttributeRequest;
    .locals 0
    .param p1, "attribute"    # Ljava/lang/String;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ResetImageAttributeRequest;->attribute:Ljava/lang/String;

    .line 135
    return-object p0
.end method

.method public withImageId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/ResetImageAttributeRequest;
    .locals 0
    .param p1, "imageId"    # Ljava/lang/String;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ResetImageAttributeRequest;->imageId:Ljava/lang/String;

    .line 95
    return-object p0
.end method
