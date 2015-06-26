.class public Lcom/amazonaws/services/simpledb/model/Attribute;
.super Ljava/lang/Object;
.source "Attribute.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private alternateNameEncoding:Ljava/lang/String;

.field private alternateValueEncoding:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/amazonaws/services/simpledb/model/Attribute;->name:Ljava/lang/String;

    .line 60
    iput-object p2, p0, Lcom/amazonaws/services/simpledb/model/Attribute;->value:Ljava/lang/String;

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

    .line 235
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 249
    :cond_0
    :goto_0
    return v3

    .line 236
    :cond_1
    if-eqz p1, :cond_0

    .line 238
    instance-of v1, p1, Lcom/amazonaws/services/simpledb/model/Attribute;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 239
    check-cast v0, Lcom/amazonaws/services/simpledb/model/Attribute;

    .line 241
    .local v0, "other":Lcom/amazonaws/services/simpledb/model/Attribute;
    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/Attribute;->getName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/Attribute;->getName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_7

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 242
    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/Attribute;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/Attribute;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/Attribute;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 243
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/Attribute;->getAlternateNameEncoding()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/Attribute;->getAlternateNameEncoding()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_9

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 244
    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/Attribute;->getAlternateNameEncoding()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/Attribute;->getAlternateNameEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/Attribute;->getAlternateNameEncoding()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 245
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/Attribute;->getValue()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_a

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/Attribute;->getValue()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_b

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 246
    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/Attribute;->getValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/Attribute;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/Attribute;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 247
    :cond_4
    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/Attribute;->getAlternateValueEncoding()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_c

    move v1, v2

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/Attribute;->getAlternateValueEncoding()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_d

    move v4, v2

    :goto_8
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 248
    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/Attribute;->getAlternateValueEncoding()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/Attribute;->getAlternateValueEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/Attribute;->getAlternateValueEncoding()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_5
    move v3, v2

    .line 249
    goto/16 :goto_0

    :cond_6
    move v1, v3

    .line 241
    goto/16 :goto_1

    :cond_7
    move v4, v3

    goto/16 :goto_2

    :cond_8
    move v1, v3

    .line 243
    goto :goto_3

    :cond_9
    move v4, v3

    goto :goto_4

    :cond_a
    move v1, v3

    .line 245
    goto :goto_5

    :cond_b
    move v4, v3

    goto :goto_6

    :cond_c
    move v1, v3

    .line 247
    goto :goto_7

    :cond_d
    move v4, v3

    goto :goto_8
.end method

.method public getAlternateNameEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/amazonaws/services/simpledb/model/Attribute;->alternateNameEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getAlternateValueEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/amazonaws/services/simpledb/model/Attribute;->alternateValueEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/amazonaws/services/simpledb/model/Attribute;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/amazonaws/services/simpledb/model/Attribute;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 223
    const/16 v1, 0x1f

    .line 224
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 226
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/Attribute;->getName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 227
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/Attribute;->getAlternateNameEncoding()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 228
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/Attribute;->getValue()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v0, v4, v2

    .line 229
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/Attribute;->getAlternateValueEncoding()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    :goto_3
    add-int v0, v2, v3

    .line 230
    return v0

    .line 226
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/Attribute;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 227
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/Attribute;->getAlternateNameEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 228
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/Attribute;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    .line 229
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/Attribute;->getAlternateValueEncoding()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_3
.end method

.method public setAlternateNameEncoding(Ljava/lang/String;)V
    .locals 0
    .param p1, "alternateNameEncoding"    # Ljava/lang/String;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/amazonaws/services/simpledb/model/Attribute;->alternateNameEncoding:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public setAlternateValueEncoding(Ljava/lang/String;)V
    .locals 0
    .param p1, "alternateValueEncoding"    # Ljava/lang/String;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/amazonaws/services/simpledb/model/Attribute;->alternateValueEncoding:Ljava/lang/String;

    .line 183
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/amazonaws/services/simpledb/model/Attribute;->name:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/amazonaws/services/simpledb/model/Attribute;->value:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 212
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/Attribute;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/Attribute;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/Attribute;->getAlternateNameEncoding()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AlternateNameEncoding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/Attribute;->getAlternateNameEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/Attribute;->getValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/Attribute;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/Attribute;->getAlternateValueEncoding()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AlternateValueEncoding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/Attribute;->getAlternateValueEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    :cond_3
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withAlternateNameEncoding(Ljava/lang/String;)Lcom/amazonaws/services/simpledb/model/Attribute;
    .locals 0
    .param p1, "alternateNameEncoding"    # Ljava/lang/String;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/amazonaws/services/simpledb/model/Attribute;->alternateNameEncoding:Ljava/lang/String;

    .line 129
    return-object p0
.end method

.method public withAlternateValueEncoding(Ljava/lang/String;)Lcom/amazonaws/services/simpledb/model/Attribute;
    .locals 0
    .param p1, "alternateValueEncoding"    # Ljava/lang/String;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/amazonaws/services/simpledb/model/Attribute;->alternateValueEncoding:Ljava/lang/String;

    .line 197
    return-object p0
.end method

.method public withName(Ljava/lang/String;)Lcom/amazonaws/services/simpledb/model/Attribute;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/amazonaws/services/simpledb/model/Attribute;->name:Ljava/lang/String;

    .line 95
    return-object p0
.end method

.method public withValue(Ljava/lang/String;)Lcom/amazonaws/services/simpledb/model/Attribute;
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/amazonaws/services/simpledb/model/Attribute;->value:Ljava/lang/String;

    .line 163
    return-object p0
.end method
