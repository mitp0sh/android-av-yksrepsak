.class public final Let;
.super Lei;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lei;-><init>()V

    .line 45
    return-void
.end method


# virtual methods
.method protected final b(Lcom/kaspersky/kts/antitheft/ActionInfo;Ldj;)Lec;
    .locals 3

    .prologue
    .line 26
    invoke-virtual {p1}, Lcom/kaspersky/kts/antitheft/ActionInfo;->getActionName()Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;

    move-result-object v1

    .line 27
    sget-object v0, Leu;->a:[I

    invoke-virtual {v1}, Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 45
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 29
    :pswitch_0
    new-instance v0, Ldx;

    invoke-direct {v0}, Ldx;-><init>()V

    goto :goto_0

    .line 33
    :pswitch_1
    new-instance v0, LeI;

    invoke-direct {v0, v1}, LeI;-><init>(Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;)V

    goto :goto_0

    .line 36
    :pswitch_2
    new-instance v0, Ldy;

    sget-object v1, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Ldy;-><init>(Landroid/content/Context;Ldj;)V

    goto :goto_0

    .line 39
    :pswitch_3
    new-instance v0, Ldt;

    invoke-direct {v0, p2}, Ldt;-><init>(Ldj;)V

    goto :goto_0

    .line 27
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
