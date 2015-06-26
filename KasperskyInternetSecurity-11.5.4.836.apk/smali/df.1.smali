.class public final Ldf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lde;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method private a(Lcom/kaspersky/kts/antitheft/KisAtCommandType;Z)V
    .locals 3

    .prologue
    .line 30
    invoke-static {}, Lsr;->e()Lse;

    move-result-object v0

    .line 31
    sget-object v1, Ldg;->a:[I

    invoke-virtual {p1}, Lcom/kaspersky/kts/antitheft/KisAtCommandType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 46
    :goto_0
    invoke-virtual {v0}, Lse;->g_()V

    .line 51
    invoke-static {p1, p2}, Lcom/google/android/apps/analytics/easytracking/GA;->a(Lcom/kaspersky/kts/antitheft/KisAtCommandType;Z)V

    .line 52
    invoke-static {p1, p2}, Ldf;->b(Lcom/kaspersky/kts/antitheft/KisAtCommandType;Z)V

    .line 53
    return-void

    .line 33
    :pswitch_0
    invoke-virtual {v0, p2}, Lse;->a(Z)V

    goto :goto_0

    .line 36
    :pswitch_1
    invoke-virtual {v0, p2}, Lse;->i(Z)V

    goto :goto_0

    .line 39
    :pswitch_2
    invoke-virtual {v0, p2}, Lse;->g(Z)V

    goto :goto_0

    .line 42
    :pswitch_3
    invoke-virtual {v0, p2}, Lse;->b(Z)V

    goto :goto_0

    .line 45
    :pswitch_4
    invoke-virtual {v0, p2}, Lse;->c(Z)V

    goto :goto_0

    .line 31
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static b(Lcom/kaspersky/kts/antitheft/KisAtCommandType;Z)V
    .locals 2

    .prologue
    .line 86
    if-eqz p1, :cond_0

    .line 87
    invoke-static {}, LjJ;->b()Lrx;

    move-result-object v0

    sget-object v1, Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;->CommandEnabled:Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;

    invoke-virtual {v1, p0}, Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;->newEvent(Ljava/lang/Object;)LcT;

    move-result-object v1

    invoke-interface {v0, v1}, Lrx;->a(Lrw;)V

    .line 91
    :goto_0
    return-void

    .line 89
    :cond_0
    invoke-static {}, LjJ;->b()Lrx;

    move-result-object v0

    sget-object v1, Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;->CommandDisabled:Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;

    invoke-virtual {v1, p0}, Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;->newEvent(Ljava/lang/Object;)LcT;

    move-result-object v1

    invoke-interface {v0, v1}, Lrx;->a(Lrw;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Z)V
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/kaspersky/kts/antitheft/KisAtCommandType;->GetDeviceLocation:Lcom/kaspersky/kts/antitheft/KisAtCommandType;

    invoke-direct {p0, v0, p1}, Ldf;->a(Lcom/kaspersky/kts/antitheft/KisAtCommandType;Z)V

    .line 27
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 16
    invoke-static {}, Lsr;->e()Lse;

    move-result-object v0

    invoke-virtual {v0}, Lse;->p()Z

    move-result v0

    return v0
.end method

.method public final b(Z)V
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/kaspersky/kts/antitheft/KisAtCommandType;->GetPhotoFromDevice:Lcom/kaspersky/kts/antitheft/KisAtCommandType;

    invoke-direct {p0, v0, p1}, Ldf;->a(Lcom/kaspersky/kts/antitheft/KisAtCommandType;Z)V

    .line 73
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 21
    invoke-static {}, Lsr;->e()Lse;

    move-result-object v0

    invoke-virtual {v0}, Lse;->e()Z

    move-result v0

    return v0
.end method

.method public final c(Z)V
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/kaspersky/kts/antitheft/KisAtCommandType;->Alarm:Lcom/kaspersky/kts/antitheft/KisAtCommandType;

    invoke-direct {p0, v0, p1}, Ldf;->a(Lcom/kaspersky/kts/antitheft/KisAtCommandType;Z)V

    .line 78
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 57
    invoke-static {}, Lsr;->e()Lse;

    move-result-object v0

    invoke-virtual {v0}, Lse;->o()Z

    move-result v0

    return v0
.end method

.method public final d(Z)V
    .locals 1

    .prologue
    .line 164
    sget-object v0, Lcom/kaspersky/kts/antitheft/KisAtCommandType;->Wipe:Lcom/kaspersky/kts/antitheft/KisAtCommandType;

    invoke-direct {p0, v0, p1}, Ldf;->a(Lcom/kaspersky/kts/antitheft/KisAtCommandType;Z)V

    .line 165
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 67
    invoke-static {}, Lsr;->e()Lse;

    move-result-object v0

    invoke-virtual {v0}, Lse;->f()Z

    move-result v0

    return v0
.end method

.method public final e(Z)V
    .locals 2

    .prologue
    .line 174
    invoke-static {}, Lsr;->e()Lse;

    move-result-object v0

    .line 176
    invoke-virtual {v0, p1}, Lse;->d(Z)V

    .line 177
    if-eqz p1, :cond_0

    .line 178
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lse;->e(Z)V

    .line 180
    :cond_0
    invoke-virtual {v0}, Lse;->g_()V

    .line 182
    if-eqz p1, :cond_1

    .line 183
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->w()Lcom/kms/kmsshared/KMSApplication;

    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->p()V

    .line 186
    :cond_1
    invoke-static {p1}, Lcom/google/android/apps/analytics/easytracking/GA;->k(Z)V

    .line 187
    return-void
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 82
    invoke-static {}, Lsr;->e()Lse;

    move-result-object v0

    invoke-virtual {v0}, Lse;->g()Z

    move-result v0

    return v0
.end method

.method public final f(Z)V
    .locals 1

    .prologue
    .line 196
    invoke-static {}, Lsr;->e()Lse;

    move-result-object v0

    .line 197
    invoke-virtual {v0, p1}, Lse;->e(Z)V

    .line 198
    invoke-virtual {v0}, Lse;->g_()V

    .line 199
    invoke-static {p1}, Lcom/google/android/apps/analytics/easytracking/GA;->l(Z)V

    .line 200
    return-void
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/kaspersky/kts/antitheft/GpsStateNotifier;->b(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 105
    invoke-static {}, Lsr;->e()Lse;

    move-result-object v0

    invoke-virtual {v0}, Lse;->v()Z

    move-result v0

    return v0
.end method

.method public final i()Z
    .locals 4

    .prologue
    .line 117
    invoke-static {}, Lsr;->e()Lse;

    move-result-object v0

    invoke-virtual {v0}, Lse;->j()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    invoke-static {}, Lsr;->e()Lse;

    move-result-object v0

    invoke-virtual {v0}, Lse;->n()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final k()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 142
    invoke-static {}, Lsr;->e()Lse;

    move-result-object v1

    invoke-virtual {v1}, Lse;->q()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final l()V
    .locals 2

    .prologue
    .line 147
    invoke-static {}, Lsr;->e()Lse;

    move-result-object v0

    .line 148
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lse;->c(I)V

    .line 149
    invoke-virtual {v0}, Lse;->g_()V

    .line 150
    return-void
.end method

.method public final m()V
    .locals 2

    .prologue
    .line 154
    invoke-static {}, LjJ;->b()Lrx;

    move-result-object v0

    sget-object v1, Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;->AtCommandStatusesChanged:Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;

    invoke-virtual {v1}, Lcom/kaspersky/kts/antitheft/AntiThiefBusEventType;->newEvent()LcT;

    move-result-object v1

    invoke-interface {v0, v1}, Lrx;->a(Lrw;)V

    .line 155
    return-void
.end method

.method public final n()Z
    .locals 1

    .prologue
    .line 159
    invoke-static {}, Lsr;->e()Lse;

    move-result-object v0

    invoke-virtual {v0}, Lse;->r()Z

    move-result v0

    return v0
.end method

.method public final o()Z
    .locals 1

    .prologue
    .line 191
    invoke-static {}, Lsr;->e()Lse;

    move-result-object v0

    invoke-virtual {v0}, Lse;->i()Z

    move-result v0

    return v0
.end method

.method public final p()Z
    .locals 1

    .prologue
    .line 204
    invoke-static {}, Lsr;->e()Lse;

    move-result-object v0

    invoke-virtual {v0}, Lse;->u()Z

    move-result v0

    return v0
.end method
