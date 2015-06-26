.class public Lcom/amazonaws/services/ec2/model/VolumeStatusItem;
.super Ljava/lang/Object;
.source "VolumeStatusItem.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private actions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/ec2/model/VolumeStatusAction;",
            ">;"
        }
    .end annotation
.end field

.field private availabilityZone:Ljava/lang/String;

.field private events:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/ec2/model/VolumeStatusEvent;",
            ">;"
        }
    .end annotation
.end field

.field private volumeId:Ljava/lang/String;

.field private volumeStatus:Lcom/amazonaws/services/ec2/model/VolumeStatusInfo;


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

    .line 309
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 325
    :cond_0
    :goto_0
    return v3

    .line 310
    :cond_1
    if-eqz p1, :cond_0

    .line 312
    instance-of v1, p1, Lcom/amazonaws/services/ec2/model/VolumeStatusItem;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 313
    check-cast v0, Lcom/amazonaws/services/ec2/model/VolumeStatusItem;

    .line 315
    .local v0, "other":Lcom/amazonaws/services/ec2/model/VolumeStatusItem;
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/VolumeStatusItem;->getVolumeId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/VolumeStatusItem;->getVolumeId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_8

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 316
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/VolumeStatusItem;->getVolumeId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/VolumeStatusItem;->getVolumeId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/VolumeStatusItem;->getVolumeId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 317
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/VolumeStatusItem;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_9

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/VolumeStatusItem;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_a

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 318
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/VolumeStatusItem;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/VolumeStatusItem;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/VolumeStatusItem;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 319
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/VolumeStatusItem;->getVolumeStatus()Lcom/amazonaws/services/ec2/model/VolumeStatusInfo;

    move-result-object v1

    if-nez v1, :cond_b

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/VolumeStatusItem;->getVolumeStatus()Lcom/amazonaws/services/ec2/model/VolumeStatusInfo;

    move-result-object v4

    if-nez v4, :cond_c

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 320
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/VolumeStatusItem;->getVolumeStatus()Lcom/amazonaws/services/ec2/model/VolumeStatusInfo;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/VolumeStatusItem;->getVolumeStatus()Lcom/amazonaws/services/ec2/model/VolumeStatusInfo;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/VolumeStatusItem;->getVolumeStatus()Lcom/amazonaws/services/ec2/model/VolumeStatusInfo;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/amazonaws/services/ec2/model/VolumeStatusInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 321
    :cond_4
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/VolumeStatusItem;->getEvents()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_d

    move v1, v2

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/VolumeStatusItem;->getEvents()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_e

    move v4, v2

    :goto_8
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 322
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/VolumeStatusItem;->getEvents()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/VolumeStatusItem;->getEvents()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/VolumeStatusItem;->getEvents()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 323
    :cond_5
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/VolumeStatusItem;->getActions()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_f

    move v1, v2

    :goto_9
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/VolumeStatusItem;->getActions()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_10

    move v4, v2

    :goto_a
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 324
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/VolumeStatusItem;->getActions()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/VolumeStatusItem;->getActions()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/VolumeStatusItem;->getActions()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_6
    move v3, v2

    .line 325
    goto/16 :goto_0

    :cond_7
    move v1, v3

    .line 315
    goto/16 :goto_1

    :cond_8
    move v4, v3

    goto/16 :goto_2

    :cond_9
    move v1, v3

    .line 317
    goto/16 :goto_3

    :cond_a
    move v4, v3

    goto/16 :goto_4

    :cond_b
    move v1, v3

    .line 319
    goto :goto_5

    :cond_c
    move v4, v3

    goto :goto_6

    :cond_d
    move v1, v3

    .line 321
    goto :goto_7

    :cond_e
    move v4, v3

    goto :goto_8

    :cond_f
    move v1, v3

    .line 323
    goto :goto_9

    :cond_10
    move v4, v3

    goto :goto_a
.end method

.method public getActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/ec2/model/VolumeStatusAction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 211
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/VolumeStatusItem;->actions:Ljava/util/List;

    if-nez v0, :cond_0

    .line 212
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/VolumeStatusItem;->actions:Ljava/util/List;

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/VolumeStatusItem;->actions:Ljava/util/List;

    return-object v0
.end method

.method public getAvailabilityZone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/VolumeStatusItem;->availabilityZone:Ljava/lang/String;

    return-object v0
.end method

.method public getEvents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/ec2/model/VolumeStatusEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/VolumeStatusItem;->events:Ljava/util/List;

    if-nez v0, :cond_0

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/VolumeStatusItem;->events:Ljava/util/List;

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/VolumeStatusItem;->events:Ljava/util/List;

    return-object v0
.end method

.method public getVolumeId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/VolumeStatusItem;->volumeId:Ljava/lang/String;

    return-object v0
.end method

.method public getVolumeStatus()Lcom/amazonaws/services/ec2/model/VolumeStatusInfo;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/VolumeStatusItem;->volumeStatus:Lcom/amazonaws/services/ec2/model/VolumeStatusInfo;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 296
    const/16 v1, 0x1f

    .line 297
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 299
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/VolumeStatusItem;->getVolumeId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 300
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/VolumeStatusItem;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 301
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/VolumeStatusItem;->getVolumeStatus()Lcom/amazonaws/services/ec2/model/VolumeStatusInfo;

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v0, v4, v2

    .line 302
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/VolumeStatusItem;->getEvents()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v3

    :goto_3
    add-int v0, v4, v2

    .line 303
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/VolumeStatusItem;->getActions()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_4

    :goto_4
    add-int v0, v2, v3

    .line 304
    return v0

    .line 299
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/VolumeStatusItem;->getVolumeId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 300
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/VolumeStatusItem;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 301
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/VolumeStatusItem;->getVolumeStatus()Lcom/amazonaws/services/ec2/model/VolumeStatusInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/services/ec2/model/VolumeStatusInfo;->hashCode()I

    move-result v2

    goto :goto_2

    .line 302
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/VolumeStatusItem;->getEvents()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    .line 303
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/VolumeStatusItem;->getActions()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_4
.end method

.method public setActions(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/VolumeStatusAction;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 223
    .local p1, "actions":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/VolumeStatusAction;>;"
    if-nez p1, :cond_0

    .line 224
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/VolumeStatusItem;->actions:Ljava/util/List;

    .line 231
    :goto_0
    return-void

    .line 228
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 229
    .local v0, "actionsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/VolumeStatusAction;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 230
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/VolumeStatusItem;->actions:Ljava/util/List;

    goto :goto_0
.end method

.method public setAvailabilityZone(Ljava/lang/String;)V
    .locals 0
    .param p1, "availabilityZone"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/VolumeStatusItem;->availabilityZone:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setEvents(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/VolumeStatusEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 154
    .local p1, "events":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/VolumeStatusEvent;>;"
    if-nez p1, :cond_0

    .line 155
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/VolumeStatusItem;->events:Ljava/util/List;

    .line 162
    :goto_0
    return-void

    .line 159
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 160
    .local v0, "eventsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/VolumeStatusEvent;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 161
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/VolumeStatusItem;->events:Ljava/util/List;

    goto :goto_0
.end method

.method public setVolumeId(Ljava/lang/String;)V
    .locals 0
    .param p1, "volumeId"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/VolumeStatusItem;->volumeId:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setVolumeStatus(Lcom/amazonaws/services/ec2/model/VolumeStatusInfo;)V
    .locals 0
    .param p1, "volumeStatus"    # Lcom/amazonaws/services/ec2/model/VolumeStatusInfo;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/VolumeStatusItem;->volumeStatus:Lcom/amazonaws/services/ec2/model/VolumeStatusInfo;

    .line 117
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 284
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/VolumeStatusItem;->getVolumeId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VolumeId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/VolumeStatusItem;->getVolumeId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/VolumeStatusItem;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AvailabilityZone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/VolumeStatusItem;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/VolumeStatusItem;->getVolumeStatus()Lcom/amazonaws/services/ec2/model/VolumeStatusInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VolumeStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/VolumeStatusItem;->getVolumeStatus()Lcom/amazonaws/services/ec2/model/VolumeStatusInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/VolumeStatusItem;->getEvents()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Events: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/VolumeStatusItem;->getEvents()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/VolumeStatusItem;->getActions()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Actions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/VolumeStatusItem;->getActions()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    :cond_4
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withActions(Ljava/util/Collection;)Lcom/amazonaws/services/ec2/model/VolumeStatusItem;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/VolumeStatusAction;",
            ">;)",
            "Lcom/amazonaws/services/ec2/model/VolumeStatusItem;"
        }
    .end annotation

    .prologue
    .line 262
    .local p1, "actions":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/VolumeStatusAction;>;"
    if-nez p1, :cond_0

    .line 263
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/VolumeStatusItem;->actions:Ljava/util/List;

    .line 270
    :goto_0
    return-object p0

    .line 265
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 266
    .local v0, "actionsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/VolumeStatusAction;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 267
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/VolumeStatusItem;->actions:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withActions([Lcom/amazonaws/services/ec2/model/VolumeStatusAction;)Lcom/amazonaws/services/ec2/model/VolumeStatusItem;
    .locals 6
    .param p1, "actions"    # [Lcom/amazonaws/services/ec2/model/VolumeStatusAction;

    .prologue
    .line 244
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/VolumeStatusItem;->getActions()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/ec2/model/VolumeStatusItem;->setActions(Ljava/util/Collection;)V

    .line 245
    :cond_0
    move-object v0, p1

    .local v0, "arr$":[Lcom/amazonaws/services/ec2/model/VolumeStatusAction;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 246
    .local v3, "value":Lcom/amazonaws/services/ec2/model/VolumeStatusAction;
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/VolumeStatusItem;->getActions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 248
    .end local v3    # "value":Lcom/amazonaws/services/ec2/model/VolumeStatusAction;
    :cond_1
    return-object p0
.end method

.method public withAvailabilityZone(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/VolumeStatusItem;
    .locals 0
    .param p1, "availabilityZone"    # Ljava/lang/String;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/VolumeStatusItem;->availabilityZone:Ljava/lang/String;

    .line 97
    return-object p0
.end method

.method public withEvents(Ljava/util/Collection;)Lcom/amazonaws/services/ec2/model/VolumeStatusItem;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/VolumeStatusEvent;",
            ">;)",
            "Lcom/amazonaws/services/ec2/model/VolumeStatusItem;"
        }
    .end annotation

    .prologue
    .line 193
    .local p1, "events":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/VolumeStatusEvent;>;"
    if-nez p1, :cond_0

    .line 194
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/VolumeStatusItem;->events:Ljava/util/List;

    .line 201
    :goto_0
    return-object p0

    .line 196
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 197
    .local v0, "eventsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/VolumeStatusEvent;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 198
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/VolumeStatusItem;->events:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withEvents([Lcom/amazonaws/services/ec2/model/VolumeStatusEvent;)Lcom/amazonaws/services/ec2/model/VolumeStatusItem;
    .locals 6
    .param p1, "events"    # [Lcom/amazonaws/services/ec2/model/VolumeStatusEvent;

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/VolumeStatusItem;->getEvents()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/ec2/model/VolumeStatusItem;->setEvents(Ljava/util/Collection;)V

    .line 176
    :cond_0
    move-object v0, p1

    .local v0, "arr$":[Lcom/amazonaws/services/ec2/model/VolumeStatusEvent;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 177
    .local v3, "value":Lcom/amazonaws/services/ec2/model/VolumeStatusEvent;
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/VolumeStatusItem;->getEvents()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 179
    .end local v3    # "value":Lcom/amazonaws/services/ec2/model/VolumeStatusEvent;
    :cond_1
    return-object p0
.end method

.method public withVolumeId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/VolumeStatusItem;
    .locals 0
    .param p1, "volumeId"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/VolumeStatusItem;->volumeId:Ljava/lang/String;

    .line 63
    return-object p0
.end method

.method public withVolumeStatus(Lcom/amazonaws/services/ec2/model/VolumeStatusInfo;)Lcom/amazonaws/services/ec2/model/VolumeStatusItem;
    .locals 0
    .param p1, "volumeStatus"    # Lcom/amazonaws/services/ec2/model/VolumeStatusInfo;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/VolumeStatusItem;->volumeStatus:Lcom/amazonaws/services/ec2/model/VolumeStatusInfo;

    .line 131
    return-object p0
.end method
