.class public Lei;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Led;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method


# virtual methods
.method public final a(Lcom/kaspersky/kts/antitheft/ActionInfo;Ldj;)Lec;
    .locals 3

    .prologue
    .line 54
    invoke-virtual {p0, p1, p2}, Lei;->b(Lcom/kaspersky/kts/antitheft/ActionInfo;Ldj;)Lec;

    move-result-object v0

    .line 55
    if-nez v0, :cond_0

    .line 56
    const/4 v0, 0x0

    .line 65
    :goto_0
    return-object v0

    .line 59
    :cond_0
    invoke-interface {v0}, Lec;->l()Leb;

    move-result-object v1

    .line 60
    invoke-virtual {p1}, Lcom/kaspersky/kts/antitheft/ActionInfo;->getActionId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Leb;->a(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p1}, Lcom/kaspersky/kts/antitheft/ActionInfo;->getActionParams()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Leb;->b(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p1}, Lcom/kaspersky/kts/antitheft/ActionInfo;->getPhone()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Leb;->c(Ljava/lang/String;)V

    .line 63
    invoke-interface {v0, v1}, Lec;->a(Leb;)V

    goto :goto_0
.end method

.method public final a(LdY;)Lec;
    .locals 2

    .prologue
    .line 71
    invoke-virtual {p1}, LdY;->o()Lef;

    move-result-object v0

    invoke-interface {v0}, Lef;->b()Lcom/kaspersky/kts/antitheft/ActionInfo;

    move-result-object v0

    invoke-virtual {p1}, LdY;->j()Ldj;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lei;->b(Lcom/kaspersky/kts/antitheft/ActionInfo;Ldj;)Lec;

    move-result-object v0

    .line 75
    invoke-virtual {p1}, LdY;->n()Len;

    move-result-object v1

    invoke-interface {v0, v1}, Lec;->a(Len;)V

    .line 76
    invoke-virtual {p1}, LdY;->o()Lef;

    move-result-object v1

    invoke-interface {v0, v1}, Lec;->a(Lef;)V

    .line 77
    invoke-virtual {p1}, LdY;->l()Leb;

    move-result-object v1

    invoke-interface {v0, v1}, Lec;->a(Leb;)V

    .line 78
    return-object v0
.end method

.method protected final a(Ldj;I)Lec;
    .locals 2

    .prologue
    .line 41
    invoke-static {}, LdJ;->e()Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    invoke-static {}, Lcom/kms/kmsshared/Utils;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    :cond_0
    new-instance v0, LdO;

    invoke-direct {v0, p1, p2}, LdO;-><init>(Ldj;I)V

    .line 47
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, LdM;

    invoke-direct {v0, p0, p1, p2}, LdM;-><init>(Led;Ldj;I)V

    goto :goto_0
.end method

.method protected b(Lcom/kaspersky/kts/antitheft/ActionInfo;Ldj;)Lec;
    .locals 3

    .prologue
    .line 18
    invoke-virtual {p1}, Lcom/kaspersky/kts/antitheft/ActionInfo;->getActionName()Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;

    move-result-object v1

    .line 20
    sget-object v0, Lej;->a:[I

    invoke-virtual {v1}, Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 35
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 23
    :pswitch_0
    new-instance v0, LeI;

    invoke-direct {v0, v1}, LeI;-><init>(Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;)V

    goto :goto_0

    .line 26
    :pswitch_1
    new-instance v0, Ldy;

    sget-object v1, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Ldy;-><init>(Landroid/content/Context;Ldj;)V

    goto :goto_0

    .line 29
    :pswitch_2
    const/4 v0, 0x5

    invoke-virtual {p0, p2, v0}, Lei;->a(Ldj;I)Lec;

    move-result-object v0

    goto :goto_0

    .line 32
    :pswitch_3
    new-instance v0, Ldt;

    invoke-direct {v0, p2}, Ldt;-><init>(Ldj;)V

    goto :goto_0

    .line 20
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
