.class public Lcom/amazonaws/services/dynamodb/model/UpdateItemResult;
.super Ljava/lang/Object;
.source "UpdateItemResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private attributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodb/model/AttributeValue;",
            ">;"
        }
    .end annotation
.end field

.field private consumedCapacityUnits:Ljava/lang/Double;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
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

    .line 188
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 198
    :cond_0
    :goto_0
    return v3

    .line 189
    :cond_1
    if-eqz p1, :cond_0

    .line 191
    instance-of v1, p1, Lcom/amazonaws/services/dynamodb/model/UpdateItemResult;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 192
    check-cast v0, Lcom/amazonaws/services/dynamodb/model/UpdateItemResult;

    .line 194
    .local v0, "other":Lcom/amazonaws/services/dynamodb/model/UpdateItemResult;
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/UpdateItemResult;->getAttributes()Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_4

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/UpdateItemResult;->getAttributes()Ljava/util/Map;

    move-result-object v4

    if-nez v4, :cond_5

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 195
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/UpdateItemResult;->getAttributes()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/UpdateItemResult;->getAttributes()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/UpdateItemResult;->getAttributes()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 196
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/UpdateItemResult;->getConsumedCapacityUnits()Ljava/lang/Double;

    move-result-object v1

    if-nez v1, :cond_6

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/UpdateItemResult;->getConsumedCapacityUnits()Ljava/lang/Double;

    move-result-object v4

    if-nez v4, :cond_7

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 197
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/UpdateItemResult;->getConsumedCapacityUnits()Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/UpdateItemResult;->getConsumedCapacityUnits()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/UpdateItemResult;->getConsumedCapacityUnits()Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    move v3, v2

    .line 198
    goto :goto_0

    :cond_4
    move v1, v3

    .line 194
    goto :goto_1

    :cond_5
    move v4, v3

    goto :goto_2

    :cond_6
    move v1, v3

    .line 196
    goto :goto_3

    :cond_7
    move v4, v3

    goto :goto_4
.end method

.method public getAttributes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodb/model/AttributeValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/model/UpdateItemResult;->attributes:Ljava/util/Map;

    return-object v0
.end method

.method public getConsumedCapacityUnits()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/model/UpdateItemResult;->consumedCapacityUnits:Ljava/lang/Double;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 178
    const/16 v1, 0x1f

    .line 179
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 181
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/UpdateItemResult;->getAttributes()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 182
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/UpdateItemResult;->getConsumedCapacityUnits()Ljava/lang/Double;

    move-result-object v4

    if-nez v4, :cond_1

    :goto_1
    add-int v0, v2, v3

    .line 183
    return v0

    .line 181
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/UpdateItemResult;->getAttributes()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_0

    .line 182
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/UpdateItemResult;->getConsumedCapacityUnits()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->hashCode()I

    move-result v3

    goto :goto_1
.end method

.method public setAttributes(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodb/model/AttributeValue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p1, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/amazonaws/services/dynamodb/model/AttributeValue;>;"
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/UpdateItemResult;->attributes:Ljava/util/Map;

    .line 67
    return-void
.end method

.method public setConsumedCapacityUnits(Ljava/lang/Double;)V
    .locals 0
    .param p1, "consumedCapacityUnits"    # Ljava/lang/Double;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/UpdateItemResult;->consumedCapacityUnits:Ljava/lang/Double;

    .line 128
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 169
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/UpdateItemResult;->getAttributes()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attributes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/UpdateItemResult;->getAttributes()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/UpdateItemResult;->getConsumedCapacityUnits()Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConsumedCapacityUnits: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/UpdateItemResult;->getConsumedCapacityUnits()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    :cond_1
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withAttributes(Ljava/util/Map;)Lcom/amazonaws/services/dynamodb/model/UpdateItemResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodb/model/AttributeValue;",
            ">;)",
            "Lcom/amazonaws/services/dynamodb/model/UpdateItemResult;"
        }
    .end annotation

    .prologue
    .line 84
    .local p1, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/amazonaws/services/dynamodb/model/AttributeValue;>;"
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodb/model/UpdateItemResult;->setAttributes(Ljava/util/Map;)V

    .line 85
    return-object p0
.end method

.method public withConsumedCapacityUnits(Ljava/lang/Double;)Lcom/amazonaws/services/dynamodb/model/UpdateItemResult;
    .locals 0
    .param p1, "consumedCapacityUnits"    # Ljava/lang/Double;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/UpdateItemResult;->consumedCapacityUnits:Ljava/lang/Double;

    .line 154
    return-object p0
.end method
