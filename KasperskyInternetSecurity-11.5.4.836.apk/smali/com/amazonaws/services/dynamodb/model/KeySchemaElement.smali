.class public Lcom/amazonaws/services/dynamodb/model/KeySchemaElement;
.super Ljava/lang/Object;
.source "KeySchemaElement.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private attributeName:Ljava/lang/String;

.field private attributeType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
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

    .line 214
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 224
    :cond_0
    :goto_0
    return v3

    .line 215
    :cond_1
    if-eqz p1, :cond_0

    .line 217
    instance-of v1, p1, Lcom/amazonaws/services/dynamodb/model/KeySchemaElement;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 218
    check-cast v0, Lcom/amazonaws/services/dynamodb/model/KeySchemaElement;

    .line 220
    .local v0, "other":Lcom/amazonaws/services/dynamodb/model/KeySchemaElement;
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/KeySchemaElement;->getAttributeName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/KeySchemaElement;->getAttributeName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_5

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 221
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/KeySchemaElement;->getAttributeName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/KeySchemaElement;->getAttributeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/KeySchemaElement;->getAttributeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 222
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/KeySchemaElement;->getAttributeType()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/KeySchemaElement;->getAttributeType()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_7

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 223
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/KeySchemaElement;->getAttributeType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/KeySchemaElement;->getAttributeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/KeySchemaElement;->getAttributeType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    move v3, v2

    .line 224
    goto :goto_0

    :cond_4
    move v1, v3

    .line 220
    goto :goto_1

    :cond_5
    move v4, v3

    goto :goto_2

    :cond_6
    move v1, v3

    .line 222
    goto :goto_3

    :cond_7
    move v4, v3

    goto :goto_4
.end method

.method public getAttributeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/model/KeySchemaElement;->attributeName:Ljava/lang/String;

    return-object v0
.end method

.method public getAttributeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/model/KeySchemaElement;->attributeType:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 204
    const/16 v1, 0x1f

    .line 205
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 207
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/KeySchemaElement;->getAttributeName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 208
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/KeySchemaElement;->getAttributeType()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    :goto_1
    add-int v0, v2, v3

    .line 209
    return v0

    .line 207
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/KeySchemaElement;->getAttributeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 208
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/KeySchemaElement;->getAttributeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_1
.end method

.method public setAttributeName(Ljava/lang/String;)V
    .locals 0
    .param p1, "attributeName"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/KeySchemaElement;->attributeName:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setAttributeType(Lcom/amazonaws/services/dynamodb/model/ScalarAttributeType;)V
    .locals 1
    .param p1, "attributeType"    # Lcom/amazonaws/services/dynamodb/model/ScalarAttributeType;

    .prologue
    .line 159
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodb/model/ScalarAttributeType;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/dynamodb/model/KeySchemaElement;->attributeType:Ljava/lang/String;

    .line 160
    return-void
.end method

.method public setAttributeType(Ljava/lang/String;)V
    .locals 0
    .param p1, "attributeType"    # Ljava/lang/String;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/KeySchemaElement;->attributeType:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 195
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/KeySchemaElement;->getAttributeName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AttributeName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/KeySchemaElement;->getAttributeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/KeySchemaElement;->getAttributeType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AttributeType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/KeySchemaElement;->getAttributeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    :cond_1
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withAttributeName(Ljava/lang/String;)Lcom/amazonaws/services/dynamodb/model/KeySchemaElement;
    .locals 0
    .param p1, "attributeName"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/KeySchemaElement;->attributeName:Ljava/lang/String;

    .line 87
    return-object p0
.end method

.method public withAttributeType(Lcom/amazonaws/services/dynamodb/model/ScalarAttributeType;)Lcom/amazonaws/services/dynamodb/model/KeySchemaElement;
    .locals 1
    .param p1, "attributeType"    # Lcom/amazonaws/services/dynamodb/model/ScalarAttributeType;

    .prologue
    .line 180
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodb/model/ScalarAttributeType;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/dynamodb/model/KeySchemaElement;->attributeType:Ljava/lang/String;

    .line 181
    return-object p0
.end method

.method public withAttributeType(Ljava/lang/String;)Lcom/amazonaws/services/dynamodb/model/KeySchemaElement;
    .locals 0
    .param p1, "attributeType"    # Ljava/lang/String;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/KeySchemaElement;->attributeType:Ljava/lang/String;

    .line 142
    return-object p0
.end method
