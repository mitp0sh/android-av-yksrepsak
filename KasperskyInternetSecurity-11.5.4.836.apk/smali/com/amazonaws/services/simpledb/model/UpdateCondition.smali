.class public Lcom/amazonaws/services/simpledb/model/UpdateCondition;
.super Ljava/lang/Object;
.source "UpdateCondition.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private exists:Ljava/lang/Boolean;

.field private name:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "exists"    # Ljava/lang/Boolean;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/amazonaws/services/simpledb/model/UpdateCondition;->name:Ljava/lang/String;

    .line 71
    iput-object p2, p0, Lcom/amazonaws/services/simpledb/model/UpdateCondition;->value:Ljava/lang/String;

    .line 72
    iput-object p3, p0, Lcom/amazonaws/services/simpledb/model/UpdateCondition;->exists:Ljava/lang/Boolean;

    .line 73
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 266
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 278
    :cond_0
    :goto_0
    return v3

    .line 267
    :cond_1
    if-eqz p1, :cond_0

    .line 269
    instance-of v1, p1, Lcom/amazonaws/services/simpledb/model/UpdateCondition;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 270
    check-cast v0, Lcom/amazonaws/services/simpledb/model/UpdateCondition;

    .line 272
    .local v0, "other":Lcom/amazonaws/services/simpledb/model/UpdateCondition;
    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/UpdateCondition;->getName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/UpdateCondition;->getName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_6

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 273
    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/UpdateCondition;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/UpdateCondition;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/UpdateCondition;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 274
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/UpdateCondition;->getValue()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/UpdateCondition;->getValue()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_8

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 275
    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/UpdateCondition;->getValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/UpdateCondition;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/UpdateCondition;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 276
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/UpdateCondition;->isExists()Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_9

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/UpdateCondition;->isExists()Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_a

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 277
    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/UpdateCondition;->isExists()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/UpdateCondition;->isExists()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/UpdateCondition;->isExists()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_4
    move v3, v2

    .line 278
    goto :goto_0

    :cond_5
    move v1, v3

    .line 272
    goto :goto_1

    :cond_6
    move v4, v3

    goto :goto_2

    :cond_7
    move v1, v3

    .line 274
    goto :goto_3

    :cond_8
    move v4, v3

    goto :goto_4

    :cond_9
    move v1, v3

    .line 276
    goto :goto_5

    :cond_a
    move v4, v3

    goto :goto_6
.end method

.method public getExists()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/amazonaws/services/simpledb/model/UpdateCondition;->exists:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/amazonaws/services/simpledb/model/UpdateCondition;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/amazonaws/services/simpledb/model/UpdateCondition;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 255
    const/16 v1, 0x1f

    .line 256
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 258
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/UpdateCondition;->getName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 259
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/UpdateCondition;->getValue()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 260
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/UpdateCondition;->isExists()Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_2

    :goto_2
    add-int v0, v2, v3

    .line 261
    return v0

    .line 258
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/UpdateCondition;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 259
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/UpdateCondition;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 260
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/UpdateCondition;->isExists()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->hashCode()I

    move-result v3

    goto :goto_2
.end method

.method public isExists()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/amazonaws/services/simpledb/model/UpdateCondition;->exists:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setExists(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "exists"    # Ljava/lang/Boolean;

    .prologue
    .line 186
    iput-object p1, p0, Lcom/amazonaws/services/simpledb/model/UpdateCondition;->exists:Ljava/lang/Boolean;

    .line 187
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/amazonaws/services/simpledb/model/UpdateCondition;->name:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/amazonaws/services/simpledb/model/UpdateCondition;->value:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 245
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/UpdateCondition;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/UpdateCondition;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/UpdateCondition;->getValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/UpdateCondition;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/UpdateCondition;->isExists()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exists: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/UpdateCondition;->isExists()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    :cond_2
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withExists(Ljava/lang/Boolean;)Lcom/amazonaws/services/simpledb/model/UpdateCondition;
    .locals 0
    .param p1, "exists"    # Ljava/lang/Boolean;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/amazonaws/services/simpledb/model/UpdateCondition;->exists:Ljava/lang/Boolean;

    .line 211
    return-object p0
.end method

.method public withName(Ljava/lang/String;)Lcom/amazonaws/services/simpledb/model/UpdateCondition;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/amazonaws/services/simpledb/model/UpdateCondition;->name:Ljava/lang/String;

    .line 107
    return-object p0
.end method

.method public withValue(Ljava/lang/String;)Lcom/amazonaws/services/simpledb/model/UpdateCondition;
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/amazonaws/services/simpledb/model/UpdateCondition;->value:Ljava/lang/String;

    .line 147
    return-object p0
.end method
