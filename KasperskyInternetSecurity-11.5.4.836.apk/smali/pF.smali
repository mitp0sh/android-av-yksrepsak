.class final LpF;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrz;


# instance fields
.field private synthetic a:LpB;


# direct methods
.method private constructor <init>(LpB;)V
    .locals 0

    .prologue
    .line 341
    iput-object p1, p0, LpF;->a:LpB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(LpB;B)V
    .locals 0

    .prologue
    .line 341
    invoke-direct {p0, p1}, LpF;-><init>(LpB;)V

    return-void
.end method

.method private a(LcT;)V
    .locals 3

    .prologue
    .line 345
    sget-object v1, LpC;->f:[I

    invoke-virtual {p1}, LcT;->n()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;

    invoke-virtual {v0}, Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 367
    :goto_0
    return-void

    .line 348
    :pswitch_0
    iget-object v0, p0, LpF;->a:LpB;

    invoke-static {v0}, LpB;->a(LpB;)V

    goto :goto_0

    .line 351
    :pswitch_1
    iget-object v0, p0, LpF;->a:LpB;

    sget-object v1, Lpb;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, LpB;->a(LpB;Ljava/lang/String;Lps;)V

    goto :goto_0

    .line 354
    :pswitch_2
    iget-object v0, p0, LpF;->a:LpB;

    sget-object v1, Lpa;->a:Ljava/lang/String;

    invoke-static {}, Lpa;->a()Lpa;

    move-result-object v2

    invoke-static {v0, v1, v2}, LpB;->a(LpB;Ljava/lang/String;Lps;)V

    goto :goto_0

    .line 357
    :pswitch_3
    iget-object v0, p0, LpF;->a:LpB;

    sget-object v1, Lpc;->a:Ljava/lang/String;

    invoke-static {}, Lpc;->a()Lpc;

    move-result-object v2

    invoke-static {v0, v1, v2}, LpB;->a(LpB;Ljava/lang/String;Lps;)V

    goto :goto_0

    .line 360
    :pswitch_4
    iget-object v0, p0, LpF;->a:LpB;

    sget-object v1, Lpb;->a:Ljava/lang/String;

    invoke-static {}, Lpb;->a()Lpb;

    move-result-object v2

    invoke-static {v0, v1, v2}, LpB;->a(LpB;Ljava/lang/String;Lps;)V

    goto :goto_0

    .line 363
    :pswitch_5
    iget-object v0, p0, LpF;->a:LpB;

    invoke-virtual {p1}, LcT;->b()Lcom/kaspersky/kts/antitheft/KisAtCommandType;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, LpB;->a(LpB;Lcom/kaspersky/kts/antitheft/KisAtCommandType;Z)V

    goto :goto_0

    .line 366
    :pswitch_6
    iget-object v0, p0, LpF;->a:LpB;

    invoke-virtual {p1}, LcT;->a()Lcom/kaspersky/kts/antitheft/KisAtCommandType;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, LpB;->a(LpB;Lcom/kaspersky/kts/antitheft/KisAtCommandType;Z)V

    goto :goto_0

    .line 345
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public final bridge synthetic a(Lrw;)V
    .locals 0

    .prologue
    .line 341
    check-cast p1, LcT;

    invoke-direct {p0, p1}, LpF;->a(LcT;)V

    return-void
.end method
