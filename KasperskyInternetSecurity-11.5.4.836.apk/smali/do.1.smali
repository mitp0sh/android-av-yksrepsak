.class public final Ldo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/kaspersky/kts/antitheft/remoting/CommandManager;

.field private b:LaU;


# direct methods
.method public constructor <init>(Lcom/kaspersky/kts/antitheft/remoting/CommandManager;LaU;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Ldo;->a:Lcom/kaspersky/kts/antitheft/remoting/CommandManager;

    .line 31
    iput-object p2, p0, Ldo;->b:LaU;

    .line 32
    return-void
.end method


# virtual methods
.method public final a(Lcom/kaspersky/kts/antitheft/CommandItem;)Ldn;
    .locals 5

    .prologue
    .line 46
    invoke-virtual {p1}, Lcom/kaspersky/kts/antitheft/CommandItem;->getActionInfo()Lcom/kaspersky/kts/antitheft/ActionInfo;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lcom/kaspersky/kts/antitheft/ActionInfo;->isSms()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    new-instance v1, Lep;

    invoke-direct {v1}, Lep;-><init>()V

    .line 49
    new-instance v2, Lev;

    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    invoke-direct {v2, p1, v0}, Lev;-><init>(Lcom/kaspersky/kts/antitheft/CommandItem;Landroid/content/Context;)V

    .line 50
    new-instance v0, Let;

    invoke-direct {v0}, Let;-><init>()V

    .line 65
    :goto_0
    new-instance v3, Ldn;

    invoke-direct {v3, v0, v1, v2}, Ldn;-><init>(Led;Len;Lef;)V

    return-object v3

    .line 51
    :cond_0
    invoke-static {}, Lsr;->e()Lse;

    move-result-object v1

    invoke-virtual {v1}, Lse;->m()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 52
    new-instance v1, Lem;

    iget-object v0, p0, Ldo;->a:Lcom/kaspersky/kts/antitheft/remoting/CommandManager;

    invoke-direct {v1, v0}, Lem;-><init>(Lcom/kaspersky/kts/antitheft/remoting/CommandManager;)V

    .line 53
    new-instance v2, Leq;

    invoke-direct {v2, p1}, Leq;-><init>(Lcom/kaspersky/kts/antitheft/CommandItem;)V

    .line 54
    new-instance v0, Lei;

    invoke-direct {v0}, Lei;-><init>()V

    goto :goto_0

    .line 56
    :cond_1
    invoke-virtual {v0}, Lcom/kaspersky/kts/antitheft/ActionInfo;->getActionName()Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;

    move-result-object v1

    sget-object v2, Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;->GetPhotoFromDevice:Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;

    if-ne v1, v2, :cond_2

    .line 57
    new-instance v1, LeD;

    check-cast v0, Lcom/kaspersky/kts/antitheft/ucp/MugshotUcpAction;

    iget-object v2, p0, Ldo;->b:LaU;

    invoke-direct {v1, v0, v2}, LeD;-><init>(Lcom/kaspersky/kts/antitheft/ucp/MugshotUcpAction;LaU;)V

    move-object v0, v1

    .line 62
    :goto_1
    new-instance v2, LeF;

    invoke-direct {v2, p1}, LeF;-><init>(Lcom/kaspersky/kts/antitheft/CommandItem;)V

    .line 63
    new-instance v1, Lez;

    invoke-direct {v1}, Lez;-><init>()V

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_0

    .line 59
    :cond_2
    new-instance v1, LeH;

    check-cast v0, Lcom/kaspersky/kts/antitheft/ucp/UcpAction;

    iget-object v2, p0, Ldo;->b:LaU;

    invoke-direct {v1, v0, v2}, LeH;-><init>(Lcom/kaspersky/kts/antitheft/ucp/UcpAction;LaU;)V

    move-object v0, v1

    goto :goto_1
.end method

.method public final a(LaU;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Ldo;->b:LaU;

    .line 40
    return-void
.end method
