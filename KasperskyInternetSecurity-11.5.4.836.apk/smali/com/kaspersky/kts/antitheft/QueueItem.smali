.class public abstract Lcom/kaspersky/kts/antitheft/QueueItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private mSendAttempt:I

.field private mStatus:Lcom/kaspersky/kts/antitheft/QueueItem$ItemStatus;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput v0, p0, Lcom/kaspersky/kts/antitheft/QueueItem;->mSendAttempt:I

    .line 9
    sget-object v0, Lcom/kaspersky/kts/antitheft/QueueItem$ItemStatus;->NEW:Lcom/kaspersky/kts/antitheft/QueueItem$ItemStatus;

    iput-object v0, p0, Lcom/kaspersky/kts/antitheft/QueueItem;->mStatus:Lcom/kaspersky/kts/antitheft/QueueItem$ItemStatus;

    .line 5
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 41
    if-ne p0, p1, :cond_1

    .line 53
    :cond_0
    :goto_0
    return v0

    .line 43
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 44
    goto :goto_0

    .line 45
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 46
    goto :goto_0

    .line 47
    :cond_3
    check-cast p1, Lcom/kaspersky/kts/antitheft/QueueItem;

    .line 48
    invoke-virtual {p0}, Lcom/kaspersky/kts/antitheft/QueueItem;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    .line 49
    invoke-virtual {p1}, Lcom/kaspersky/kts/antitheft/QueueItem;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 50
    goto :goto_0

    .line 51
    :cond_4
    invoke-virtual {p0}, Lcom/kaspersky/kts/antitheft/QueueItem;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/kaspersky/kts/antitheft/QueueItem;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 52
    goto :goto_0
.end method

.method public getSendAttempt()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/kaspersky/kts/antitheft/QueueItem;->mSendAttempt:I

    return v0
.end method

.method public getStatus()Lcom/kaspersky/kts/antitheft/QueueItem$ItemStatus;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/kaspersky/kts/antitheft/QueueItem;->mStatus:Lcom/kaspersky/kts/antitheft/QueueItem$ItemStatus;

    return-object v0
.end method

.method public abstract getUniqueId()Ljava/lang/String;
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/kaspersky/kts/antitheft/QueueItem;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 36
    return v0

    .line 32
    :cond_0
    invoke-virtual {p0}, Lcom/kaspersky/kts/antitheft/QueueItem;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public increaseSendAttempts()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/kaspersky/kts/antitheft/QueueItem;->mSendAttempt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/kaspersky/kts/antitheft/QueueItem;->mSendAttempt:I

    return v0
.end method

.method public abstract isNetworkDependant()Z
.end method

.method public setStatus(Lcom/kaspersky/kts/antitheft/QueueItem$ItemStatus;)V
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcom/kaspersky/kts/antitheft/QueueItem;->mStatus:Lcom/kaspersky/kts/antitheft/QueueItem$ItemStatus;

    .line 16
    return-void
.end method
