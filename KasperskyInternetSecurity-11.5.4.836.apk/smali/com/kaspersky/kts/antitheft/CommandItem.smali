.class public Lcom/kaspersky/kts/antitheft/CommandItem;
.super Lcom/kaspersky/kts/antitheft/QueueItem;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x10dceb1e7f3e3eaaL


# instance fields
.field private mActionInfo:Lcom/kaspersky/kts/antitheft/ActionInfo;


# direct methods
.method public constructor <init>(Lcom/kaspersky/kts/antitheft/ActionInfo;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/kaspersky/kts/antitheft/QueueItem;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/kaspersky/kts/antitheft/CommandItem;->mActionInfo:Lcom/kaspersky/kts/antitheft/ActionInfo;

    .line 15
    return-void
.end method


# virtual methods
.method public getActionInfo()Lcom/kaspersky/kts/antitheft/ActionInfo;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/kaspersky/kts/antitheft/CommandItem;->mActionInfo:Lcom/kaspersky/kts/antitheft/ActionInfo;

    return-object v0
.end method

.method public getUniqueId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/kaspersky/kts/antitheft/CommandItem;->mActionInfo:Lcom/kaspersky/kts/antitheft/ActionInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kaspersky/kts/antitheft/CommandItem;->mActionInfo:Lcom/kaspersky/kts/antitheft/ActionInfo;

    invoke-virtual {v0}, Lcom/kaspersky/kts/antitheft/ActionInfo;->getActionId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNetworkDependant()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 23
    iget-object v1, p0, Lcom/kaspersky/kts/antitheft/CommandItem;->mActionInfo:Lcom/kaspersky/kts/antitheft/ActionInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kaspersky/kts/antitheft/CommandItem;->mActionInfo:Lcom/kaspersky/kts/antitheft/ActionInfo;

    invoke-virtual {v1}, Lcom/kaspersky/kts/antitheft/ActionInfo;->isSms()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
