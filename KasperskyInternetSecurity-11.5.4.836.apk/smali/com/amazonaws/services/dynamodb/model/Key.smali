.class public Lcom/amazonaws/services/dynamodb/model/Key;
.super Ljava/lang/Object;
.source "Key.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private hashKeyElement:Lcom/amazonaws/services/dynamodb/model/AttributeValue;

.field private rangeKeyElement:Lcom/amazonaws/services/dynamodb/model/AttributeValue;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/services/dynamodb/model/AttributeValue;)V
    .locals 0
    .param p1, "hashKeyElement"    # Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/Key;->hashKeyElement:Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    .line 61
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/services/dynamodb/model/AttributeValue;Lcom/amazonaws/services/dynamodb/model/AttributeValue;)V
    .locals 0
    .param p1, "hashKeyElement"    # Lcom/amazonaws/services/dynamodb/model/AttributeValue;
    .param p2, "rangeKeyElement"    # Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/Key;->hashKeyElement:Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    .line 82
    iput-object p2, p0, Lcom/amazonaws/services/dynamodb/model/Key;->rangeKeyElement:Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    .line 83
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 227
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 237
    :cond_0
    :goto_0
    return v3

    .line 228
    :cond_1
    if-eqz p1, :cond_0

    .line 230
    instance-of v1, p1, Lcom/amazonaws/services/dynamodb/model/Key;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 231
    check-cast v0, Lcom/amazonaws/services/dynamodb/model/Key;

    .line 233
    .local v0, "other":Lcom/amazonaws/services/dynamodb/model/Key;
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/Key;->getHashKeyElement()Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    move-result-object v1

    if-nez v1, :cond_4

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/Key;->getHashKeyElement()Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    move-result-object v4

    if-nez v4, :cond_5

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 234
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/Key;->getHashKeyElement()Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/Key;->getHashKeyElement()Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/Key;->getHashKeyElement()Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 235
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/Key;->getRangeKeyElement()Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    move-result-object v1

    if-nez v1, :cond_6

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/Key;->getRangeKeyElement()Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    move-result-object v4

    if-nez v4, :cond_7

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 236
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/Key;->getRangeKeyElement()Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/Key;->getRangeKeyElement()Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/Key;->getRangeKeyElement()Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    move v3, v2

    .line 237
    goto :goto_0

    :cond_4
    move v1, v3

    .line 233
    goto :goto_1

    :cond_5
    move v4, v3

    goto :goto_2

    :cond_6
    move v1, v3

    .line 235
    goto :goto_3

    :cond_7
    move v4, v3

    goto :goto_4
.end method

.method public getHashKeyElement()Lcom/amazonaws/services/dynamodb/model/AttributeValue;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/model/Key;->hashKeyElement:Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    return-object v0
.end method

.method public getRangeKeyElement()Lcom/amazonaws/services/dynamodb/model/AttributeValue;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/model/Key;->rangeKeyElement:Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 217
    const/16 v1, 0x1f

    .line 218
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 220
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/Key;->getHashKeyElement()Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 221
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/Key;->getRangeKeyElement()Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    move-result-object v4

    if-nez v4, :cond_1

    :goto_1
    add-int v0, v2, v3

    .line 222
    return v0

    .line 220
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/Key;->getHashKeyElement()Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->hashCode()I

    move-result v2

    goto :goto_0

    .line 221
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/Key;->getRangeKeyElement()Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->hashCode()I

    move-result v3

    goto :goto_1
.end method

.method public setHashKeyElement(Lcom/amazonaws/services/dynamodb/model/AttributeValue;)V
    .locals 0
    .param p1, "hashKeyElement"    # Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/Key;->hashKeyElement:Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    .line 115
    return-void
.end method

.method public setRangeKeyElement(Lcom/amazonaws/services/dynamodb/model/AttributeValue;)V
    .locals 0
    .param p1, "rangeKeyElement"    # Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/Key;->rangeKeyElement:Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    .line 171
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 208
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/Key;->getHashKeyElement()Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HashKeyElement: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/Key;->getHashKeyElement()Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/Key;->getRangeKeyElement()Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RangeKeyElement: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/Key;->getRangeKeyElement()Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    :cond_1
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withHashKeyElement(Lcom/amazonaws/services/dynamodb/model/AttributeValue;)Lcom/amazonaws/services/dynamodb/model/Key;
    .locals 0
    .param p1, "hashKeyElement"    # Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/Key;->hashKeyElement:Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    .line 135
    return-object p0
.end method

.method public withRangeKeyElement(Lcom/amazonaws/services/dynamodb/model/AttributeValue;)Lcom/amazonaws/services/dynamodb/model/Key;
    .locals 0
    .param p1, "rangeKeyElement"    # Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/Key;->rangeKeyElement:Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    .line 193
    return-object p0
.end method
