.class public Lcom/amazonaws/services/dynamodb/model/ExpectedAttributeValue;
.super Ljava/lang/Object;
.source "ExpectedAttributeValue.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private exists:Ljava/lang/Boolean;

.field private value:Lcom/amazonaws/services/dynamodb/model/AttributeValue;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/services/dynamodb/model/AttributeValue;)V
    .locals 0
    .param p1, "value"    # Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/ExpectedAttributeValue;->value:Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "exists"    # Ljava/lang/Boolean;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/ExpectedAttributeValue;->exists:Ljava/lang/Boolean;

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

    .line 193
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 203
    :cond_0
    :goto_0
    return v3

    .line 194
    :cond_1
    if-eqz p1, :cond_0

    .line 196
    instance-of v1, p1, Lcom/amazonaws/services/dynamodb/model/ExpectedAttributeValue;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 197
    check-cast v0, Lcom/amazonaws/services/dynamodb/model/ExpectedAttributeValue;

    .line 199
    .local v0, "other":Lcom/amazonaws/services/dynamodb/model/ExpectedAttributeValue;
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/ExpectedAttributeValue;->getValue()Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    move-result-object v1

    if-nez v1, :cond_4

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ExpectedAttributeValue;->getValue()Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    move-result-object v4

    if-nez v4, :cond_5

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 200
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/ExpectedAttributeValue;->getValue()Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/ExpectedAttributeValue;->getValue()Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ExpectedAttributeValue;->getValue()Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 201
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/ExpectedAttributeValue;->isExists()Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_6

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ExpectedAttributeValue;->isExists()Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_7

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 202
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/ExpectedAttributeValue;->isExists()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/ExpectedAttributeValue;->isExists()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ExpectedAttributeValue;->isExists()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    move v3, v2

    .line 203
    goto :goto_0

    :cond_4
    move v1, v3

    .line 199
    goto :goto_1

    :cond_5
    move v4, v3

    goto :goto_2

    :cond_6
    move v1, v3

    .line 201
    goto :goto_3

    :cond_7
    move v4, v3

    goto :goto_4
.end method

.method public getExists()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/model/ExpectedAttributeValue;->exists:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getValue()Lcom/amazonaws/services/dynamodb/model/AttributeValue;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/model/ExpectedAttributeValue;->value:Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 183
    const/16 v1, 0x1f

    .line 184
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 186
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ExpectedAttributeValue;->getValue()Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 187
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ExpectedAttributeValue;->isExists()Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_1

    :goto_1
    add-int v0, v2, v3

    .line 188
    return v0

    .line 186
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ExpectedAttributeValue;->getValue()Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->hashCode()I

    move-result v2

    goto :goto_0

    .line 187
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ExpectedAttributeValue;->isExists()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->hashCode()I

    move-result v3

    goto :goto_1
.end method

.method public isExists()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/model/ExpectedAttributeValue;->exists:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setExists(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "exists"    # Ljava/lang/Boolean;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/ExpectedAttributeValue;->exists:Ljava/lang/Boolean;

    .line 132
    return-void
.end method

.method public setValue(Lcom/amazonaws/services/dynamodb/model/AttributeValue;)V
    .locals 0
    .param p1, "value"    # Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/ExpectedAttributeValue;->value:Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    .line 92
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 174
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ExpectedAttributeValue;->getValue()Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ExpectedAttributeValue;->getValue()Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ExpectedAttributeValue;->isExists()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exists: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ExpectedAttributeValue;->isExists()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    :cond_1
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withExists(Ljava/lang/Boolean;)Lcom/amazonaws/services/dynamodb/model/ExpectedAttributeValue;
    .locals 0
    .param p1, "exists"    # Ljava/lang/Boolean;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/ExpectedAttributeValue;->exists:Ljava/lang/Boolean;

    .line 148
    return-object p0
.end method

.method public withValue(Lcom/amazonaws/services/dynamodb/model/AttributeValue;)Lcom/amazonaws/services/dynamodb/model/ExpectedAttributeValue;
    .locals 0
    .param p1, "value"    # Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/ExpectedAttributeValue;->value:Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    .line 108
    return-object p0
.end method
