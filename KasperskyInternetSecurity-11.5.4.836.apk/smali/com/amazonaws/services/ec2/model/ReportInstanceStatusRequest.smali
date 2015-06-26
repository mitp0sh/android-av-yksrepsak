.class public Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "ReportInstanceStatusRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private description:Ljava/lang/String;

.field private endTime:Ljava/util/Date;

.field private instances:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private reasonCodes:Ljava/util/List;
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

.field private status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
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

    .line 351
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 369
    :cond_0
    :goto_0
    return v3

    .line 352
    :cond_1
    if-eqz p1, :cond_0

    .line 354
    instance-of v1, p1, Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 355
    check-cast v0, Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;

    .line 357
    .local v0, "other":Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;->getInstances()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_8

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;->getInstances()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_9

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 358
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;->getInstances()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;->getInstances()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;->getInstances()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 359
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;->getStatus()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_a

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;->getStatus()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_b

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 360
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;->getStatus()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;->getStatus()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 361
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;->getStartTime()Ljava/util/Date;

    move-result-object v1

    if-nez v1, :cond_c

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;->getStartTime()Ljava/util/Date;

    move-result-object v4

    if-nez v4, :cond_d

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 362
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;->getStartTime()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;->getStartTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;->getStartTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 363
    :cond_4
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;->getEndTime()Ljava/util/Date;

    move-result-object v1

    if-nez v1, :cond_e

    move v1, v2

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;->getEndTime()Ljava/util/Date;

    move-result-object v4

    if-nez v4, :cond_f

    move v4, v2

    :goto_8
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 364
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;->getEndTime()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;->getEndTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;->getEndTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 365
    :cond_5
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;->getReasonCodes()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_10

    move v1, v2

    :goto_9
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;->getReasonCodes()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_11

    move v4, v2

    :goto_a
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 366
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;->getReasonCodes()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;->getReasonCodes()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;->getReasonCodes()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 367
    :cond_6
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_12

    move v1, v2

    :goto_b
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;->getDescription()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_13

    move v4, v2

    :goto_c
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 368
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_7
    move v3, v2

    .line 369
    goto/16 :goto_0

    :cond_8
    move v1, v3

    .line 357
    goto/16 :goto_1

    :cond_9
    move v4, v3

    goto/16 :goto_2

    :cond_a
    move v1, v3

    .line 359
    goto/16 :goto_3

    :cond_b
    move v4, v3

    goto/16 :goto_4

    :cond_c
    move v1, v3

    .line 361
    goto/16 :goto_5

    :cond_d
    move v4, v3

    goto/16 :goto_6

    :cond_e
    move v1, v3

    .line 363
    goto :goto_7

    :cond_f
    move v4, v3

    goto :goto_8

    :cond_10
    move v1, v3

    .line 365
    goto :goto_9

    :cond_11
    move v4, v3

    goto :goto_a

    :cond_12
    move v1, v3

    .line 367
    goto :goto_b

    :cond_13
    move v4, v3

    goto :goto_c
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getEndTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;->endTime:Ljava/util/Date;

    return-object v0
.end method

.method public getInstances()Ljava/util/List;
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
    .line 46
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;->instances:Ljava/util/List;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;->instances:Ljava/util/List;

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;->instances:Ljava/util/List;

    return-object v0
.end method

.method public getReasonCodes()Ljava/util/List;
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
    .line 217
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;->reasonCodes:Ljava/util/List;

    if-nez v0, :cond_0

    .line 218
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;->reasonCodes:Ljava/util/List;

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;->reasonCodes:Ljava/util/List;

    return-object v0
.end method

.method public getStartTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;->startTime:Ljava/util/Date;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;->status:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 337
    const/16 v1, 0x1f

    .line 338
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 340
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;->getInstances()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 341
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;->getStatus()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 342
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;->getStartTime()Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v0, v4, v2

    .line 343
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;->getEndTime()Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v3

    :goto_3
    add-int v0, v4, v2

    .line 344
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;->getReasonCodes()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_4

    move v2, v3

    :goto_4
    add-int v0, v4, v2

    .line 345
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;->getDescription()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_5

    :goto_5
    add-int v0, v2, v3

    .line 346
    return v0

    .line 340
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;->getInstances()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_0

    .line 341
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;->getStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 342
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;->getStartTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->hashCode()I

    move-result v2

    goto :goto_2

    .line 343
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;->getEndTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->hashCode()I

    move-result v2

    goto :goto_3

    .line 344
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;->getReasonCodes()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    .line 345
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_5
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 294
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;->description:Ljava/lang/String;

    .line 295
    return-void
.end method

.method public setEndTime(Ljava/util/Date;)V
    .locals 0
    .param p1, "endTime"    # Ljava/util/Date;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;->endTime:Ljava/util/Date;

    .line 192
    return-void
.end method

.method public setInstances(Ljava/util/Collection;)V
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
    .line 58
    .local p1, "instances":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 59
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;->instances:Ljava/util/List;

    .line 66
    :goto_0
    return-void

    .line 63
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 64
    .local v0, "instancesCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 65
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;->instances:Ljava/util/List;

    goto :goto_0
.end method

.method public setReasonCodes(Ljava/util/Collection;)V
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
    .line 229
    .local p1, "reasonCodes":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 230
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;->reasonCodes:Ljava/util/List;

    .line 237
    :goto_0
    return-void

    .line 234
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 235
    .local v0, "reasonCodesCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 236
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;->reasonCodes:Ljava/util/List;

    goto :goto_0
.end method

.method public setStartTime(Ljava/util/Date;)V
    .locals 0
    .param p1, "startTime"    # Ljava/util/Date;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;->startTime:Ljava/util/Date;

    .line 158
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;->status:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 324
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;->getInstances()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Instances: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;->getInstances()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;->getStatus()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;->getStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;->getStartTime()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StartTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;->getStartTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;->getEndTime()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EndTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;->getEndTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;->getReasonCodes()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ReasonCodes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;->getReasonCodes()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Description: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    :cond_5
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withDescription(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 308
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;->description:Ljava/lang/String;

    .line 309
    return-object p0
.end method

.method public withEndTime(Ljava/util/Date;)Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;
    .locals 0
    .param p1, "endTime"    # Ljava/util/Date;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;->endTime:Ljava/util/Date;

    .line 206
    return-object p0
.end method

.method public withInstances(Ljava/util/Collection;)Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;"
        }
    .end annotation

    .prologue
    .line 97
    .local p1, "instances":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 98
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;->instances:Ljava/util/List;

    .line 105
    :goto_0
    return-object p0

    .line 100
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 101
    .local v0, "instancesCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 102
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;->instances:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withInstances([Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;
    .locals 6
    .param p1, "instances"    # [Ljava/lang/String;

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;->getInstances()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;->setInstances(Ljava/util/Collection;)V

    .line 80
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

    .line 81
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;->getInstances()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 83
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    return-object p0
.end method

.method public withReasonCodes(Ljava/util/Collection;)Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;"
        }
    .end annotation

    .prologue
    .line 268
    .local p1, "reasonCodes":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 269
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;->reasonCodes:Ljava/util/List;

    .line 276
    :goto_0
    return-object p0

    .line 271
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 272
    .local v0, "reasonCodesCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 273
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;->reasonCodes:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withReasonCodes([Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;
    .locals 6
    .param p1, "reasonCodes"    # [Ljava/lang/String;

    .prologue
    .line 250
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;->getReasonCodes()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;->setReasonCodes(Ljava/util/Collection;)V

    .line 251
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

    .line 252
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;->getReasonCodes()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 254
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    return-object p0
.end method

.method public withStartTime(Ljava/util/Date;)Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;
    .locals 0
    .param p1, "startTime"    # Ljava/util/Date;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;->startTime:Ljava/util/Date;

    .line 172
    return-object p0
.end method

.method public withStatus(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;->status:Ljava/lang/String;

    .line 138
    return-object p0
.end method
