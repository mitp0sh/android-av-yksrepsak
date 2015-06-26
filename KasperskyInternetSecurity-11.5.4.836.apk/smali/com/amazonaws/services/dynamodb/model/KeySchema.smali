.class public Lcom/amazonaws/services/dynamodb/model/KeySchema;
.super Ljava/lang/Object;
.source "KeySchema.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private hashKeyElement:Lcom/amazonaws/services/dynamodb/model/KeySchemaElement;

.field private rangeKeyElement:Lcom/amazonaws/services/dynamodb/model/KeySchemaElement;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/services/dynamodb/model/KeySchemaElement;)V
    .locals 0
    .param p1, "hashKeyElement"    # Lcom/amazonaws/services/dynamodb/model/KeySchemaElement;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/KeySchema;->hashKeyElement:Lcom/amazonaws/services/dynamodb/model/KeySchemaElement;

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

    .line 206
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 216
    :cond_0
    :goto_0
    return v3

    .line 207
    :cond_1
    if-eqz p1, :cond_0

    .line 209
    instance-of v1, p1, Lcom/amazonaws/services/dynamodb/model/KeySchema;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 210
    check-cast v0, Lcom/amazonaws/services/dynamodb/model/KeySchema;

    .line 212
    .local v0, "other":Lcom/amazonaws/services/dynamodb/model/KeySchema;
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/KeySchema;->getHashKeyElement()Lcom/amazonaws/services/dynamodb/model/KeySchemaElement;

    move-result-object v1

    if-nez v1, :cond_4

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/KeySchema;->getHashKeyElement()Lcom/amazonaws/services/dynamodb/model/KeySchemaElement;

    move-result-object v4

    if-nez v4, :cond_5

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 213
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/KeySchema;->getHashKeyElement()Lcom/amazonaws/services/dynamodb/model/KeySchemaElement;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/KeySchema;->getHashKeyElement()Lcom/amazonaws/services/dynamodb/model/KeySchemaElement;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/KeySchema;->getHashKeyElement()Lcom/amazonaws/services/dynamodb/model/KeySchemaElement;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/amazonaws/services/dynamodb/model/KeySchemaElement;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 214
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/KeySchema;->getRangeKeyElement()Lcom/amazonaws/services/dynamodb/model/KeySchemaElement;

    move-result-object v1

    if-nez v1, :cond_6

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/KeySchema;->getRangeKeyElement()Lcom/amazonaws/services/dynamodb/model/KeySchemaElement;

    move-result-object v4

    if-nez v4, :cond_7

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 215
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/KeySchema;->getRangeKeyElement()Lcom/amazonaws/services/dynamodb/model/KeySchemaElement;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/KeySchema;->getRangeKeyElement()Lcom/amazonaws/services/dynamodb/model/KeySchemaElement;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/KeySchema;->getRangeKeyElement()Lcom/amazonaws/services/dynamodb/model/KeySchemaElement;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/amazonaws/services/dynamodb/model/KeySchemaElement;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    move v3, v2

    .line 216
    goto :goto_0

    :cond_4
    move v1, v3

    .line 212
    goto :goto_1

    :cond_5
    move v4, v3

    goto :goto_2

    :cond_6
    move v1, v3

    .line 214
    goto :goto_3

    :cond_7
    move v4, v3

    goto :goto_4
.end method

.method public getHashKeyElement()Lcom/amazonaws/services/dynamodb/model/KeySchemaElement;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/model/KeySchema;->hashKeyElement:Lcom/amazonaws/services/dynamodb/model/KeySchemaElement;

    return-object v0
.end method

.method public getRangeKeyElement()Lcom/amazonaws/services/dynamodb/model/KeySchemaElement;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/model/KeySchema;->rangeKeyElement:Lcom/amazonaws/services/dynamodb/model/KeySchemaElement;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 196
    const/16 v1, 0x1f

    .line 197
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 199
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/KeySchema;->getHashKeyElement()Lcom/amazonaws/services/dynamodb/model/KeySchemaElement;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 200
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/KeySchema;->getRangeKeyElement()Lcom/amazonaws/services/dynamodb/model/KeySchemaElement;

    move-result-object v4

    if-nez v4, :cond_1

    :goto_1
    add-int v0, v2, v3

    .line 201
    return v0

    .line 199
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/KeySchema;->getHashKeyElement()Lcom/amazonaws/services/dynamodb/model/KeySchemaElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/services/dynamodb/model/KeySchemaElement;->hashCode()I

    move-result v2

    goto :goto_0

    .line 200
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/KeySchema;->getRangeKeyElement()Lcom/amazonaws/services/dynamodb/model/KeySchemaElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazonaws/services/dynamodb/model/KeySchemaElement;->hashCode()I

    move-result v3

    goto :goto_1
.end method

.method public setHashKeyElement(Lcom/amazonaws/services/dynamodb/model/KeySchemaElement;)V
    .locals 0
    .param p1, "hashKeyElement"    # Lcom/amazonaws/services/dynamodb/model/KeySchemaElement;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/KeySchema;->hashKeyElement:Lcom/amazonaws/services/dynamodb/model/KeySchemaElement;

    .line 94
    return-void
.end method

.method public setRangeKeyElement(Lcom/amazonaws/services/dynamodb/model/KeySchemaElement;)V
    .locals 0
    .param p1, "rangeKeyElement"    # Lcom/amazonaws/services/dynamodb/model/KeySchemaElement;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/KeySchema;->rangeKeyElement:Lcom/amazonaws/services/dynamodb/model/KeySchemaElement;

    .line 150
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/KeySchema;->getHashKeyElement()Lcom/amazonaws/services/dynamodb/model/KeySchemaElement;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HashKeyElement: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/KeySchema;->getHashKeyElement()Lcom/amazonaws/services/dynamodb/model/KeySchemaElement;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/KeySchema;->getRangeKeyElement()Lcom/amazonaws/services/dynamodb/model/KeySchemaElement;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RangeKeyElement: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/KeySchema;->getRangeKeyElement()Lcom/amazonaws/services/dynamodb/model/KeySchemaElement;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    :cond_1
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withHashKeyElement(Lcom/amazonaws/services/dynamodb/model/KeySchemaElement;)Lcom/amazonaws/services/dynamodb/model/KeySchema;
    .locals 0
    .param p1, "hashKeyElement"    # Lcom/amazonaws/services/dynamodb/model/KeySchemaElement;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/KeySchema;->hashKeyElement:Lcom/amazonaws/services/dynamodb/model/KeySchemaElement;

    .line 114
    return-object p0
.end method

.method public withRangeKeyElement(Lcom/amazonaws/services/dynamodb/model/KeySchemaElement;)Lcom/amazonaws/services/dynamodb/model/KeySchema;
    .locals 0
    .param p1, "rangeKeyElement"    # Lcom/amazonaws/services/dynamodb/model/KeySchemaElement;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/KeySchema;->rangeKeyElement:Lcom/amazonaws/services/dynamodb/model/KeySchemaElement;

    .line 172
    return-object p0
.end method
