.class public Lcom/amazonaws/services/ec2/model/Reservation;
.super Ljava/lang/Object;
.source "Reservation.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private groupNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private groups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/ec2/model/GroupIdentifier;",
            ">;"
        }
    .end annotation
.end field

.field private instances:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/ec2/model/Instance;",
            ">;"
        }
    .end annotation
.end field

.field private ownerId:Ljava/lang/String;

.field private requesterId:Ljava/lang/String;

.field private reservationId:Ljava/lang/String;


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
    instance-of v1, p1, Lcom/amazonaws/services/ec2/model/Reservation;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 431
    check-cast v0, Lcom/amazonaws/services/ec2/model/Reservation;

    .line 433
    .local v0, "other":Lcom/amazonaws/services/ec2/model/Reservation;
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Reservation;->getReservationId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Reservation;->getReservationId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_9

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 434
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Reservation;->getReservationId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Reservation;->getReservationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Reservation;->getReservationId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 435
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Reservation;->getOwnerId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_a

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Reservation;->getOwnerId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_b

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 436
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Reservation;->getOwnerId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Reservation;->getOwnerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Reservation;->getOwnerId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 437
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Reservation;->getRequesterId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_c

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Reservation;->getRequesterId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_d

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 438
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Reservation;->getRequesterId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Reservation;->getRequesterId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Reservation;->getRequesterId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 439
    :cond_4
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Reservation;->getGroups()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_e

    move v1, v2

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Reservation;->getGroups()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_f

    move v4, v2

    :goto_8
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 440
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Reservation;->getGroups()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Reservation;->getGroups()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Reservation;->getGroups()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 441
    :cond_5
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Reservation;->getGroupNames()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_10

    move v1, v2

    :goto_9
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Reservation;->getGroupNames()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_11

    move v4, v2

    :goto_a
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 442
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Reservation;->getGroupNames()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Reservation;->getGroupNames()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Reservation;->getGroupNames()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 443
    :cond_6
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Reservation;->getInstances()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_12

    move v1, v2

    :goto_b
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Reservation;->getInstances()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_13

    move v4, v2

    :goto_c
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 444
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Reservation;->getInstances()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Reservation;->getInstances()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Reservation;->getInstances()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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

.method public getGroupNames()Ljava/util/List;
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
    .line 252
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Reservation;->groupNames:Ljava/util/List;

    if-nez v0, :cond_0

    .line 253
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/Reservation;->groupNames:Ljava/util/List;

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Reservation;->groupNames:Ljava/util/List;

    return-object v0
.end method

.method public getGroups()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/ec2/model/GroupIdentifier;",
            ">;"
        }
    .end annotation

    .prologue
    .line 175
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Reservation;->groups:Ljava/util/List;

    if-nez v0, :cond_0

    .line 176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/Reservation;->groups:Ljava/util/List;

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Reservation;->groups:Ljava/util/List;

    return-object v0
.end method

.method public getInstances()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/ec2/model/Instance;",
            ">;"
        }
    .end annotation

    .prologue
    .line 327
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Reservation;->instances:Ljava/util/List;

    if-nez v0, :cond_0

    .line 328
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/Reservation;->instances:Ljava/util/List;

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Reservation;->instances:Ljava/util/List;

    return-object v0
.end method

.method public getOwnerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Reservation;->ownerId:Ljava/lang/String;

    return-object v0
.end method

.method public getRequesterId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Reservation;->requesterId:Ljava/lang/String;

    return-object v0
.end method

.method public getReservationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Reservation;->reservationId:Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Reservation;->getReservationId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 417
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Reservation;->getOwnerId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 418
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Reservation;->getRequesterId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v0, v4, v2

    .line 419
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Reservation;->getGroups()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v3

    :goto_3
    add-int v0, v4, v2

    .line 420
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Reservation;->getGroupNames()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_4

    move v2, v3

    :goto_4
    add-int v0, v4, v2

    .line 421
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Reservation;->getInstances()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_5

    :goto_5
    add-int v0, v2, v3

    .line 422
    return v0

    .line 416
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Reservation;->getReservationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 417
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Reservation;->getOwnerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 418
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Reservation;->getRequesterId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    .line 419
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Reservation;->getGroups()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    .line 420
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Reservation;->getGroupNames()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    .line 421
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Reservation;->getInstances()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_5
.end method

.method public setGroupNames(Ljava/util/Collection;)V
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
    .line 266
    .local p1, "groupNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 267
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/Reservation;->groupNames:Ljava/util/List;

    .line 274
    :goto_0
    return-void

    .line 271
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 272
    .local v0, "groupNamesCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 273
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/Reservation;->groupNames:Ljava/util/List;

    goto :goto_0
.end method

.method public setGroups(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/GroupIdentifier;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 189
    .local p1, "groups":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/GroupIdentifier;>;"
    if-nez p1, :cond_0

    .line 190
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/Reservation;->groups:Ljava/util/List;

    .line 197
    :goto_0
    return-void

    .line 194
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 195
    .local v0, "groupsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/GroupIdentifier;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 196
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/Reservation;->groups:Ljava/util/List;

    goto :goto_0
.end method

.method public setInstances(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/Instance;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 339
    .local p1, "instances":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/Instance;>;"
    if-nez p1, :cond_0

    .line 340
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/Reservation;->instances:Ljava/util/List;

    .line 347
    :goto_0
    return-void

    .line 344
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 345
    .local v0, "instancesCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/Instance;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 346
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/Reservation;->instances:Ljava/util/List;

    goto :goto_0
.end method

.method public setOwnerId(Ljava/lang/String;)V
    .locals 0
    .param p1, "ownerId"    # Ljava/lang/String;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Reservation;->ownerId:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setRequesterId(Ljava/lang/String;)V
    .locals 0
    .param p1, "requesterId"    # Ljava/lang/String;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Reservation;->requesterId:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public setReservationId(Ljava/lang/String;)V
    .locals 0
    .param p1, "reservationId"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Reservation;->reservationId:Ljava/lang/String;

    .line 74
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
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Reservation;->getReservationId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ReservationId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Reservation;->getReservationId()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Reservation;->getOwnerId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OwnerId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Reservation;->getOwnerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Reservation;->getRequesterId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RequesterId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Reservation;->getRequesterId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Reservation;->getGroups()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Groups: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Reservation;->getGroups()Ljava/util/List;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Reservation;->getGroupNames()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GroupNames: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Reservation;->getGroupNames()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Reservation;->getInstances()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Instances: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Reservation;->getInstances()Ljava/util/List;

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

.method public withGroupNames(Ljava/util/Collection;)Lcom/amazonaws/services/ec2/model/Reservation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/ec2/model/Reservation;"
        }
    .end annotation

    .prologue
    .line 309
    .local p1, "groupNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 310
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/Reservation;->groupNames:Ljava/util/List;

    .line 317
    :goto_0
    return-object p0

    .line 312
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 313
    .local v0, "groupNamesCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 314
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/Reservation;->groupNames:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withGroupNames([Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/Reservation;
    .locals 6
    .param p1, "groupNames"    # [Ljava/lang/String;

    .prologue
    .line 289
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Reservation;->getGroupNames()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/ec2/model/Reservation;->setGroupNames(Ljava/util/Collection;)V

    .line 290
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

    .line 291
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Reservation;->getGroupNames()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 293
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    return-object p0
.end method

.method public withGroups(Ljava/util/Collection;)Lcom/amazonaws/services/ec2/model/Reservation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/GroupIdentifier;",
            ">;)",
            "Lcom/amazonaws/services/ec2/model/Reservation;"
        }
    .end annotation

    .prologue
    .line 232
    .local p1, "groups":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/GroupIdentifier;>;"
    if-nez p1, :cond_0

    .line 233
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/Reservation;->groups:Ljava/util/List;

    .line 240
    :goto_0
    return-object p0

    .line 235
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 236
    .local v0, "groupsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/GroupIdentifier;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 237
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/Reservation;->groups:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withGroups([Lcom/amazonaws/services/ec2/model/GroupIdentifier;)Lcom/amazonaws/services/ec2/model/Reservation;
    .locals 6
    .param p1, "groups"    # [Lcom/amazonaws/services/ec2/model/GroupIdentifier;

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Reservation;->getGroups()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/ec2/model/Reservation;->setGroups(Ljava/util/Collection;)V

    .line 213
    :cond_0
    move-object v0, p1

    .local v0, "arr$":[Lcom/amazonaws/services/ec2/model/GroupIdentifier;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 214
    .local v3, "value":Lcom/amazonaws/services/ec2/model/GroupIdentifier;
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Reservation;->getGroups()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 216
    .end local v3    # "value":Lcom/amazonaws/services/ec2/model/GroupIdentifier;
    :cond_1
    return-object p0
.end method

.method public withInstances(Ljava/util/Collection;)Lcom/amazonaws/services/ec2/model/Reservation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/Instance;",
            ">;)",
            "Lcom/amazonaws/services/ec2/model/Reservation;"
        }
    .end annotation

    .prologue
    .line 378
    .local p1, "instances":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/Instance;>;"
    if-nez p1, :cond_0

    .line 379
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/Reservation;->instances:Ljava/util/List;

    .line 386
    :goto_0
    return-object p0

    .line 381
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 382
    .local v0, "instancesCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/Instance;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 383
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/Reservation;->instances:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withInstances([Lcom/amazonaws/services/ec2/model/Instance;)Lcom/amazonaws/services/ec2/model/Reservation;
    .locals 6
    .param p1, "instances"    # [Lcom/amazonaws/services/ec2/model/Instance;

    .prologue
    .line 360
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Reservation;->getInstances()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/ec2/model/Reservation;->setInstances(Ljava/util/Collection;)V

    .line 361
    :cond_0
    move-object v0, p1

    .local v0, "arr$":[Lcom/amazonaws/services/ec2/model/Instance;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 362
    .local v3, "value":Lcom/amazonaws/services/ec2/model/Instance;
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Reservation;->getInstances()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 361
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 364
    .end local v3    # "value":Lcom/amazonaws/services/ec2/model/Instance;
    :cond_1
    return-object p0
.end method

.method public withOwnerId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/Reservation;
    .locals 0
    .param p1, "ownerId"    # Ljava/lang/String;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Reservation;->ownerId:Ljava/lang/String;

    .line 122
    return-object p0
.end method

.method public withRequesterId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/Reservation;
    .locals 0
    .param p1, "requesterId"    # Ljava/lang/String;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Reservation;->requesterId:Ljava/lang/String;

    .line 162
    return-object p0
.end method

.method public withReservationId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/Reservation;
    .locals 0
    .param p1, "reservationId"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Reservation;->reservationId:Ljava/lang/String;

    .line 88
    return-object p0
.end method
