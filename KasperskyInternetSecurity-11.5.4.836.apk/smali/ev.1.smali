.class public final Lev;
.super Lel;
.source "SourceFile"


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;


# direct methods
.method public constructor <init>(Lcom/kaspersky/kts/antitheft/CommandItem;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p1}, Lcom/kaspersky/kts/antitheft/CommandItem;->getActionInfo()Lcom/kaspersky/kts/antitheft/ActionInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lel;-><init>(Lcom/kaspersky/kts/antitheft/ActionInfo;)V

    .line 29
    iput-object p2, p0, Lev;->b:Landroid/content/Context;

    .line 30
    invoke-virtual {p1}, Lcom/kaspersky/kts/antitheft/CommandItem;->getActionInfo()Lcom/kaspersky/kts/antitheft/ActionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kaspersky/kts/antitheft/ActionInfo;->getActionName()Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;

    move-result-object v0

    iput-object v0, p0, Lev;->c:Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;

    .line 31
    return-void
.end method


# virtual methods
.method public final a()Lee;
    .locals 4

    .prologue
    .line 109
    sget-object v0, Lew;->a:[I

    iget-object v1, p0, Lev;->c:Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;

    invoke-virtual {v1}, Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 123
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t expect!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :pswitch_1
    const v0, 0x7f070174

    .line 127
    :goto_0
    iget-object v1, p0, Lev;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 129
    new-instance v1, Leo;

    iget-object v2, p0, Lev;->a:Lcom/kaspersky/kts/antitheft/ActionInfo;

    invoke-virtual {v2}, Lcom/kaspersky/kts/antitheft/ActionInfo;->getActionId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lev;->a:Lcom/kaspersky/kts/antitheft/ActionInfo;

    invoke-virtual {v3}, Lcom/kaspersky/kts/antitheft/ActionInfo;->getPhone()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Leo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 116
    :pswitch_2
    const v0, 0x7f070176

    .line 117
    goto :goto_0

    .line 120
    :pswitch_3
    const v0, 0x7f070216

    .line 121
    goto :goto_0

    .line 109
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final a(I)Lee;
    .locals 4

    .prologue
    const v0, 0x7f070175

    .line 67
    sparse-switch p1, :sswitch_data_0

    .line 98
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unknown error!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :sswitch_0
    const v0, 0x7f070182

    move v1, v0

    .line 101
    :goto_0
    const/4 v0, 0x0

    .line 102
    if-eqz v1, :cond_0

    .line 103
    iget-object v0, p0, Lev;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 104
    :cond_0
    new-instance v1, Leo;

    iget-object v2, p0, Lev;->a:Lcom/kaspersky/kts/antitheft/ActionInfo;

    invoke-virtual {v2}, Lcom/kaspersky/kts/antitheft/ActionInfo;->getActionId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lev;->a:Lcom/kaspersky/kts/antitheft/ActionInfo;

    invoke-virtual {v3}, Lcom/kaspersky/kts/antitheft/ActionInfo;->getPhone()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Leo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 74
    :sswitch_1
    sget-object v1, Lew;->a:[I

    iget-object v2, p0, Lev;->c:Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;

    invoke-virtual {v2}, Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 91
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not allowed command!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    move v1, v0

    .line 77
    goto :goto_0

    .line 79
    :pswitch_1
    const v0, 0x7f070215

    move v1, v0

    .line 80
    goto :goto_0

    .line 82
    :pswitch_2
    const v0, 0x7f0701ae

    move v1, v0

    .line 83
    goto :goto_0

    .line 85
    :pswitch_3
    const v0, 0x7f070183

    move v1, v0

    .line 86
    goto :goto_0

    .line 88
    :pswitch_4
    const v0, 0x7f070177

    move v1, v0

    .line 89
    goto :goto_0

    :sswitch_2
    move v1, v0

    .line 96
    goto :goto_0

    .line 67
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x8 -> :sswitch_0
        0xa -> :sswitch_2
    .end sparse-switch

    .line 74
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final a(Landroid/location/Location;)Lee;
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 36
    iget-object v0, p0, Lev;->b:Landroid/content/Context;

    const v1, 0x7f070181

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 37
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 38
    :cond_0
    const-string v0, "Phone coordinates: latitude - %.6f, longitude - %.6f"

    .line 40
    :cond_1
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v2, v11, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v10

    invoke-static {v1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 45
    iget-object v1, p0, Lev;->a:Lcom/kaspersky/kts/antitheft/ActionInfo;

    invoke-virtual {v1}, Lcom/kaspersky/kts/antitheft/ActionInfo;->getActionId()Ljava/lang/String;

    move-result-object v1

    .line 46
    new-instance v2, Leo;

    iget-object v3, p0, Lev;->a:Lcom/kaspersky/kts/antitheft/ActionInfo;

    invoke-virtual {v3}, Lcom/kaspersky/kts/antitheft/ActionInfo;->getPhone()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3, v0}, Leo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-static {}, Lsr;->e()Lse;

    move-result-object v0

    invoke-virtual {v0}, Lse;->c()Ljava/lang/String;

    move-result-object v3

    .line 50
    invoke-static {v3}, Lra;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 52
    iget-object v0, p0, Lev;->b:Landroid/content/Context;

    const v4, 0x7f0701f1

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 53
    invoke-static {v0}, Lra;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 54
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 56
    :cond_2
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v5, "SMS-Find:%.6f,%.6f;%s;%s"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v6, v10

    aput-object v3, v6, v11

    const/4 v3, 0x3

    aput-object v0, v6, v3

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 58
    new-instance v3, Leo;

    iget-object v4, p0, Lev;->b:Landroid/content/Context;

    const v5, 0x7f0706a7

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4, v0}, Leo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Leo;->a(Leo;)V

    .line 62
    :cond_3
    return-object v2
.end method

.method public final a([BI)Lee;
    .locals 2

    .prologue
    .line 134
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t send sms report for mugshot!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
