.class public Lcom/amazonaws/services/dynamodb/model/AttributeValueUpdate;
.super Ljava/lang/Object;
.source "AttributeValueUpdate.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private action:Ljava/lang/String;

.field private value:Lcom/amazonaws/services/dynamodb/model/AttributeValue;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/services/dynamodb/model/AttributeValue;Lcom/amazonaws/services/dynamodb/model/AttributeAction;)V
    .locals 1
    .param p1, "value"    # Lcom/amazonaws/services/dynamodb/model/AttributeValue;
    .param p2, "action"    # Lcom/amazonaws/services/dynamodb/model/AttributeAction;

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/AttributeValueUpdate;->value:Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    .line 97
    invoke-virtual {p2}, Lcom/amazonaws/services/dynamodb/model/AttributeAction;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/dynamodb/model/AttributeValueUpdate;->action:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/services/dynamodb/model/AttributeValue;Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Lcom/amazonaws/services/dynamodb/model/AttributeValue;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/AttributeValueUpdate;->value:Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    .line 73
    iput-object p2, p0, Lcom/amazonaws/services/dynamodb/model/AttributeValueUpdate;->action:Ljava/lang/String;

    .line 74
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 329
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 339
    :cond_0
    :goto_0
    return v3

    .line 330
    :cond_1
    if-eqz p1, :cond_0

    .line 332
    instance-of v1, p1, Lcom/amazonaws/services/dynamodb/model/AttributeValueUpdate;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 333
    check-cast v0, Lcom/amazonaws/services/dynamodb/model/AttributeValueUpdate;

    .line 335
    .local v0, "other":Lcom/amazonaws/services/dynamodb/model/AttributeValueUpdate;
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/AttributeValueUpdate;->getValue()Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    move-result-object v1

    if-nez v1, :cond_4

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/AttributeValueUpdate;->getValue()Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    move-result-object v4

    if-nez v4, :cond_5

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 336
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/AttributeValueUpdate;->getValue()Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/AttributeValueUpdate;->getValue()Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/AttributeValueUpdate;->getValue()Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 337
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/AttributeValueUpdate;->getAction()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/AttributeValueUpdate;->getAction()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_7

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 338
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/AttributeValueUpdate;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/AttributeValueUpdate;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/AttributeValueUpdate;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    move v3, v2

    .line 339
    goto :goto_0

    :cond_4
    move v1, v3

    .line 335
    goto :goto_1

    :cond_5
    move v4, v3

    goto :goto_2

    :cond_6
    move v1, v3

    .line 337
    goto :goto_3

    :cond_7
    move v4, v3

    goto :goto_4
.end method

.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/model/AttributeValueUpdate;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Lcom/amazonaws/services/dynamodb/model/AttributeValue;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/model/AttributeValueUpdate;->value:Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 319
    const/16 v1, 0x1f

    .line 320
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 322
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/AttributeValueUpdate;->getValue()Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 323
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/AttributeValueUpdate;->getAction()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    :goto_1
    add-int v0, v2, v3

    .line 324
    return v0

    .line 322
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/AttributeValueUpdate;->getValue()Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->hashCode()I

    move-result v2

    goto :goto_0

    .line 323
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/AttributeValueUpdate;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_1
.end method

.method public setAction(Lcom/amazonaws/services/dynamodb/model/AttributeAction;)V
    .locals 1
    .param p1, "action"    # Lcom/amazonaws/services/dynamodb/model/AttributeAction;

    .prologue
    .line 262
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodb/model/AttributeAction;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/dynamodb/model/AttributeValueUpdate;->action:Ljava/lang/String;

    .line 263
    return-void
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/AttributeValueUpdate;->action:Ljava/lang/String;

    .line 200
    return-void
.end method

.method public setValue(Lcom/amazonaws/services/dynamodb/model/AttributeValue;)V
    .locals 0
    .param p1, "value"    # Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/AttributeValueUpdate;->value:Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    .line 124
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 310
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/AttributeValueUpdate;->getValue()Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/AttributeValueUpdate;->getValue()Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/AttributeValueUpdate;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/AttributeValueUpdate;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    :cond_1
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withAction(Lcom/amazonaws/services/dynamodb/model/AttributeAction;)Lcom/amazonaws/services/dynamodb/model/AttributeValueUpdate;
    .locals 1
    .param p1, "action"    # Lcom/amazonaws/services/dynamodb/model/AttributeAction;

    .prologue
    .line 295
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodb/model/AttributeAction;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/dynamodb/model/AttributeValueUpdate;->action:Ljava/lang/String;

    .line 296
    return-object p0
.end method

.method public withAction(Ljava/lang/String;)Lcom/amazonaws/services/dynamodb/model/AttributeValueUpdate;
    .locals 0
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 232
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/AttributeValueUpdate;->action:Ljava/lang/String;

    .line 233
    return-object p0
.end method

.method public withValue(Lcom/amazonaws/services/dynamodb/model/AttributeValue;)Lcom/amazonaws/services/dynamodb/model/AttributeValueUpdate;
    .locals 0
    .param p1, "value"    # Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/AttributeValueUpdate;->value:Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    .line 142
    return-object p0
.end method
