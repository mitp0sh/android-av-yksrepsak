.class public Lcom/amazonaws/services/elasticloadbalancing/model/Policies;
.super Ljava/lang/Object;
.source "Policies.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private appCookieStickinessPolicies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/AppCookieStickinessPolicy;",
            ">;"
        }
    .end annotation
.end field

.field private lBCookieStickinessPolicies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/LBCookieStickinessPolicy;",
            ">;"
        }
    .end annotation
.end field

.field private otherPolicies:Ljava/util/List;
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
    .line 46
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

    .line 303
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 315
    :cond_0
    :goto_0
    return v3

    .line 304
    :cond_1
    if-eqz p1, :cond_0

    .line 306
    instance-of v1, p1, Lcom/amazonaws/services/elasticloadbalancing/model/Policies;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 307
    check-cast v0, Lcom/amazonaws/services/elasticloadbalancing/model/Policies;

    .line 309
    .local v0, "other":Lcom/amazonaws/services/elasticloadbalancing/model/Policies;
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/Policies;->getAppCookieStickinessPolicies()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_5

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/Policies;->getAppCookieStickinessPolicies()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_6

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 310
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/Policies;->getAppCookieStickinessPolicies()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/Policies;->getAppCookieStickinessPolicies()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/Policies;->getAppCookieStickinessPolicies()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 311
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/Policies;->getLBCookieStickinessPolicies()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_7

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/Policies;->getLBCookieStickinessPolicies()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_8

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 312
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/Policies;->getLBCookieStickinessPolicies()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/Policies;->getLBCookieStickinessPolicies()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/Policies;->getLBCookieStickinessPolicies()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 313
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/Policies;->getOtherPolicies()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_9

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/Policies;->getOtherPolicies()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_a

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 314
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/Policies;->getOtherPolicies()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/Policies;->getOtherPolicies()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/Policies;->getOtherPolicies()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_4
    move v3, v2

    .line 315
    goto :goto_0

    :cond_5
    move v1, v3

    .line 309
    goto :goto_1

    :cond_6
    move v4, v3

    goto :goto_2

    :cond_7
    move v1, v3

    .line 311
    goto :goto_3

    :cond_8
    move v4, v3

    goto :goto_4

    :cond_9
    move v1, v3

    .line 313
    goto :goto_5

    :cond_a
    move v4, v3

    goto :goto_6
.end method

.method public getAppCookieStickinessPolicies()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/AppCookieStickinessPolicy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/Policies;->appCookieStickinessPolicies:Ljava/util/List;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/Policies;->appCookieStickinessPolicies:Ljava/util/List;

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/Policies;->appCookieStickinessPolicies:Ljava/util/List;

    return-object v0
.end method

.method public getLBCookieStickinessPolicies()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/LBCookieStickinessPolicy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/Policies;->lBCookieStickinessPolicies:Ljava/util/List;

    if-nez v0, :cond_0

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/Policies;->lBCookieStickinessPolicies:Ljava/util/List;

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/Policies;->lBCookieStickinessPolicies:Ljava/util/List;

    return-object v0
.end method

.method public getOtherPolicies()Ljava/util/List;
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
    .line 209
    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/Policies;->otherPolicies:Ljava/util/List;

    if-nez v0, :cond_0

    .line 210
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/Policies;->otherPolicies:Ljava/util/List;

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/Policies;->otherPolicies:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 292
    const/16 v1, 0x1f

    .line 293
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 295
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/Policies;->getAppCookieStickinessPolicies()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 296
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/Policies;->getLBCookieStickinessPolicies()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 297
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/Policies;->getOtherPolicies()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_2

    :goto_2
    add-int v0, v2, v3

    .line 298
    return v0

    .line 295
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/Policies;->getAppCookieStickinessPolicies()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_0

    .line 296
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/Policies;->getLBCookieStickinessPolicies()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    .line 297
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/Policies;->getOtherPolicies()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_2
.end method

.method public setAppCookieStickinessPolicies(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/AppCookieStickinessPolicy;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p1, "appCookieStickinessPolicies":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/elasticloadbalancing/model/AppCookieStickinessPolicy;>;"
    if-nez p1, :cond_0

    .line 72
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/Policies;->appCookieStickinessPolicies:Ljava/util/List;

    .line 79
    :goto_0
    return-void

    .line 76
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 77
    .local v0, "appCookieStickinessPoliciesCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/elasticloadbalancing/model/AppCookieStickinessPolicy;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 78
    iput-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/Policies;->appCookieStickinessPolicies:Ljava/util/List;

    goto :goto_0
.end method

.method public setLBCookieStickinessPolicies(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/LBCookieStickinessPolicy;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 148
    .local p1, "lBCookieStickinessPolicies":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/elasticloadbalancing/model/LBCookieStickinessPolicy;>;"
    if-nez p1, :cond_0

    .line 149
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/Policies;->lBCookieStickinessPolicies:Ljava/util/List;

    .line 156
    :goto_0
    return-void

    .line 153
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 154
    .local v0, "lBCookieStickinessPoliciesCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/elasticloadbalancing/model/LBCookieStickinessPolicy;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 155
    iput-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/Policies;->lBCookieStickinessPolicies:Ljava/util/List;

    goto :goto_0
.end method

.method public setOtherPolicies(Ljava/util/Collection;)V
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
    .line 221
    .local p1, "otherPolicies":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 222
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/Policies;->otherPolicies:Ljava/util/List;

    .line 229
    :goto_0
    return-void

    .line 226
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 227
    .local v0, "otherPoliciesCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 228
    iput-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/Policies;->otherPolicies:Ljava/util/List;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 282
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/Policies;->getAppCookieStickinessPolicies()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppCookieStickinessPolicies: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/Policies;->getAppCookieStickinessPolicies()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/Policies;->getLBCookieStickinessPolicies()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LBCookieStickinessPolicies: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/Policies;->getLBCookieStickinessPolicies()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/Policies;->getOtherPolicies()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OtherPolicies: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/Policies;->getOtherPolicies()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    :cond_2
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withAppCookieStickinessPolicies(Ljava/util/Collection;)Lcom/amazonaws/services/elasticloadbalancing/model/Policies;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/AppCookieStickinessPolicy;",
            ">;)",
            "Lcom/amazonaws/services/elasticloadbalancing/model/Policies;"
        }
    .end annotation

    .prologue
    .line 114
    .local p1, "appCookieStickinessPolicies":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/elasticloadbalancing/model/AppCookieStickinessPolicy;>;"
    if-nez p1, :cond_0

    .line 115
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/Policies;->appCookieStickinessPolicies:Ljava/util/List;

    .line 122
    :goto_0
    return-object p0

    .line 117
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 118
    .local v0, "appCookieStickinessPoliciesCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/elasticloadbalancing/model/AppCookieStickinessPolicy;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 119
    iput-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/Policies;->appCookieStickinessPolicies:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withAppCookieStickinessPolicies([Lcom/amazonaws/services/elasticloadbalancing/model/AppCookieStickinessPolicy;)Lcom/amazonaws/services/elasticloadbalancing/model/Policies;
    .locals 6
    .param p1, "appCookieStickinessPolicies"    # [Lcom/amazonaws/services/elasticloadbalancing/model/AppCookieStickinessPolicy;

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/Policies;->getAppCookieStickinessPolicies()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/elasticloadbalancing/model/Policies;->setAppCookieStickinessPolicies(Ljava/util/Collection;)V

    .line 95
    :cond_0
    move-object v0, p1

    .local v0, "arr$":[Lcom/amazonaws/services/elasticloadbalancing/model/AppCookieStickinessPolicy;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 96
    .local v3, "value":Lcom/amazonaws/services/elasticloadbalancing/model/AppCookieStickinessPolicy;
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/Policies;->getAppCookieStickinessPolicies()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 98
    .end local v3    # "value":Lcom/amazonaws/services/elasticloadbalancing/model/AppCookieStickinessPolicy;
    :cond_1
    return-object p0
.end method

.method public withLBCookieStickinessPolicies(Ljava/util/Collection;)Lcom/amazonaws/services/elasticloadbalancing/model/Policies;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/LBCookieStickinessPolicy;",
            ">;)",
            "Lcom/amazonaws/services/elasticloadbalancing/model/Policies;"
        }
    .end annotation

    .prologue
    .line 191
    .local p1, "lBCookieStickinessPolicies":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/elasticloadbalancing/model/LBCookieStickinessPolicy;>;"
    if-nez p1, :cond_0

    .line 192
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/Policies;->lBCookieStickinessPolicies:Ljava/util/List;

    .line 199
    :goto_0
    return-object p0

    .line 194
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 195
    .local v0, "lBCookieStickinessPoliciesCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/elasticloadbalancing/model/LBCookieStickinessPolicy;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 196
    iput-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/Policies;->lBCookieStickinessPolicies:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withLBCookieStickinessPolicies([Lcom/amazonaws/services/elasticloadbalancing/model/LBCookieStickinessPolicy;)Lcom/amazonaws/services/elasticloadbalancing/model/Policies;
    .locals 6
    .param p1, "lBCookieStickinessPolicies"    # [Lcom/amazonaws/services/elasticloadbalancing/model/LBCookieStickinessPolicy;

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/Policies;->getLBCookieStickinessPolicies()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/elasticloadbalancing/model/Policies;->setLBCookieStickinessPolicies(Ljava/util/Collection;)V

    .line 172
    :cond_0
    move-object v0, p1

    .local v0, "arr$":[Lcom/amazonaws/services/elasticloadbalancing/model/LBCookieStickinessPolicy;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 173
    .local v3, "value":Lcom/amazonaws/services/elasticloadbalancing/model/LBCookieStickinessPolicy;
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/Policies;->getLBCookieStickinessPolicies()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 175
    .end local v3    # "value":Lcom/amazonaws/services/elasticloadbalancing/model/LBCookieStickinessPolicy;
    :cond_1
    return-object p0
.end method

.method public withOtherPolicies(Ljava/util/Collection;)Lcom/amazonaws/services/elasticloadbalancing/model/Policies;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/elasticloadbalancing/model/Policies;"
        }
    .end annotation

    .prologue
    .line 260
    .local p1, "otherPolicies":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 261
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/Policies;->otherPolicies:Ljava/util/List;

    .line 268
    :goto_0
    return-object p0

    .line 263
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 264
    .local v0, "otherPoliciesCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 265
    iput-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/Policies;->otherPolicies:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withOtherPolicies([Ljava/lang/String;)Lcom/amazonaws/services/elasticloadbalancing/model/Policies;
    .locals 6
    .param p1, "otherPolicies"    # [Ljava/lang/String;

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/Policies;->getOtherPolicies()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/elasticloadbalancing/model/Policies;->setOtherPolicies(Ljava/util/Collection;)V

    .line 243
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

    .line 244
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/Policies;->getOtherPolicies()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 246
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    return-object p0
.end method
