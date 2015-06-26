.class public Lcom/amazonaws/services/sns/model/SetTopicAttributesRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "SetTopicAttributesRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private attributeName:Ljava/lang/String;

.field private attributeValue:Ljava/lang/String;

.field private topicArn:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "topicArn"    # Ljava/lang/String;
    .param p2, "attributeName"    # Ljava/lang/String;
    .param p3, "attributeValue"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/amazonaws/services/sns/model/SetTopicAttributesRequest;->topicArn:Ljava/lang/String;

    .line 66
    iput-object p2, p0, Lcom/amazonaws/services/sns/model/SetTopicAttributesRequest;->attributeName:Ljava/lang/String;

    .line 67
    iput-object p3, p0, Lcom/amazonaws/services/sns/model/SetTopicAttributesRequest;->attributeValue:Ljava/lang/String;

    .line 68
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 218
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 230
    :cond_0
    :goto_0
    return v3

    .line 219
    :cond_1
    if-eqz p1, :cond_0

    .line 221
    instance-of v1, p1, Lcom/amazonaws/services/sns/model/SetTopicAttributesRequest;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 222
    check-cast v0, Lcom/amazonaws/services/sns/model/SetTopicAttributesRequest;

    .line 224
    .local v0, "other":Lcom/amazonaws/services/sns/model/SetTopicAttributesRequest;
    invoke-virtual {v0}, Lcom/amazonaws/services/sns/model/SetTopicAttributesRequest;->getTopicArn()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/sns/model/SetTopicAttributesRequest;->getTopicArn()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_6

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 225
    invoke-virtual {v0}, Lcom/amazonaws/services/sns/model/SetTopicAttributesRequest;->getTopicArn()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/sns/model/SetTopicAttributesRequest;->getTopicArn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/sns/model/SetTopicAttributesRequest;->getTopicArn()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 226
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/sns/model/SetTopicAttributesRequest;->getAttributeName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/sns/model/SetTopicAttributesRequest;->getAttributeName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_8

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 227
    invoke-virtual {v0}, Lcom/amazonaws/services/sns/model/SetTopicAttributesRequest;->getAttributeName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/sns/model/SetTopicAttributesRequest;->getAttributeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/sns/model/SetTopicAttributesRequest;->getAttributeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 228
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/sns/model/SetTopicAttributesRequest;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_9

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/sns/model/SetTopicAttributesRequest;->getAttributeValue()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_a

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 229
    invoke-virtual {v0}, Lcom/amazonaws/services/sns/model/SetTopicAttributesRequest;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/sns/model/SetTopicAttributesRequest;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/sns/model/SetTopicAttributesRequest;->getAttributeValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_4
    move v3, v2

    .line 230
    goto :goto_0

    :cond_5
    move v1, v3

    .line 224
    goto :goto_1

    :cond_6
    move v4, v3

    goto :goto_2

    :cond_7
    move v1, v3

    .line 226
    goto :goto_3

    :cond_8
    move v4, v3

    goto :goto_4

    :cond_9
    move v1, v3

    .line 228
    goto :goto_5

    :cond_a
    move v4, v3

    goto :goto_6
.end method

.method public getAttributeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/amazonaws/services/sns/model/SetTopicAttributesRequest;->attributeName:Ljava/lang/String;

    return-object v0
.end method

.method public getAttributeValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/amazonaws/services/sns/model/SetTopicAttributesRequest;->attributeValue:Ljava/lang/String;

    return-object v0
.end method

.method public getTopicArn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/amazonaws/services/sns/model/SetTopicAttributesRequest;->topicArn:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 207
    const/16 v1, 0x1f

    .line 208
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 210
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/sns/model/SetTopicAttributesRequest;->getTopicArn()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 211
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/sns/model/SetTopicAttributesRequest;->getAttributeName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 212
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/sns/model/SetTopicAttributesRequest;->getAttributeValue()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    :goto_2
    add-int v0, v2, v3

    .line 213
    return v0

    .line 210
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/sns/model/SetTopicAttributesRequest;->getTopicArn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 211
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/sns/model/SetTopicAttributesRequest;->getAttributeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 212
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/sns/model/SetTopicAttributesRequest;->getAttributeValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_2
.end method

.method public setAttributeName(Ljava/lang/String;)V
    .locals 0
    .param p1, "attributeName"    # Ljava/lang/String;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/amazonaws/services/sns/model/SetTopicAttributesRequest;->attributeName:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public setAttributeValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "attributeValue"    # Ljava/lang/String;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/amazonaws/services/sns/model/SetTopicAttributesRequest;->attributeValue:Ljava/lang/String;

    .line 168
    return-void
.end method

.method public setTopicArn(Ljava/lang/String;)V
    .locals 0
    .param p1, "topicArn"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/amazonaws/services/sns/model/SetTopicAttributesRequest;->topicArn:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 197
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    invoke-virtual {p0}, Lcom/amazonaws/services/sns/model/SetTopicAttributesRequest;->getTopicArn()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TopicArn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/sns/model/SetTopicAttributesRequest;->getTopicArn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/sns/model/SetTopicAttributesRequest;->getAttributeName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AttributeName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/sns/model/SetTopicAttributesRequest;->getAttributeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/sns/model/SetTopicAttributesRequest;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AttributeValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/sns/model/SetTopicAttributesRequest;->getAttributeValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    :cond_2
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withAttributeName(Ljava/lang/String;)Lcom/amazonaws/services/sns/model/SetTopicAttributesRequest;
    .locals 0
    .param p1, "attributeName"    # Ljava/lang/String;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/amazonaws/services/sns/model/SetTopicAttributesRequest;->attributeName:Ljava/lang/String;

    .line 148
    return-object p0
.end method

.method public withAttributeValue(Ljava/lang/String;)Lcom/amazonaws/services/sns/model/SetTopicAttributesRequest;
    .locals 0
    .param p1, "attributeValue"    # Ljava/lang/String;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/amazonaws/services/sns/model/SetTopicAttributesRequest;->attributeValue:Ljava/lang/String;

    .line 182
    return-object p0
.end method

.method public withTopicArn(Ljava/lang/String;)Lcom/amazonaws/services/sns/model/SetTopicAttributesRequest;
    .locals 0
    .param p1, "topicArn"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/amazonaws/services/sns/model/SetTopicAttributesRequest;->topicArn:Ljava/lang/String;

    .line 102
    return-object p0
.end method
