.class public Lcom/amazonaws/services/simpleemail/model/IdentityDkimAttributes;
.super Ljava/lang/Object;
.source "IdentityDkimAttributes.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private dkimEnabled:Ljava/lang/Boolean;

.field private dkimTokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private dkimVerificationStatus:Ljava/lang/String;


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

    .line 346
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 358
    :cond_0
    :goto_0
    return v3

    .line 347
    :cond_1
    if-eqz p1, :cond_0

    .line 349
    instance-of v1, p1, Lcom/amazonaws/services/simpleemail/model/IdentityDkimAttributes;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 350
    check-cast v0, Lcom/amazonaws/services/simpleemail/model/IdentityDkimAttributes;

    .line 352
    .local v0, "other":Lcom/amazonaws/services/simpleemail/model/IdentityDkimAttributes;
    invoke-virtual {v0}, Lcom/amazonaws/services/simpleemail/model/IdentityDkimAttributes;->isDkimEnabled()Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_5

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/IdentityDkimAttributes;->isDkimEnabled()Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_6

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 353
    invoke-virtual {v0}, Lcom/amazonaws/services/simpleemail/model/IdentityDkimAttributes;->isDkimEnabled()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/simpleemail/model/IdentityDkimAttributes;->isDkimEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/IdentityDkimAttributes;->isDkimEnabled()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 354
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/simpleemail/model/IdentityDkimAttributes;->getDkimVerificationStatus()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/IdentityDkimAttributes;->getDkimVerificationStatus()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_8

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 355
    invoke-virtual {v0}, Lcom/amazonaws/services/simpleemail/model/IdentityDkimAttributes;->getDkimVerificationStatus()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/simpleemail/model/IdentityDkimAttributes;->getDkimVerificationStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/IdentityDkimAttributes;->getDkimVerificationStatus()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 356
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/simpleemail/model/IdentityDkimAttributes;->getDkimTokens()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_9

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/IdentityDkimAttributes;->getDkimTokens()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_a

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 357
    invoke-virtual {v0}, Lcom/amazonaws/services/simpleemail/model/IdentityDkimAttributes;->getDkimTokens()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/simpleemail/model/IdentityDkimAttributes;->getDkimTokens()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/IdentityDkimAttributes;->getDkimTokens()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_4
    move v3, v2

    .line 358
    goto :goto_0

    :cond_5
    move v1, v3

    .line 352
    goto :goto_1

    :cond_6
    move v4, v3

    goto :goto_2

    :cond_7
    move v1, v3

    .line 354
    goto :goto_3

    :cond_8
    move v4, v3

    goto :goto_4

    :cond_9
    move v1, v3

    .line 356
    goto :goto_5

    :cond_a
    move v4, v3

    goto :goto_6
.end method

.method public getDkimEnabled()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/amazonaws/services/simpleemail/model/IdentityDkimAttributes;->dkimEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getDkimTokens()Ljava/util/List;
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
    .line 222
    iget-object v0, p0, Lcom/amazonaws/services/simpleemail/model/IdentityDkimAttributes;->dkimTokens:Ljava/util/List;

    if-nez v0, :cond_0

    .line 223
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/simpleemail/model/IdentityDkimAttributes;->dkimTokens:Ljava/util/List;

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/simpleemail/model/IdentityDkimAttributes;->dkimTokens:Ljava/util/List;

    return-object v0
.end method

.method public getDkimVerificationStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/amazonaws/services/simpleemail/model/IdentityDkimAttributes;->dkimVerificationStatus:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 335
    const/16 v1, 0x1f

    .line 336
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 338
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/IdentityDkimAttributes;->isDkimEnabled()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 339
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/IdentityDkimAttributes;->getDkimVerificationStatus()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 340
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/IdentityDkimAttributes;->getDkimTokens()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_2

    :goto_2
    add-int v0, v2, v3

    .line 341
    return v0

    .line 338
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/IdentityDkimAttributes;->isDkimEnabled()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->hashCode()I

    move-result v2

    goto :goto_0

    .line 339
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/IdentityDkimAttributes;->getDkimVerificationStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 340
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/IdentityDkimAttributes;->getDkimTokens()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_2
.end method

.method public isDkimEnabled()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/amazonaws/services/simpleemail/model/IdentityDkimAttributes;->dkimEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setDkimEnabled(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "dkimEnabled"    # Ljava/lang/Boolean;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/amazonaws/services/simpleemail/model/IdentityDkimAttributes;->dkimEnabled:Ljava/lang/Boolean;

    .line 71
    return-void
.end method

.method public setDkimTokens(Ljava/util/Collection;)V
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
    .line 244
    .local p1, "dkimTokens":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 245
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/simpleemail/model/IdentityDkimAttributes;->dkimTokens:Ljava/util/List;

    .line 252
    :goto_0
    return-void

    .line 249
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 250
    .local v0, "dkimTokensCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 251
    iput-object v0, p0, Lcom/amazonaws/services/simpleemail/model/IdentityDkimAttributes;->dkimTokens:Ljava/util/List;

    goto :goto_0
.end method

.method public setDkimVerificationStatus(Lcom/amazonaws/services/simpleemail/model/VerificationStatus;)V
    .locals 1
    .param p1, "dkimVerificationStatus"    # Lcom/amazonaws/services/simpleemail/model/VerificationStatus;

    .prologue
    .line 178
    invoke-virtual {p1}, Lcom/amazonaws/services/simpleemail/model/VerificationStatus;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/simpleemail/model/IdentityDkimAttributes;->dkimVerificationStatus:Ljava/lang/String;

    .line 179
    return-void
.end method

.method public setDkimVerificationStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "dkimVerificationStatus"    # Ljava/lang/String;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/amazonaws/services/simpleemail/model/IdentityDkimAttributes;->dkimVerificationStatus:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 325
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/IdentityDkimAttributes;->isDkimEnabled()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DkimEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/IdentityDkimAttributes;->isDkimEnabled()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/IdentityDkimAttributes;->getDkimVerificationStatus()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DkimVerificationStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/IdentityDkimAttributes;->getDkimVerificationStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/IdentityDkimAttributes;->getDkimTokens()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DkimTokens: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/IdentityDkimAttributes;->getDkimTokens()Ljava/util/List;

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
    :cond_2
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withDkimEnabled(Ljava/lang/Boolean;)Lcom/amazonaws/services/simpleemail/model/IdentityDkimAttributes;
    .locals 0
    .param p1, "dkimEnabled"    # Ljava/lang/Boolean;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/amazonaws/services/simpleemail/model/IdentityDkimAttributes;->dkimEnabled:Ljava/lang/Boolean;

    .line 87
    return-object p0
.end method

.method public withDkimTokens(Ljava/util/Collection;)Lcom/amazonaws/services/simpleemail/model/IdentityDkimAttributes;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/simpleemail/model/IdentityDkimAttributes;"
        }
    .end annotation

    .prologue
    .line 303
    .local p1, "dkimTokens":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 304
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/simpleemail/model/IdentityDkimAttributes;->dkimTokens:Ljava/util/List;

    .line 311
    :goto_0
    return-object p0

    .line 306
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 307
    .local v0, "dkimTokensCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 308
    iput-object v0, p0, Lcom/amazonaws/services/simpleemail/model/IdentityDkimAttributes;->dkimTokens:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withDkimTokens([Ljava/lang/String;)Lcom/amazonaws/services/simpleemail/model/IdentityDkimAttributes;
    .locals 6
    .param p1, "dkimTokens"    # [Ljava/lang/String;

    .prologue
    .line 275
    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/IdentityDkimAttributes;->getDkimTokens()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/simpleemail/model/IdentityDkimAttributes;->setDkimTokens(Ljava/util/Collection;)V

    .line 276
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

    .line 277
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/IdentityDkimAttributes;->getDkimTokens()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 279
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    return-object p0
.end method

.method public withDkimVerificationStatus(Lcom/amazonaws/services/simpleemail/model/VerificationStatus;)Lcom/amazonaws/services/simpleemail/model/IdentityDkimAttributes;
    .locals 1
    .param p1, "dkimVerificationStatus"    # Lcom/amazonaws/services/simpleemail/model/VerificationStatus;

    .prologue
    .line 201
    invoke-virtual {p1}, Lcom/amazonaws/services/simpleemail/model/VerificationStatus;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/simpleemail/model/IdentityDkimAttributes;->dkimVerificationStatus:Ljava/lang/String;

    .line 202
    return-object p0
.end method

.method public withDkimVerificationStatus(Ljava/lang/String;)Lcom/amazonaws/services/simpleemail/model/IdentityDkimAttributes;
    .locals 0
    .param p1, "dkimVerificationStatus"    # Ljava/lang/String;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/amazonaws/services/simpleemail/model/IdentityDkimAttributes;->dkimVerificationStatus:Ljava/lang/String;

    .line 159
    return-object p0
.end method
