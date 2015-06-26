.class public Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "DescribeScheduledActionsRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private autoScalingGroupName:Ljava/lang/String;

.field private endTime:Ljava/util/Date;

.field private maxRecords:Ljava/lang/Integer;

.field private nextToken:Ljava/lang/String;

.field private scheduledActionNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private startTime:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 427
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 445
    :cond_0
    :goto_0
    return v3

    .line 428
    :cond_1
    if-eqz p1, :cond_0

    .line 430
    instance-of v1, p1, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 431
    check-cast v0, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;

    .line 433
    .local v0, "other":Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_9

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 434
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 435
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;->getScheduledActionNames()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_a

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;->getScheduledActionNames()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_b

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 436
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;->getScheduledActionNames()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;->getScheduledActionNames()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;->getScheduledActionNames()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 437
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;->getStartTime()Ljava/util/Date;

    move-result-object v1

    if-nez v1, :cond_c

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;->getStartTime()Ljava/util/Date;

    move-result-object v4

    if-nez v4, :cond_d

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 438
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;->getStartTime()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;->getStartTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;->getStartTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 439
    :cond_4
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;->getEndTime()Ljava/util/Date;

    move-result-object v1

    if-nez v1, :cond_e

    move v1, v2

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;->getEndTime()Ljava/util/Date;

    move-result-object v4

    if-nez v4, :cond_f

    move v4, v2

    :goto_8
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 440
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;->getEndTime()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;->getEndTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;->getEndTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 441
    :cond_5
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;->getNextToken()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_10

    move v1, v2

    :goto_9
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;->getNextToken()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_11

    move v4, v2

    :goto_a
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 442
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;->getNextToken()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;->getNextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;->getNextToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 443
    :cond_6
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;->getMaxRecords()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_12

    move v1, v2

    :goto_b
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;->getMaxRecords()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_13

    move v4, v2

    :goto_c
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 444
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;->getMaxRecords()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;->getMaxRecords()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;->getMaxRecords()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_7
    move v3, v2

    .line 445
    goto/16 :goto_0

    :cond_8
    move v1, v3

    .line 433
    goto/16 :goto_1

    :cond_9
    move v4, v3

    goto/16 :goto_2

    :cond_a
    move v1, v3

    .line 435
    goto/16 :goto_3

    :cond_b
    move v4, v3

    goto/16 :goto_4

    :cond_c
    move v1, v3

    .line 437
    goto/16 :goto_5

    :cond_d
    move v4, v3

    goto/16 :goto_6

    :cond_e
    move v1, v3

    .line 439
    goto :goto_7

    :cond_f
    move v4, v3

    goto :goto_8

    :cond_10
    move v1, v3

    .line 441
    goto :goto_9

    :cond_11
    move v4, v3

    goto :goto_a

    :cond_12
    move v1, v3

    .line 443
    goto :goto_b

    :cond_13
    move v4, v3

    goto :goto_c
.end method

.method public getAutoScalingGroupName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;->autoScalingGroupName:Ljava/lang/String;

    return-object v0
.end method

.method public getEndTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;->endTime:Ljava/util/Date;

    return-object v0
.end method

.method public getMaxRecords()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;->maxRecords:Ljava/lang/Integer;

    return-object v0
.end method

.method public getNextToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;->nextToken:Ljava/lang/String;

    return-object v0
.end method

.method public getScheduledActionNames()Ljava/util/List;
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
    .line 137
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;->scheduledActionNames:Ljava/util/List;

    if-nez v0, :cond_0

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;->scheduledActionNames:Ljava/util/List;

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;->scheduledActionNames:Ljava/util/List;

    return-object v0
.end method

.method public getStartTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;->startTime:Ljava/util/Date;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 413
    const/16 v1, 0x1f

    .line 414
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 416
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 417
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;->getScheduledActionNames()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 418
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;->getStartTime()Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v0, v4, v2

    .line 419
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;->getEndTime()Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v3

    :goto_3
    add-int v0, v4, v2

    .line 420
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;->getNextToken()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    move v2, v3

    :goto_4
    add-int v0, v4, v2

    .line 421
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;->getMaxRecords()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_5

    :goto_5
    add-int v0, v2, v3

    .line 422
    return v0

    .line 416
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 417
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;->getScheduledActionNames()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    .line 418
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;->getStartTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->hashCode()I

    move-result v2

    goto :goto_2

    .line 419
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;->getEndTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->hashCode()I

    move-result v2

    goto :goto_3

    .line 420
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;->getNextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_4

    .line 421
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;->getMaxRecords()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->hashCode()I

    move-result v3

    goto :goto_5
.end method

.method public setAutoScalingGroupName(Ljava/lang/String;)V
    .locals 0
    .param p1, "autoScalingGroupName"    # Ljava/lang/String;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;->autoScalingGroupName:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setEndTime(Ljava/util/Date;)V
    .locals 0
    .param p1, "endTime"    # Ljava/util/Date;

    .prologue
    .line 282
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;->endTime:Ljava/util/Date;

    .line 283
    return-void
.end method

.method public setMaxRecords(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "maxRecords"    # Ljava/lang/Integer;

    .prologue
    .line 367
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;->maxRecords:Ljava/lang/Integer;

    .line 368
    return-void
.end method

.method public setNextToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "nextToken"    # Ljava/lang/String;

    .prologue
    .line 324
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;->nextToken:Ljava/lang/String;

    .line 325
    return-void
.end method

.method public setScheduledActionNames(Ljava/util/Collection;)V
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
    .line 157
    .local p1, "scheduledActionNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 158
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;->scheduledActionNames:Ljava/util/List;

    .line 165
    :goto_0
    return-void

    .line 162
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 163
    .local v0, "scheduledActionNamesCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 164
    iput-object v0, p0, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;->scheduledActionNames:Ljava/util/List;

    goto :goto_0
.end method

.method public setStartTime(Ljava/util/Date;)V
    .locals 0
    .param p1, "startTime"    # Ljava/util/Date;

    .prologue
    .line 242
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;->startTime:Ljava/util/Date;

    .line 243
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 400
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AutoScalingGroupName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;->getScheduledActionNames()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ScheduledActionNames: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;->getScheduledActionNames()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;->getStartTime()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StartTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;->getStartTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;->getEndTime()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EndTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;->getEndTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;->getNextToken()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NextToken: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;->getNextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;->getMaxRecords()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MaxRecords: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;->getMaxRecords()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    :cond_5
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withAutoScalingGroupName(Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;
    .locals 0
    .param p1, "autoScalingGroupName"    # Ljava/lang/String;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;->autoScalingGroupName:Ljava/lang/String;

    .line 118
    return-object p0
.end method

.method public withEndTime(Ljava/util/Date;)Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;
    .locals 0
    .param p1, "endTime"    # Ljava/util/Date;

    .prologue
    .line 298
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;->endTime:Ljava/util/Date;

    .line 299
    return-object p0
.end method

.method public withMaxRecords(Ljava/lang/Integer;)Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;
    .locals 0
    .param p1, "maxRecords"    # Ljava/lang/Integer;

    .prologue
    .line 384
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;->maxRecords:Ljava/lang/Integer;

    .line 385
    return-object p0
.end method

.method public withNextToken(Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;
    .locals 0
    .param p1, "nextToken"    # Ljava/lang/String;

    .prologue
    .line 341
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;->nextToken:Ljava/lang/String;

    .line 342
    return-object p0
.end method

.method public withScheduledActionNames(Ljava/util/Collection;)Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;"
        }
    .end annotation

    .prologue
    .line 212
    .local p1, "scheduledActionNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 213
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;->scheduledActionNames:Ljava/util/List;

    .line 220
    :goto_0
    return-object p0

    .line 215
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 216
    .local v0, "scheduledActionNamesCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 217
    iput-object v0, p0, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;->scheduledActionNames:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withScheduledActionNames([Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;
    .locals 6
    .param p1, "scheduledActionNames"    # [Ljava/lang/String;

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;->getScheduledActionNames()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;->setScheduledActionNames(Ljava/util/Collection;)V

    .line 187
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

    .line 188
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;->getScheduledActionNames()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 190
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    return-object p0
.end method

.method public withStartTime(Ljava/util/Date;)Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;
    .locals 0
    .param p1, "startTime"    # Ljava/util/Date;

    .prologue
    .line 258
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;->startTime:Ljava/util/Date;

    .line 259
    return-object p0
.end method
