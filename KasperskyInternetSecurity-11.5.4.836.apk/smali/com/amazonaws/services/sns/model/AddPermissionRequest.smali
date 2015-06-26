.class public Lcom/amazonaws/services/sns/model/AddPermissionRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "AddPermissionRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private aWSAccountIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private actionNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private label:Ljava/lang/String;

.field private topicArn:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p1, "topicArn"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p3, "aWSAccountIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "actionNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/amazonaws/services/sns/model/AddPermissionRequest;->topicArn:Ljava/lang/String;

    .line 81
    iput-object p2, p0, Lcom/amazonaws/services/sns/model/AddPermissionRequest;->label:Ljava/lang/String;

    .line 82
    iput-object p3, p0, Lcom/amazonaws/services/sns/model/AddPermissionRequest;->aWSAccountIds:Ljava/util/List;

    .line 83
    iput-object p4, p0, Lcom/amazonaws/services/sns/model/AddPermissionRequest;->actionNames:Ljava/util/List;

    .line 84
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 376
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 390
    :cond_0
    :goto_0
    return v3

    .line 377
    :cond_1
    if-eqz p1, :cond_0

    .line 379
    instance-of v1, p1, Lcom/amazonaws/services/sns/model/AddPermissionRequest;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 380
    check-cast v0, Lcom/amazonaws/services/sns/model/AddPermissionRequest;

    .line 382
    .local v0, "other":Lcom/amazonaws/services/sns/model/AddPermissionRequest;
    invoke-virtual {v0}, Lcom/amazonaws/services/sns/model/AddPermissionRequest;->getTopicArn()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/sns/model/AddPermissionRequest;->getTopicArn()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_7

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 383
    invoke-virtual {v0}, Lcom/amazonaws/services/sns/model/AddPermissionRequest;->getTopicArn()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/sns/model/AddPermissionRequest;->getTopicArn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/sns/model/AddPermissionRequest;->getTopicArn()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 384
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/sns/model/AddPermissionRequest;->getLabel()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/sns/model/AddPermissionRequest;->getLabel()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_9

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 385
    invoke-virtual {v0}, Lcom/amazonaws/services/sns/model/AddPermissionRequest;->getLabel()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/sns/model/AddPermissionRequest;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/sns/model/AddPermissionRequest;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 386
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/sns/model/AddPermissionRequest;->getAWSAccountIds()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_a

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/sns/model/AddPermissionRequest;->getAWSAccountIds()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_b

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 387
    invoke-virtual {v0}, Lcom/amazonaws/services/sns/model/AddPermissionRequest;->getAWSAccountIds()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/sns/model/AddPermissionRequest;->getAWSAccountIds()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/sns/model/AddPermissionRequest;->getAWSAccountIds()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 388
    :cond_4
    invoke-virtual {v0}, Lcom/amazonaws/services/sns/model/AddPermissionRequest;->getActionNames()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_c

    move v1, v2

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/sns/model/AddPermissionRequest;->getActionNames()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_d

    move v4, v2

    :goto_8
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 389
    invoke-virtual {v0}, Lcom/amazonaws/services/sns/model/AddPermissionRequest;->getActionNames()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/amazonaws/services/sns/model/AddPermissionRequest;->getActionNames()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/sns/model/AddPermissionRequest;->getActionNames()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_5
    move v3, v2

    .line 390
    goto/16 :goto_0

    :cond_6
    move v1, v3

    .line 382
    goto/16 :goto_1

    :cond_7
    move v4, v3

    goto/16 :goto_2

    :cond_8
    move v1, v3

    .line 384
    goto :goto_3

    :cond_9
    move v4, v3

    goto :goto_4

    :cond_a
    move v1, v3

    .line 386
    goto :goto_5

    :cond_b
    move v4, v3

    goto :goto_6

    :cond_c
    move v1, v3

    .line 388
    goto :goto_7

    :cond_d
    move v4, v3

    goto :goto_8
.end method

.method public getAWSAccountIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 173
    iget-object v0, p0, Lcom/amazonaws/services/sns/model/AddPermissionRequest;->aWSAccountIds:Ljava/util/List;

    if-nez v0, :cond_0

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/sns/model/AddPermissionRequest;->aWSAccountIds:Ljava/util/List;

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/sns/model/AddPermissionRequest;->aWSAccountIds:Ljava/util/List;

    return-object v0
.end method

.method public getActionNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 274
    iget-object v0, p0, Lcom/amazonaws/services/sns/model/AddPermissionRequest;->actionNames:Ljava/util/List;

    if-nez v0, :cond_0

    .line 275
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/sns/model/AddPermissionRequest;->actionNames:Ljava/util/List;

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/sns/model/AddPermissionRequest;->actionNames:Ljava/util/List;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/amazonaws/services/sns/model/AddPermissionRequest;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getTopicArn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/amazonaws/services/sns/model/AddPermissionRequest;->topicArn:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 364
    const/16 v1, 0x1f

    .line 365
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 367
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/sns/model/AddPermissionRequest;->getTopicArn()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 368
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/sns/model/AddPermissionRequest;->getLabel()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 369
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/sns/model/AddPermissionRequest;->getAWSAccountIds()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v0, v4, v2

    .line 370
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/sns/model/AddPermissionRequest;->getActionNames()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_3

    :goto_3
    add-int v0, v2, v3

    .line 371
    return v0

    .line 367
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/sns/model/AddPermissionRequest;->getTopicArn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 368
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/sns/model/AddPermissionRequest;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 369
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/sns/model/AddPermissionRequest;->getAWSAccountIds()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    .line 370
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/sns/model/AddPermissionRequest;->getActionNames()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_3
.end method

.method public setAWSAccountIds(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 195
    .local p1, "aWSAccountIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 196
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/sns/model/AddPermissionRequest;->aWSAccountIds:Ljava/util/List;

    .line 203
    :goto_0
    return-void

    .line 200
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 201
    .local v0, "aWSAccountIdsCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 202
    iput-object v0, p0, Lcom/amazonaws/services/sns/model/AddPermissionRequest;->aWSAccountIds:Ljava/util/List;

    goto :goto_0
.end method

.method public setActionNames(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 288
    .local p1, "actionNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 289
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/sns/model/AddPermissionRequest;->actionNames:Ljava/util/List;

    .line 296
    :goto_0
    return-void

    .line 293
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 294
    .local v0, "actionNamesCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 295
    iput-object v0, p0, Lcom/amazonaws/services/sns/model/AddPermissionRequest;->actionNames:Ljava/util/List;

    goto :goto_0
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/amazonaws/services/sns/model/AddPermissionRequest;->label:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public setTopicArn(Ljava/lang/String;)V
    .locals 0
    .param p1, "topicArn"    # Ljava/lang/String;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/amazonaws/services/sns/model/AddPermissionRequest;->topicArn:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 353
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    invoke-virtual {p0}, Lcom/amazonaws/services/sns/model/AddPermissionRequest;->getTopicArn()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TopicArn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/sns/model/AddPermissionRequest;->getTopicArn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/sns/model/AddPermissionRequest;->getLabel()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Label: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/sns/model/AddPermissionRequest;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/sns/model/AddPermissionRequest;->getAWSAccountIds()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AWSAccountIds: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/sns/model/AddPermissionRequest;->getAWSAccountIds()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/sns/model/AddPermissionRequest;->getActionNames()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ActionNames: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/sns/model/AddPermissionRequest;->getActionNames()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    :cond_3
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withAWSAccountIds(Ljava/util/Collection;)Lcom/amazonaws/services/sns/model/AddPermissionRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/sns/model/AddPermissionRequest;"
        }
    .end annotation

    .prologue
    .line 254
    .local p1, "aWSAccountIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 255
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/sns/model/AddPermissionRequest;->aWSAccountIds:Ljava/util/List;

    .line 262
    :goto_0
    return-object p0

    .line 257
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 258
    .local v0, "aWSAccountIdsCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 259
    iput-object v0, p0, Lcom/amazonaws/services/sns/model/AddPermissionRequest;->aWSAccountIds:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withAWSAccountIds([Ljava/lang/String;)Lcom/amazonaws/services/sns/model/AddPermissionRequest;
    .locals 6
    .param p1, "aWSAccountIds"    # [Ljava/lang/String;

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/amazonaws/services/sns/model/AddPermissionRequest;->getAWSAccountIds()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/sns/model/AddPermissionRequest;->setAWSAccountIds(Ljava/util/Collection;)V

    .line 227
    :cond_0
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 228
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/amazonaws/services/sns/model/AddPermissionRequest;->getAWSAccountIds()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 230
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    return-object p0
.end method

.method public withActionNames(Ljava/util/Collection;)Lcom/amazonaws/services/sns/model/AddPermissionRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/sns/model/AddPermissionRequest;"
        }
    .end annotation

    .prologue
    .line 331
    .local p1, "actionNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 332
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/sns/model/AddPermissionRequest;->actionNames:Ljava/util/List;

    .line 339
    :goto_0
    return-object p0

    .line 334
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 335
    .local v0, "actionNamesCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 336
    iput-object v0, p0, Lcom/amazonaws/services/sns/model/AddPermissionRequest;->actionNames:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withActionNames([Ljava/lang/String;)Lcom/amazonaws/services/sns/model/AddPermissionRequest;
    .locals 6
    .param p1, "actionNames"    # [Ljava/lang/String;

    .prologue
    .line 311
    invoke-virtual {p0}, Lcom/amazonaws/services/sns/model/AddPermissionRequest;->getActionNames()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/sns/model/AddPermissionRequest;->setActionNames(Ljava/util/Collection;)V

    .line 312
    :cond_0
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 313
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/amazonaws/services/sns/model/AddPermissionRequest;->getActionNames()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 315
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    return-object p0
.end method

.method public withLabel(Ljava/lang/String;)Lcom/amazonaws/services/sns/model/AddPermissionRequest;
    .locals 0
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/amazonaws/services/sns/model/AddPermissionRequest;->label:Ljava/lang/String;

    .line 152
    return-object p0
.end method

.method public withTopicArn(Ljava/lang/String;)Lcom/amazonaws/services/sns/model/AddPermissionRequest;
    .locals 0
    .param p1, "topicArn"    # Ljava/lang/String;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/amazonaws/services/sns/model/AddPermissionRequest;->topicArn:Ljava/lang/String;

    .line 118
    return-object p0
.end method
