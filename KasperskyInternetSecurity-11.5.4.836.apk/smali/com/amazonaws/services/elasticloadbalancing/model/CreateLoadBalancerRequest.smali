.class public Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "CreateLoadBalancerRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private availabilityZones:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/Listener;",
            ">;"
        }
    .end annotation
.end field

.field private loadBalancerName:Ljava/lang/String;

.field private scheme:Ljava/lang/String;

.field private securityGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private subnets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "loadBalancerName"    # Ljava/lang/String;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 99
    iput-object p1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->loadBalancerName:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p1, "loadBalancerName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/Listener;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 119
    .local p2, "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/elasticloadbalancing/model/Listener;>;"
    .local p3, "availabilityZones":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 120
    iput-object p1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->loadBalancerName:Ljava/lang/String;

    .line 121
    iput-object p2, p0, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->listeners:Ljava/util/List;

    .line 122
    iput-object p3, p0, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->availabilityZones:Ljava/util/List;

    .line 123
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 585
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 603
    :cond_0
    :goto_0
    return v3

    .line 586
    :cond_1
    if-eqz p1, :cond_0

    .line 588
    instance-of v1, p1, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 589
    check-cast v0, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;

    .line 591
    .local v0, "other":Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getLoadBalancerName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getLoadBalancerName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_9

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 592
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getLoadBalancerName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getLoadBalancerName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getLoadBalancerName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 593
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getListeners()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_a

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getListeners()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_b

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 594
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getListeners()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getListeners()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getListeners()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 595
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getAvailabilityZones()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_c

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getAvailabilityZones()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_d

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 596
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getAvailabilityZones()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getAvailabilityZones()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getAvailabilityZones()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 597
    :cond_4
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getSubnets()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_e

    move v1, v2

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getSubnets()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_f

    move v4, v2

    :goto_8
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 598
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getSubnets()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getSubnets()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getSubnets()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 599
    :cond_5
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getSecurityGroups()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_10

    move v1, v2

    :goto_9
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getSecurityGroups()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_11

    move v4, v2

    :goto_a
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 600
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getSecurityGroups()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getSecurityGroups()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getSecurityGroups()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 601
    :cond_6
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_12

    move v1, v2

    :goto_b
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getScheme()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_13

    move v4, v2

    :goto_c
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 602
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_7
    move v3, v2

    .line 603
    goto/16 :goto_0

    :cond_8
    move v1, v3

    .line 591
    goto/16 :goto_1

    :cond_9
    move v4, v3

    goto/16 :goto_2

    :cond_a
    move v1, v3

    .line 593
    goto/16 :goto_3

    :cond_b
    move v4, v3

    goto/16 :goto_4

    :cond_c
    move v1, v3

    .line 595
    goto/16 :goto_5

    :cond_d
    move v4, v3

    goto/16 :goto_6

    :cond_e
    move v1, v3

    .line 597
    goto :goto_7

    :cond_f
    move v4, v3

    goto :goto_8

    :cond_10
    move v1, v3

    .line 599
    goto :goto_9

    :cond_11
    move v4, v3

    goto :goto_a

    :cond_12
    move v1, v3

    .line 601
    goto :goto_b

    :cond_13
    move v4, v3

    goto :goto_c
.end method

.method public getAvailabilityZones()Ljava/util/List;
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
    .line 259
    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->availabilityZones:Ljava/util/List;

    if-nez v0, :cond_0

    .line 260
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->availabilityZones:Ljava/util/List;

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->availabilityZones:Ljava/util/List;

    return-object v0
.end method

.method public getListeners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/Listener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 176
    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->listeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->listeners:Ljava/util/List;

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->listeners:Ljava/util/List;

    return-object v0
.end method

.method public getLoadBalancerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->loadBalancerName:Ljava/lang/String;

    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->scheme:Ljava/lang/String;

    return-object v0
.end method

.method public getSecurityGroups()Ljava/util/List;
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
    .line 421
    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->securityGroups:Ljava/util/List;

    if-nez v0, :cond_0

    .line 422
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->securityGroups:Ljava/util/List;

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->securityGroups:Ljava/util/List;

    return-object v0
.end method

.method public getSubnets()Ljava/util/List;
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
    .line 352
    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->subnets:Ljava/util/List;

    if-nez v0, :cond_0

    .line 353
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->subnets:Ljava/util/List;

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->subnets:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 571
    const/16 v1, 0x1f

    .line 572
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 574
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getLoadBalancerName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 575
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getListeners()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 576
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getAvailabilityZones()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v0, v4, v2

    .line 577
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getSubnets()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v3

    :goto_3
    add-int v0, v4, v2

    .line 578
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getSecurityGroups()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_4

    move v2, v3

    :goto_4
    add-int v0, v4, v2

    .line 579
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getScheme()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_5

    :goto_5
    add-int v0, v2, v3

    .line 580
    return v0

    .line 574
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getLoadBalancerName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 575
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getListeners()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    .line 576
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getAvailabilityZones()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    .line 577
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getSubnets()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    .line 578
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getSecurityGroups()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    .line 579
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_5
.end method

.method public setAvailabilityZones(Ljava/util/Collection;)V
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
    .line 279
    .local p1, "availabilityZones":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 280
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->availabilityZones:Ljava/util/List;

    .line 287
    :goto_0
    return-void

    .line 284
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 285
    .local v0, "availabilityZonesCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 286
    iput-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->availabilityZones:Ljava/util/List;

    goto :goto_0
.end method

.method public setListeners(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/Listener;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 190
    .local p1, "listeners":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/elasticloadbalancing/model/Listener;>;"
    if-nez p1, :cond_0

    .line 191
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->listeners:Ljava/util/List;

    .line 198
    :goto_0
    return-void

    .line 195
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 196
    .local v0, "listenersCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/elasticloadbalancing/model/Listener;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 197
    iput-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->listeners:Ljava/util/List;

    goto :goto_0
.end method

.method public setLoadBalancerName(Ljava/lang/String;)V
    .locals 0
    .param p1, "loadBalancerName"    # Ljava/lang/String;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->loadBalancerName:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public setScheme(Ljava/lang/String;)V
    .locals 0
    .param p1, "scheme"    # Ljava/lang/String;

    .prologue
    .line 518
    iput-object p1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->scheme:Ljava/lang/String;

    .line 519
    return-void
.end method

.method public setSecurityGroups(Ljava/util/Collection;)V
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
    .line 433
    .local p1, "securityGroups":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 434
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->securityGroups:Ljava/util/List;

    .line 441
    :goto_0
    return-void

    .line 438
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 439
    .local v0, "securityGroupsCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 440
    iput-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->securityGroups:Ljava/util/List;

    goto :goto_0
.end method

.method public setSubnets(Ljava/util/Collection;)V
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
    .line 364
    .local p1, "subnets":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 365
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->subnets:Ljava/util/List;

    .line 372
    :goto_0
    return-void

    .line 369
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 370
    .local v0, "subnetsCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 371
    iput-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->subnets:Ljava/util/List;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 557
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 558
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getLoadBalancerName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LoadBalancerName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getLoadBalancerName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getListeners()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Listeners: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getListeners()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getAvailabilityZones()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AvailabilityZones: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getAvailabilityZones()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getSubnets()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Subnets: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getSubnets()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getSecurityGroups()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SecurityGroups: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getSecurityGroups()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scheme: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    :cond_5
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withAvailabilityZones(Ljava/util/Collection;)Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;"
        }
    .end annotation

    .prologue
    .line 334
    .local p1, "availabilityZones":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 335
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->availabilityZones:Ljava/util/List;

    .line 342
    :goto_0
    return-object p0

    .line 337
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 338
    .local v0, "availabilityZonesCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 339
    iput-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->availabilityZones:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withAvailabilityZones([Ljava/lang/String;)Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;
    .locals 6
    .param p1, "availabilityZones"    # [Ljava/lang/String;

    .prologue
    .line 308
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getAvailabilityZones()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->setAvailabilityZones(Ljava/util/Collection;)V

    .line 309
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

    .line 310
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getAvailabilityZones()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 312
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    return-object p0
.end method

.method public withListeners(Ljava/util/Collection;)Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/Listener;",
            ">;)",
            "Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;"
        }
    .end annotation

    .prologue
    .line 233
    .local p1, "listeners":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/elasticloadbalancing/model/Listener;>;"
    if-nez p1, :cond_0

    .line 234
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->listeners:Ljava/util/List;

    .line 241
    :goto_0
    return-object p0

    .line 236
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 237
    .local v0, "listenersCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/elasticloadbalancing/model/Listener;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 238
    iput-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->listeners:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withListeners([Lcom/amazonaws/services/elasticloadbalancing/model/Listener;)Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;
    .locals 6
    .param p1, "listeners"    # [Lcom/amazonaws/services/elasticloadbalancing/model/Listener;

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getListeners()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->setListeners(Ljava/util/Collection;)V

    .line 214
    :cond_0
    move-object v0, p1

    .local v0, "arr$":[Lcom/amazonaws/services/elasticloadbalancing/model/Listener;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 215
    .local v3, "value":Lcom/amazonaws/services/elasticloadbalancing/model/Listener;
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getListeners()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 217
    .end local v3    # "value":Lcom/amazonaws/services/elasticloadbalancing/model/Listener;
    :cond_1
    return-object p0
.end method

.method public withLoadBalancerName(Ljava/lang/String;)Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;
    .locals 0
    .param p1, "loadBalancerName"    # Ljava/lang/String;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->loadBalancerName:Ljava/lang/String;

    .line 163
    return-object p0
.end method

.method public withScheme(Ljava/lang/String;)Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;
    .locals 0
    .param p1, "scheme"    # Ljava/lang/String;

    .prologue
    .line 542
    iput-object p1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->scheme:Ljava/lang/String;

    .line 543
    return-object p0
.end method

.method public withSecurityGroups(Ljava/util/Collection;)Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;"
        }
    .end annotation

    .prologue
    .line 472
    .local p1, "securityGroups":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 473
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->securityGroups:Ljava/util/List;

    .line 480
    :goto_0
    return-object p0

    .line 475
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 476
    .local v0, "securityGroupsCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 477
    iput-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->securityGroups:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withSecurityGroups([Ljava/lang/String;)Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;
    .locals 6
    .param p1, "securityGroups"    # [Ljava/lang/String;

    .prologue
    .line 454
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getSecurityGroups()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->setSecurityGroups(Ljava/util/Collection;)V

    .line 455
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

    .line 456
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getSecurityGroups()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 455
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 458
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    return-object p0
.end method

.method public withSubnets(Ljava/util/Collection;)Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;"
        }
    .end annotation

    .prologue
    .line 403
    .local p1, "subnets":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 404
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->subnets:Ljava/util/List;

    .line 411
    :goto_0
    return-object p0

    .line 406
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 407
    .local v0, "subnetsCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 408
    iput-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->subnets:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withSubnets([Ljava/lang/String;)Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;
    .locals 6
    .param p1, "subnets"    # [Ljava/lang/String;

    .prologue
    .line 385
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getSubnets()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->setSubnets(Ljava/util/Collection;)V

    .line 386
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

    .line 387
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;->getSubnets()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 386
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 389
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    return-object p0
.end method
