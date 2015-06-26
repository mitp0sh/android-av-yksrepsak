.class final LcZ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldp;


# instance fields
.field private synthetic a:LcW;


# direct methods
.method private constructor <init>(LcW;)V
    .locals 0

    .prologue
    .line 269
    iput-object p1, p0, LcZ;->a:LcW;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(LcW;B)V
    .locals 0

    .prologue
    .line 269
    invoke-direct {p0, p1}, LcZ;-><init>(LcW;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/kaspersky/kts/antitheft/remoting/ServerErrorException;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 278
    invoke-static {}, Lsr;->e()Lse;

    move-result-object v2

    .line 281
    invoke-virtual {p1}, Lcom/kaspersky/kts/antitheft/remoting/ServerErrorException;->getError()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    move v0, v1

    .line 294
    :goto_0
    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, LcZ;->a:LcW;

    invoke-virtual {v0}, LcW;->a()V

    .line 297
    invoke-virtual {v2, v1}, Lse;->h(Z)V

    .line 298
    invoke-virtual {v2}, Lse;->g_()V

    .line 300
    iget-object v0, p0, LcZ;->a:LcW;

    const-string v1, "at_requests.dat"

    invoke-static {v0, v1}, LcW;->a(LcW;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 301
    iget-object v0, p0, LcZ;->a:LcW;

    const-string v1, "at_commands.dat"

    invoke-static {v0, v1}, LcW;->a(LcW;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 303
    :cond_0
    return-void

    .line 283
    :sswitch_0
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lse;->a(Ljava/lang/Long;)V

    .line 284
    invoke-static {}, LjJ;->b()Lrx;

    move-result-object v3

    sget-object v4, Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;->AccountExpired:Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;

    invoke-virtual {v4}, Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;->newEvent()LcT;

    move-result-object v4

    invoke-interface {v3, v4}, Lrx;->a(Lrw;)V

    goto :goto_0

    .line 288
    :sswitch_1
    invoke-virtual {v2, v0}, Lse;->j(Z)V

    .line 289
    invoke-static {}, LjJ;->b()Lrx;

    move-result-object v3

    sget-object v4, Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;->InvalidRegistrationData:Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;

    invoke-virtual {v4}, Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;->newEvent()LcT;

    move-result-object v4

    invoke-interface {v3, v4}, Lrx;->a(Lrw;)V

    goto :goto_0

    .line 281
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0xc -> :sswitch_0
    .end sparse-switch
.end method
