.class public final Ley;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaT;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 39
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->s()LcW;

    move-result-object v0

    .line 40
    if-eqz v0, :cond_0

    invoke-virtual {v0}, LcW;->e()Z

    move-result v1

    if-nez v1, :cond_1

    .line 55
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    iget-object v1, p0, Ley;->b:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 46
    const-string v0, "KMS-ANTI-THIEF"

    const-string v1, "Get dublicated alarm command"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 50
    :cond_2
    iput-object p1, p0, Ley;->b:Ljava/lang/String;

    .line 52
    new-instance v1, Lcom/kaspersky/kts/antitheft/ucp/UcpAction;

    sget-object v2, Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;->BlockDevice:Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;

    invoke-direct {v1, p1, v2}, Lcom/kaspersky/kts/antitheft/ucp/UcpAction;-><init>(Ljava/lang/String;Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;)V

    .line 53
    invoke-virtual {v1, p2}, Lcom/kaspersky/kts/antitheft/ActionInfo;->setActionParams(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v0, v1}, LcW;->a(Lcom/kaspersky/kts/antitheft/ActionInfo;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .prologue
    .line 81
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->s()LcW;

    move-result-object v9

    .line 82
    if-eqz v9, :cond_0

    invoke-virtual {v9}, LcW;->e()Z

    move-result v1

    if-nez v1, :cond_1

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    iget-object v1, p0, Ley;->d:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 88
    const-string v1, "KMS-ANTI-THIEF"

    const-string v2, "Get dublicated mugshot command"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 92
    :cond_2
    iput-object p1, p0, Ley;->d:Ljava/lang/String;

    .line 95
    const-string v1, "KMS-ANTI-THIEF"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "storageUri="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const-string v1, "KMS-ANTI-THIEF"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "accessKeyId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const-string v1, "KMS-ANTI-THIEF"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "secretAccessKey="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const-string v1, "KMS-ANTI-THIEF"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sessionToken="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-static {p4}, Lex;->a(Ljava/lang/String;)Lex;

    move-result-object v2

    .line 102
    new-instance v1, Lcom/kaspersky/kts/antitheft/ucp/MugshotUcpAction;

    invoke-virtual {v2}, Lex;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lex;->a()Ljava/lang/String;

    move-result-object v5

    move-object v2, p1

    move v3, p3

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/kaspersky/kts/antitheft/ucp/MugshotUcpAction;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-virtual {v1, p2}, Lcom/kaspersky/kts/antitheft/ActionInfo;->setActionParams(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v9, v1}, LcW;->a(Lcom/kaspersky/kts/antitheft/ActionInfo;)V

    goto/16 :goto_0
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 20
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->s()LcW;

    move-result-object v1

    .line 21
    if-eqz v1, :cond_0

    invoke-virtual {v1}, LcW;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 35
    :cond_0
    :goto_0
    return-void

    .line 25
    :cond_1
    iget-object v0, p0, Ley;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 27
    const-string v0, "KMS-ANTI-THIEF"

    const-string v1, "Get dublicated wipe command"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 31
    :cond_2
    iput-object p1, p0, Ley;->a:Ljava/lang/String;

    .line 33
    new-instance v2, Lcom/kaspersky/kts/antitheft/ucp/UcpAction;

    if-eqz p2, :cond_3

    sget-object v0, Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;->HardReset:Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;

    :goto_1
    invoke-direct {v2, p1, v0}, Lcom/kaspersky/kts/antitheft/ucp/UcpAction;-><init>(Ljava/lang/String;Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;)V

    .line 34
    invoke-virtual {v1, v2}, LcW;->a(Lcom/kaspersky/kts/antitheft/ActionInfo;)V

    goto :goto_0

    .line 33
    :cond_3
    sget-object v0, Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;->SoftReset:Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;

    goto :goto_1
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 59
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->s()LcW;

    move-result-object v0

    .line 60
    if-eqz v0, :cond_0

    invoke-virtual {v0}, LcW;->e()Z

    move-result v1

    if-nez v1, :cond_1

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    iget-object v1, p0, Ley;->c:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 66
    const-string v0, "KMS-ANTI-THIEF"

    const-string v1, "Get dublicated find command"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 70
    :cond_2
    iput-object p1, p0, Ley;->c:Ljava/lang/String;

    .line 72
    new-instance v1, Lcom/kaspersky/kts/antitheft/ucp/UcpAction;

    sget-object v2, Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;->GetDeviceLocation:Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;

    invoke-direct {v1, p1, v2}, Lcom/kaspersky/kts/antitheft/ucp/UcpAction;-><init>(Ljava/lang/String;Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;)V

    .line 73
    invoke-virtual {v1, p2}, Lcom/kaspersky/kts/antitheft/ActionInfo;->setActionParams(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v0, v1}, LcW;->a(Lcom/kaspersky/kts/antitheft/ActionInfo;)V

    goto :goto_0
.end method
