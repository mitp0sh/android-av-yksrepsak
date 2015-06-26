.class public Lcom/amazonaws/services/simpledb/model/SelectRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "SelectRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private consistentRead:Ljava/lang/Boolean;

.field private nextToken:Ljava/lang/String;

.field private selectExpression:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "selectExpression"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/amazonaws/services/simpledb/model/SelectRequest;->selectExpression:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "selectExpression"    # Ljava/lang/String;
    .param p2, "consistentRead"    # Ljava/lang/Boolean;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/amazonaws/services/simpledb/model/SelectRequest;->selectExpression:Ljava/lang/String;

    .line 91
    iput-object p2, p0, Lcom/amazonaws/services/simpledb/model/SelectRequest;->consistentRead:Ljava/lang/Boolean;

    .line 92
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 277
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 289
    :cond_0
    :goto_0
    return v3

    .line 278
    :cond_1
    if-eqz p1, :cond_0

    .line 280
    instance-of v1, p1, Lcom/amazonaws/services/simpledb/model/SelectRequest;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 281
    check-cast v0, Lcom/amazonaws/services/simpledb/model/SelectRequest;

    .line 283
    .local v0, "other":Lcom/amazonaws/services/simpledb/model/SelectRequest;
    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/SelectRequest;->getSelectExpression()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/SelectRequest;->getSelectExpression()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_6

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 284
    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/SelectRequest;->getSelectExpression()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/SelectRequest;->getSelectExpression()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/SelectRequest;->getSelectExpression()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 285
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/SelectRequest;->getNextToken()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/SelectRequest;->getNextToken()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_8

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 286
    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/SelectRequest;->getNextToken()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/SelectRequest;->getNextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/SelectRequest;->getNextToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 287
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/SelectRequest;->isConsistentRead()Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_9

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/SelectRequest;->isConsistentRead()Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_a

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 288
    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/SelectRequest;->isConsistentRead()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/SelectRequest;->isConsistentRead()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/SelectRequest;->isConsistentRead()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_4
    move v3, v2

    .line 289
    goto :goto_0

    :cond_5
    move v1, v3

    .line 283
    goto :goto_1

    :cond_6
    move v4, v3

    goto :goto_2

    :cond_7
    move v1, v3

    .line 285
    goto :goto_3

    :cond_8
    move v4, v3

    goto :goto_4

    :cond_9
    move v1, v3

    .line 287
    goto :goto_5

    :cond_a
    move v4, v3

    goto :goto_6
.end method

.method public getConsistentRead()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/amazonaws/services/simpledb/model/SelectRequest;->consistentRead:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getNextToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/amazonaws/services/simpledb/model/SelectRequest;->nextToken:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectExpression()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/amazonaws/services/simpledb/model/SelectRequest;->selectExpression:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 266
    const/16 v1, 0x1f

    .line 267
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 269
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/SelectRequest;->getSelectExpression()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 270
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/SelectRequest;->getNextToken()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 271
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/SelectRequest;->isConsistentRead()Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_2

    :goto_2
    add-int v0, v2, v3

    .line 272
    return v0

    .line 269
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/SelectRequest;->getSelectExpression()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 270
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/SelectRequest;->getNextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 271
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/SelectRequest;->isConsistentRead()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->hashCode()I

    move-result v3

    goto :goto_2
.end method

.method public isConsistentRead()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/amazonaws/services/simpledb/model/SelectRequest;->consistentRead:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setConsistentRead(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "consistentRead"    # Ljava/lang/Boolean;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/amazonaws/services/simpledb/model/SelectRequest;->consistentRead:Ljava/lang/Boolean;

    .line 202
    return-void
.end method

.method public setNextToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "nextToken"    # Ljava/lang/String;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/amazonaws/services/simpledb/model/SelectRequest;->nextToken:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public setSelectExpression(Ljava/lang/String;)V
    .locals 0
    .param p1, "selectExpression"    # Ljava/lang/String;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/amazonaws/services/simpledb/model/SelectRequest;->selectExpression:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 256
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/SelectRequest;->getSelectExpression()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SelectExpression: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/SelectRequest;->getSelectExpression()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/SelectRequest;->getNextToken()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NextToken: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/SelectRequest;->getNextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/SelectRequest;->isConsistentRead()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConsistentRead: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/SelectRequest;->isConsistentRead()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    :cond_2
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withConsistentRead(Ljava/lang/Boolean;)Lcom/amazonaws/services/simpledb/model/SelectRequest;
    .locals 0
    .param p1, "consistentRead"    # Ljava/lang/Boolean;

    .prologue
    .line 223
    iput-object p1, p0, Lcom/amazonaws/services/simpledb/model/SelectRequest;->consistentRead:Ljava/lang/Boolean;

    .line 224
    return-object p0
.end method

.method public withNextToken(Ljava/lang/String;)Lcom/amazonaws/services/simpledb/model/SelectRequest;
    .locals 0
    .param p1, "nextToken"    # Ljava/lang/String;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/amazonaws/services/simpledb/model/SelectRequest;->nextToken:Ljava/lang/String;

    .line 166
    return-object p0
.end method

.method public withSelectExpression(Ljava/lang/String;)Lcom/amazonaws/services/simpledb/model/SelectRequest;
    .locals 0
    .param p1, "selectExpression"    # Ljava/lang/String;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/amazonaws/services/simpledb/model/SelectRequest;->selectExpression:Ljava/lang/String;

    .line 126
    return-object p0
.end method
