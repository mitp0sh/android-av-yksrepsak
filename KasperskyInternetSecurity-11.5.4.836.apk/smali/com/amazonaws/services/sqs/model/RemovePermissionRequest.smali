.class public Lcom/amazonaws/services/sqs/model/RemovePermissionRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "RemovePermissionRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private label:Ljava/lang/String;

.field private queueUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "queueUrl"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/amazonaws/services/sqs/model/RemovePermissionRequest;->queueUrl:Ljava/lang/String;

    .line 58
    iput-object p2, p0, Lcom/amazonaws/services/sqs/model/RemovePermissionRequest;->label:Ljava/lang/String;

    .line 59
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 167
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 177
    :cond_0
    :goto_0
    return v3

    .line 168
    :cond_1
    if-eqz p1, :cond_0

    .line 170
    instance-of v1, p1, Lcom/amazonaws/services/sqs/model/RemovePermissionRequest;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 171
    check-cast v0, Lcom/amazonaws/services/sqs/model/RemovePermissionRequest;

    .line 173
    .local v0, "other":Lcom/amazonaws/services/sqs/model/RemovePermissionRequest;
    invoke-virtual {v0}, Lcom/amazonaws/services/sqs/model/RemovePermissionRequest;->getQueueUrl()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/RemovePermissionRequest;->getQueueUrl()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_5

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 174
    invoke-virtual {v0}, Lcom/amazonaws/services/sqs/model/RemovePermissionRequest;->getQueueUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/sqs/model/RemovePermissionRequest;->getQueueUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/RemovePermissionRequest;->getQueueUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 175
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/sqs/model/RemovePermissionRequest;->getLabel()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/RemovePermissionRequest;->getLabel()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_7

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 176
    invoke-virtual {v0}, Lcom/amazonaws/services/sqs/model/RemovePermissionRequest;->getLabel()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/sqs/model/RemovePermissionRequest;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/RemovePermissionRequest;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    move v3, v2

    .line 177
    goto :goto_0

    :cond_4
    move v1, v3

    .line 173
    goto :goto_1

    :cond_5
    move v4, v3

    goto :goto_2

    :cond_6
    move v1, v3

    .line 175
    goto :goto_3

    :cond_7
    move v4, v3

    goto :goto_4
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/amazonaws/services/sqs/model/RemovePermissionRequest;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getQueueUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/amazonaws/services/sqs/model/RemovePermissionRequest;->queueUrl:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 157
    const/16 v1, 0x1f

    .line 158
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 160
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/RemovePermissionRequest;->getQueueUrl()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 161
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/RemovePermissionRequest;->getLabel()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    :goto_1
    add-int v0, v2, v3

    .line 162
    return v0

    .line 160
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/RemovePermissionRequest;->getQueueUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 161
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/RemovePermissionRequest;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_1
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/amazonaws/services/sqs/model/RemovePermissionRequest;->label:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public setQueueUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "queueUrl"    # Ljava/lang/String;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/amazonaws/services/sqs/model/RemovePermissionRequest;->queueUrl:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/RemovePermissionRequest;->getQueueUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QueueUrl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/RemovePermissionRequest;->getQueueUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/RemovePermissionRequest;->getLabel()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Label: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/RemovePermissionRequest;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    :cond_1
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withLabel(Ljava/lang/String;)Lcom/amazonaws/services/sqs/model/RemovePermissionRequest;
    .locals 0
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/amazonaws/services/sqs/model/RemovePermissionRequest;->label:Ljava/lang/String;

    .line 133
    return-object p0
.end method

.method public withQueueUrl(Ljava/lang/String;)Lcom/amazonaws/services/sqs/model/RemovePermissionRequest;
    .locals 0
    .param p1, "queueUrl"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/amazonaws/services/sqs/model/RemovePermissionRequest;->queueUrl:Ljava/lang/String;

    .line 93
    return-object p0
.end method
