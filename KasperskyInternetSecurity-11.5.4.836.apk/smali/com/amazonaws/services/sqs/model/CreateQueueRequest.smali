.class public Lcom/amazonaws/services/sqs/model/CreateQueueRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "CreateQueueRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private attributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private queueName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "queueName"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/amazonaws/services/sqs/model/CreateQueueRequest;->queueName:Ljava/lang/String;

    .line 63
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 169
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 179
    :cond_0
    :goto_0
    return v3

    .line 170
    :cond_1
    if-eqz p1, :cond_0

    .line 172
    instance-of v1, p1, Lcom/amazonaws/services/sqs/model/CreateQueueRequest;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 173
    check-cast v0, Lcom/amazonaws/services/sqs/model/CreateQueueRequest;

    .line 175
    .local v0, "other":Lcom/amazonaws/services/sqs/model/CreateQueueRequest;
    invoke-virtual {v0}, Lcom/amazonaws/services/sqs/model/CreateQueueRequest;->getQueueName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/CreateQueueRequest;->getQueueName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_5

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 176
    invoke-virtual {v0}, Lcom/amazonaws/services/sqs/model/CreateQueueRequest;->getQueueName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/sqs/model/CreateQueueRequest;->getQueueName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/CreateQueueRequest;->getQueueName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/sqs/model/CreateQueueRequest;->getAttributes()Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_6

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/CreateQueueRequest;->getAttributes()Ljava/util/Map;

    move-result-object v4

    if-nez v4, :cond_7

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 178
    invoke-virtual {v0}, Lcom/amazonaws/services/sqs/model/CreateQueueRequest;->getAttributes()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/sqs/model/CreateQueueRequest;->getAttributes()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/CreateQueueRequest;->getAttributes()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    move v3, v2

    .line 179
    goto :goto_0

    :cond_4
    move v1, v3

    .line 175
    goto :goto_1

    :cond_5
    move v4, v3

    goto :goto_2

    :cond_6
    move v1, v3

    .line 177
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
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lcom/amazonaws/services/sqs/model/CreateQueueRequest;->attributes:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/sqs/model/CreateQueueRequest;->attributes:Ljava/util/Map;

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/sqs/model/CreateQueueRequest;->attributes:Ljava/util/Map;

    return-object v0
.end method

.method public getQueueName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/amazonaws/services/sqs/model/CreateQueueRequest;->queueName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 159
    const/16 v1, 0x1f

    .line 160
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 162
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/CreateQueueRequest;->getQueueName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 163
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/CreateQueueRequest;->getAttributes()Ljava/util/Map;

    move-result-object v4

    if-nez v4, :cond_1

    :goto_1
    add-int v0, v2, v3

    .line 164
    return v0

    .line 162
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/CreateQueueRequest;->getQueueName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 163
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/CreateQueueRequest;->getAttributes()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

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
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 121
    .local p1, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/amazonaws/services/sqs/model/CreateQueueRequest;->attributes:Ljava/util/Map;

    .line 122
    return-void
.end method

.method public setQueueName(Ljava/lang/String;)V
    .locals 0
    .param p1, "queueName"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/amazonaws/services/sqs/model/CreateQueueRequest;->queueName:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/CreateQueueRequest;->getQueueName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QueueName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/CreateQueueRequest;->getQueueName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/CreateQueueRequest;->getAttributes()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attributes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/CreateQueueRequest;->getAttributes()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    :cond_1
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withAttributes(Ljava/util/Map;)Lcom/amazonaws/services/sqs/model/CreateQueueRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/sqs/model/CreateQueueRequest;"
        }
    .end annotation

    .prologue
    .line 135
    .local p1, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/sqs/model/CreateQueueRequest;->setAttributes(Ljava/util/Map;)V

    .line 136
    return-object p0
.end method

.method public withQueueName(Ljava/lang/String;)Lcom/amazonaws/services/sqs/model/CreateQueueRequest;
    .locals 0
    .param p1, "queueName"    # Ljava/lang/String;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/amazonaws/services/sqs/model/CreateQueueRequest;->queueName:Ljava/lang/String;

    .line 97
    return-object p0
.end method
