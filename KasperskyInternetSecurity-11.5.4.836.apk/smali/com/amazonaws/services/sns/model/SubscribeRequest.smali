.class public Lcom/amazonaws/services/sns/model/SubscribeRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "SubscribeRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private endpoint:Ljava/lang/String;

.field private protocol:Ljava/lang/String;

.field private topicArn:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "topicArn"    # Ljava/lang/String;
    .param p2, "protocol"    # Ljava/lang/String;
    .param p3, "endpoint"    # Ljava/lang/String;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/amazonaws/services/sns/model/SubscribeRequest;->topicArn:Ljava/lang/String;

    .line 95
    iput-object p2, p0, Lcom/amazonaws/services/sns/model/SubscribeRequest;->protocol:Ljava/lang/String;

    .line 96
    iput-object p3, p0, Lcom/amazonaws/services/sns/model/SubscribeRequest;->endpoint:Ljava/lang/String;

    .line 97
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 331
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 343
    :cond_0
    :goto_0
    return v3

    .line 332
    :cond_1
    if-eqz p1, :cond_0

    .line 334
    instance-of v1, p1, Lcom/amazonaws/services/sns/model/SubscribeRequest;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 335
    check-cast v0, Lcom/amazonaws/services/sns/model/SubscribeRequest;

    .line 337
    .local v0, "other":Lcom/amazonaws/services/sns/model/SubscribeRequest;
    invoke-virtual {v0}, Lcom/amazonaws/services/sns/model/SubscribeRequest;->getTopicArn()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/sns/model/SubscribeRequest;->getTopicArn()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_6

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 338
    invoke-virtual {v0}, Lcom/amazonaws/services/sns/model/SubscribeRequest;->getTopicArn()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/sns/model/SubscribeRequest;->getTopicArn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/sns/model/SubscribeRequest;->getTopicArn()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 339
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/sns/model/SubscribeRequest;->getProtocol()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/sns/model/SubscribeRequest;->getProtocol()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_8

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 340
    invoke-virtual {v0}, Lcom/amazonaws/services/sns/model/SubscribeRequest;->getProtocol()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/sns/model/SubscribeRequest;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/sns/model/SubscribeRequest;->getProtocol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 341
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/sns/model/SubscribeRequest;->getEndpoint()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_9

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/sns/model/SubscribeRequest;->getEndpoint()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_a

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 342
    invoke-virtual {v0}, Lcom/amazonaws/services/sns/model/SubscribeRequest;->getEndpoint()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/sns/model/SubscribeRequest;->getEndpoint()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/sns/model/SubscribeRequest;->getEndpoint()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_4
    move v3, v2

    .line 343
    goto :goto_0

    :cond_5
    move v1, v3

    .line 337
    goto :goto_1

    :cond_6
    move v4, v3

    goto :goto_2

    :cond_7
    move v1, v3

    .line 339
    goto :goto_3

    :cond_8
    move v4, v3

    goto :goto_4

    :cond_9
    move v1, v3

    .line 341
    goto :goto_5

    :cond_a
    move v4, v3

    goto :goto_6
.end method

.method public getEndpoint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/amazonaws/services/sns/model/SubscribeRequest;->endpoint:Ljava/lang/String;

    return-object v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/amazonaws/services/sns/model/SubscribeRequest;->protocol:Ljava/lang/String;

    return-object v0
.end method

.method public getTopicArn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/amazonaws/services/sns/model/SubscribeRequest;->topicArn:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 320
    const/16 v1, 0x1f

    .line 321
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 323
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/sns/model/SubscribeRequest;->getTopicArn()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 324
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/sns/model/SubscribeRequest;->getProtocol()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 325
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/sns/model/SubscribeRequest;->getEndpoint()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    :goto_2
    add-int v0, v2, v3

    .line 326
    return v0

    .line 323
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/sns/model/SubscribeRequest;->getTopicArn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 324
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/sns/model/SubscribeRequest;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 325
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/sns/model/SubscribeRequest;->getEndpoint()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_2
.end method

.method public setEndpoint(Ljava/lang/String;)V
    .locals 0
    .param p1, "endpoint"    # Ljava/lang/String;

    .prologue
    .line 262
    iput-object p1, p0, Lcom/amazonaws/services/sns/model/SubscribeRequest;->endpoint:Ljava/lang/String;

    .line 263
    return-void
.end method

.method public setProtocol(Ljava/lang/String;)V
    .locals 0
    .param p1, "protocol"    # Ljava/lang/String;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/amazonaws/services/sns/model/SubscribeRequest;->protocol:Ljava/lang/String;

    .line 179
    return-void
.end method

.method public setTopicArn(Ljava/lang/String;)V
    .locals 0
    .param p1, "topicArn"    # Ljava/lang/String;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/amazonaws/services/sns/model/SubscribeRequest;->topicArn:Ljava/lang/String;

    .line 117
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
    invoke-virtual {p0}, Lcom/amazonaws/services/sns/model/SubscribeRequest;->getTopicArn()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TopicArn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/sns/model/SubscribeRequest;->getTopicArn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/sns/model/SubscribeRequest;->getProtocol()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Protocol: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/sns/model/SubscribeRequest;->getProtocol()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/sns/model/SubscribeRequest;->getEndpoint()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Endpoint: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/sns/model/SubscribeRequest;->getEndpoint()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    :cond_2
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withEndpoint(Ljava/lang/String;)Lcom/amazonaws/services/sns/model/SubscribeRequest;
    .locals 0
    .param p1, "endpoint"    # Ljava/lang/String;

    .prologue
    .line 294
    iput-object p1, p0, Lcom/amazonaws/services/sns/model/SubscribeRequest;->endpoint:Ljava/lang/String;

    .line 295
    return-object p0
.end method

.method public withProtocol(Ljava/lang/String;)Lcom/amazonaws/services/sns/model/SubscribeRequest;
    .locals 0
    .param p1, "protocol"    # Ljava/lang/String;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/amazonaws/services/sns/model/SubscribeRequest;->protocol:Ljava/lang/String;

    .line 207
    return-object p0
.end method

.method public withTopicArn(Ljava/lang/String;)Lcom/amazonaws/services/sns/model/SubscribeRequest;
    .locals 0
    .param p1, "topicArn"    # Ljava/lang/String;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/amazonaws/services/sns/model/SubscribeRequest;->topicArn:Ljava/lang/String;

    .line 131
    return-object p0
.end method
