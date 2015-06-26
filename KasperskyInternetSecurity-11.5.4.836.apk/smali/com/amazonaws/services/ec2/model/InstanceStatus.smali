.class public Lcom/amazonaws/services/ec2/model/InstanceStatus;
.super Ljava/lang/Object;
.source "InstanceStatus.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private availabilityZone:Ljava/lang/String;

.field private events:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/ec2/model/InstanceStatusEvent;",
            ">;"
        }
    .end annotation
.end field

.field private instanceId:Ljava/lang/String;

.field private instanceState:Lcom/amazonaws/services/ec2/model/InstanceState;

.field private instanceStatus:Lcom/amazonaws/services/ec2/model/InstanceStatusSummary;

.field private systemStatus:Lcom/amazonaws/services/ec2/model/InstanceStatusSummary;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
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

    .line 326
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 344
    :cond_0
    :goto_0
    return v3

    .line 327
    :cond_1
    if-eqz p1, :cond_0

    .line 329
    instance-of v1, p1, Lcom/amazonaws/services/ec2/model/InstanceStatus;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 330
    check-cast v0, Lcom/amazonaws/services/ec2/model/InstanceStatus;

    .line 332
    .local v0, "other":Lcom/amazonaws/services/ec2/model/InstanceStatus;
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceStatus;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceStatus;->getInstanceId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_9

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 333
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceStatus;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceStatus;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceStatus;->getInstanceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 334
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceStatus;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_a

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceStatus;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_b

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 335
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceStatus;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceStatus;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceStatus;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 336
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceStatus;->getEvents()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_c

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceStatus;->getEvents()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_d

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 337
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceStatus;->getEvents()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceStatus;->getEvents()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceStatus;->getEvents()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 338
    :cond_4
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceStatus;->getInstanceState()Lcom/amazonaws/services/ec2/model/InstanceState;

    move-result-object v1

    if-nez v1, :cond_e

    move v1, v2

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceStatus;->getInstanceState()Lcom/amazonaws/services/ec2/model/InstanceState;

    move-result-object v4

    if-nez v4, :cond_f

    move v4, v2

    :goto_8
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 339
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceStatus;->getInstanceState()Lcom/amazonaws/services/ec2/model/InstanceState;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceStatus;->getInstanceState()Lcom/amazonaws/services/ec2/model/InstanceState;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceStatus;->getInstanceState()Lcom/amazonaws/services/ec2/model/InstanceState;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/amazonaws/services/ec2/model/InstanceState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 340
    :cond_5
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceStatus;->getSystemStatus()Lcom/amazonaws/services/ec2/model/InstanceStatusSummary;

    move-result-object v1

    if-nez v1, :cond_10

    move v1, v2

    :goto_9
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceStatus;->getSystemStatus()Lcom/amazonaws/services/ec2/model/InstanceStatusSummary;

    move-result-object v4

    if-nez v4, :cond_11

    move v4, v2

    :goto_a
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 341
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceStatus;->getSystemStatus()Lcom/amazonaws/services/ec2/model/InstanceStatusSummary;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceStatus;->getSystemStatus()Lcom/amazonaws/services/ec2/model/InstanceStatusSummary;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceStatus;->getSystemStatus()Lcom/amazonaws/services/ec2/model/InstanceStatusSummary;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/amazonaws/services/ec2/model/InstanceStatusSummary;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 342
    :cond_6
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceStatus;->getInstanceStatus()Lcom/amazonaws/services/ec2/model/InstanceStatusSummary;

    move-result-object v1

    if-nez v1, :cond_12

    move v1, v2

    :goto_b
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceStatus;->getInstanceStatus()Lcom/amazonaws/services/ec2/model/InstanceStatusSummary;

    move-result-object v4

    if-nez v4, :cond_13

    move v4, v2

    :goto_c
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 343
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceStatus;->getInstanceStatus()Lcom/amazonaws/services/ec2/model/InstanceStatusSummary;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceStatus;->getInstanceStatus()Lcom/amazonaws/services/ec2/model/InstanceStatusSummary;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceStatus;->getInstanceStatus()Lcom/amazonaws/services/ec2/model/InstanceStatusSummary;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/amazonaws/services/ec2/model/InstanceStatusSummary;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_7
    move v3, v2

    .line 344
    goto/16 :goto_0

    :cond_8
    move v1, v3

    .line 332
    goto/16 :goto_1

    :cond_9
    move v4, v3

    goto/16 :goto_2

    :cond_a
    move v1, v3

    .line 334
    goto/16 :goto_3

    :cond_b
    move v4, v3

    goto/16 :goto_4

    :cond_c
    move v1, v3

    .line 336
    goto/16 :goto_5

    :cond_d
    move v4, v3

    goto/16 :goto_6

    :cond_e
    move v1, v3

    .line 338
    goto :goto_7

    :cond_f
    move v4, v3

    goto :goto_8

    :cond_10
    move v1, v3

    .line 340
    goto :goto_9

    :cond_11
    move v4, v3

    goto :goto_a

    :cond_12
    move v1, v3

    .line 342
    goto :goto_b

    :cond_13
    move v4, v3

    goto :goto_c
.end method

.method public getAvailabilityZone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/InstanceStatus;->availabilityZone:Ljava/lang/String;

    return-object v0
.end method

.method public getEvents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/ec2/model/InstanceStatusEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/InstanceStatus;->events:Ljava/util/List;

    if-nez v0, :cond_0

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/InstanceStatus;->events:Ljava/util/List;

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/InstanceStatus;->events:Ljava/util/List;

    return-object v0
.end method

.method public getInstanceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/InstanceStatus;->instanceId:Ljava/lang/String;

    return-object v0
.end method

.method public getInstanceState()Lcom/amazonaws/services/ec2/model/InstanceState;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/InstanceStatus;->instanceState:Lcom/amazonaws/services/ec2/model/InstanceState;

    return-object v0
.end method

.method public getInstanceStatus()Lcom/amazonaws/services/ec2/model/InstanceStatusSummary;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/InstanceStatus;->instanceStatus:Lcom/amazonaws/services/ec2/model/InstanceStatusSummary;

    return-object v0
.end method

.method public getSystemStatus()Lcom/amazonaws/services/ec2/model/InstanceStatusSummary;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/InstanceStatus;->systemStatus:Lcom/amazonaws/services/ec2/model/InstanceStatusSummary;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 312
    const/16 v1, 0x1f

    .line 313
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 315
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceStatus;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 316
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceStatus;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 317
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceStatus;->getEvents()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v0, v4, v2

    .line 318
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceStatus;->getInstanceState()Lcom/amazonaws/services/ec2/model/InstanceState;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v3

    :goto_3
    add-int v0, v4, v2

    .line 319
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceStatus;->getSystemStatus()Lcom/amazonaws/services/ec2/model/InstanceStatusSummary;

    move-result-object v2

    if-nez v2, :cond_4

    move v2, v3

    :goto_4
    add-int v0, v4, v2

    .line 320
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceStatus;->getInstanceStatus()Lcom/amazonaws/services/ec2/model/InstanceStatusSummary;

    move-result-object v4

    if-nez v4, :cond_5

    :goto_5
    add-int v0, v2, v3

    .line 321
    return v0

    .line 315
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceStatus;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 316
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceStatus;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 317
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceStatus;->getEvents()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    .line 318
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceStatus;->getInstanceState()Lcom/amazonaws/services/ec2/model/InstanceState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/services/ec2/model/InstanceState;->hashCode()I

    move-result v2

    goto :goto_3

    .line 319
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceStatus;->getSystemStatus()Lcom/amazonaws/services/ec2/model/InstanceStatusSummary;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/services/ec2/model/InstanceStatusSummary;->hashCode()I

    move-result v2

    goto :goto_4

    .line 320
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceStatus;->getInstanceStatus()Lcom/amazonaws/services/ec2/model/InstanceStatusSummary;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazonaws/services/ec2/model/InstanceStatusSummary;->hashCode()I

    move-result v3

    goto :goto_5
.end method

.method public setAvailabilityZone(Ljava/lang/String;)V
    .locals 0
    .param p1, "availabilityZone"    # Ljava/lang/String;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstanceStatus;->availabilityZone:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setEvents(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/InstanceStatusEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 136
    .local p1, "events":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/InstanceStatusEvent;>;"
    if-nez p1, :cond_0

    .line 137
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/InstanceStatus;->events:Ljava/util/List;

    .line 144
    :goto_0
    return-void

    .line 141
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 142
    .local v0, "eventsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/InstanceStatusEvent;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 143
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/InstanceStatus;->events:Ljava/util/List;

    goto :goto_0
.end method

.method public setInstanceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstanceStatus;->instanceId:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setInstanceState(Lcom/amazonaws/services/ec2/model/InstanceState;)V
    .locals 0
    .param p1, "instanceState"    # Lcom/amazonaws/services/ec2/model/InstanceState;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstanceStatus;->instanceState:Lcom/amazonaws/services/ec2/model/InstanceState;

    .line 202
    return-void
.end method

.method public setInstanceStatus(Lcom/amazonaws/services/ec2/model/InstanceStatusSummary;)V
    .locals 0
    .param p1, "instanceStatus"    # Lcom/amazonaws/services/ec2/model/InstanceStatusSummary;

    .prologue
    .line 269
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstanceStatus;->instanceStatus:Lcom/amazonaws/services/ec2/model/InstanceStatusSummary;

    .line 270
    return-void
.end method

.method public setSystemStatus(Lcom/amazonaws/services/ec2/model/InstanceStatusSummary;)V
    .locals 0
    .param p1, "systemStatus"    # Lcom/amazonaws/services/ec2/model/InstanceStatusSummary;

    .prologue
    .line 235
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstanceStatus;->systemStatus:Lcom/amazonaws/services/ec2/model/InstanceStatusSummary;

    .line 236
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 299
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceStatus;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InstanceId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceStatus;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceStatus;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AvailabilityZone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceStatus;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceStatus;->getEvents()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Events: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceStatus;->getEvents()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceStatus;->getInstanceState()Lcom/amazonaws/services/ec2/model/InstanceState;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InstanceState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceStatus;->getInstanceState()Lcom/amazonaws/services/ec2/model/InstanceState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceStatus;->getSystemStatus()Lcom/amazonaws/services/ec2/model/InstanceStatusSummary;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SystemStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceStatus;->getSystemStatus()Lcom/amazonaws/services/ec2/model/InstanceStatusSummary;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceStatus;->getInstanceStatus()Lcom/amazonaws/services/ec2/model/InstanceStatusSummary;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InstanceStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceStatus;->getInstanceStatus()Lcom/amazonaws/services/ec2/model/InstanceStatusSummary;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    :cond_5
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withAvailabilityZone(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/InstanceStatus;
    .locals 0
    .param p1, "availabilityZone"    # Ljava/lang/String;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstanceStatus;->availabilityZone:Ljava/lang/String;

    .line 113
    return-object p0
.end method

.method public withEvents(Ljava/util/Collection;)Lcom/amazonaws/services/ec2/model/InstanceStatus;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/InstanceStatusEvent;",
            ">;)",
            "Lcom/amazonaws/services/ec2/model/InstanceStatus;"
        }
    .end annotation

    .prologue
    .line 175
    .local p1, "events":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/InstanceStatusEvent;>;"
    if-nez p1, :cond_0

    .line 176
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/InstanceStatus;->events:Ljava/util/List;

    .line 183
    :goto_0
    return-object p0

    .line 178
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 179
    .local v0, "eventsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/InstanceStatusEvent;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 180
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/InstanceStatus;->events:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withEvents([Lcom/amazonaws/services/ec2/model/InstanceStatusEvent;)Lcom/amazonaws/services/ec2/model/InstanceStatus;
    .locals 6
    .param p1, "events"    # [Lcom/amazonaws/services/ec2/model/InstanceStatusEvent;

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceStatus;->getEvents()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/ec2/model/InstanceStatus;->setEvents(Ljava/util/Collection;)V

    .line 158
    :cond_0
    move-object v0, p1

    .local v0, "arr$":[Lcom/amazonaws/services/ec2/model/InstanceStatusEvent;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 159
    .local v3, "value":Lcom/amazonaws/services/ec2/model/InstanceStatusEvent;
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceStatus;->getEvents()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 161
    .end local v3    # "value":Lcom/amazonaws/services/ec2/model/InstanceStatusEvent;
    :cond_1
    return-object p0
.end method

.method public withInstanceId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/InstanceStatus;
    .locals 0
    .param p1, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstanceStatus;->instanceId:Ljava/lang/String;

    .line 79
    return-object p0
.end method

.method public withInstanceState(Lcom/amazonaws/services/ec2/model/InstanceState;)Lcom/amazonaws/services/ec2/model/InstanceStatus;
    .locals 0
    .param p1, "instanceState"    # Lcom/amazonaws/services/ec2/model/InstanceState;

    .prologue
    .line 215
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstanceStatus;->instanceState:Lcom/amazonaws/services/ec2/model/InstanceState;

    .line 216
    return-object p0
.end method

.method public withInstanceStatus(Lcom/amazonaws/services/ec2/model/InstanceStatusSummary;)Lcom/amazonaws/services/ec2/model/InstanceStatus;
    .locals 0
    .param p1, "instanceStatus"    # Lcom/amazonaws/services/ec2/model/InstanceStatusSummary;

    .prologue
    .line 283
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstanceStatus;->instanceStatus:Lcom/amazonaws/services/ec2/model/InstanceStatusSummary;

    .line 284
    return-object p0
.end method

.method public withSystemStatus(Lcom/amazonaws/services/ec2/model/InstanceStatusSummary;)Lcom/amazonaws/services/ec2/model/InstanceStatus;
    .locals 0
    .param p1, "systemStatus"    # Lcom/amazonaws/services/ec2/model/InstanceStatusSummary;

    .prologue
    .line 249
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstanceStatus;->systemStatus:Lcom/amazonaws/services/ec2/model/InstanceStatusSummary;

    .line 250
    return-object p0
.end method
