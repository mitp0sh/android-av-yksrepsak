.class public final LeF;
.super Lel;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/kaspersky/kts/antitheft/CommandItem;)V
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p1}, Lcom/kaspersky/kts/antitheft/CommandItem;->getActionInfo()Lcom/kaspersky/kts/antitheft/ActionInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lel;-><init>(Lcom/kaspersky/kts/antitheft/ActionInfo;)V

    .line 20
    return-void
.end method

.method private static b(Landroid/location/Location;)Lcom/kaspersky/components/ucp/PositionInfo;
    .locals 19

    .prologue
    .line 83
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    float-to-double v3, v0

    .line 85
    new-instance v0, Lcom/kaspersky/components/ucp/PositionInfo;

    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v1

    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v9

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getSpeed()F

    move-result v7

    float-to-double v15, v7

    const-wide/16 v17, 0x0

    move-wide v7, v3

    move-wide v11, v3

    invoke-direct/range {v0 .. v18}, Lcom/kaspersky/components/ucp/PositionInfo;-><init>(DDDDDDIIDD)V

    .line 87
    return-object v0
.end method

.method private b(I)Lcom/kaspersky/components/ucp/UcpCommandError;
    .locals 2

    .prologue
    .line 44
    packed-switch p1, :pswitch_data_0

    .line 66
    iget-object v0, p0, LeF;->a:Lcom/kaspersky/kts/antitheft/ActionInfo;

    invoke-virtual {v0}, Lcom/kaspersky/kts/antitheft/ActionInfo;->getActionName()Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;

    move-result-object v0

    .line 68
    sget-object v1, LeG;->a:[I

    invoke-virtual {v0}, Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_1

    .line 77
    sget-object v0, Lcom/kaspersky/components/ucp/UcpCommandError;->UnknownError:Lcom/kaspersky/components/ucp/UcpCommandError;

    :goto_0
    return-object v0

    .line 46
    :pswitch_0
    sget-object v0, Lcom/kaspersky/components/ucp/UcpCommandError;->ErrorCommandAlreadyInProgress:Lcom/kaspersky/components/ucp/UcpCommandError;

    goto :goto_0

    .line 48
    :pswitch_1
    sget-object v0, Lcom/kaspersky/components/ucp/UcpCommandError;->ErrorMakingPhotoUploadFailed:Lcom/kaspersky/components/ucp/UcpCommandError;

    goto :goto_0

    .line 50
    :pswitch_2
    sget-object v0, Lcom/kaspersky/components/ucp/UcpCommandError;->ErrorMakingPhoto:Lcom/kaspersky/components/ucp/UcpCommandError;

    goto :goto_0

    .line 52
    :pswitch_3
    sget-object v0, Lcom/kaspersky/components/ucp/UcpCommandError;->ErrorFeatureIsOff:Lcom/kaspersky/components/ucp/UcpCommandError;

    goto :goto_0

    .line 54
    :pswitch_4
    sget-object v0, Lcom/kaspersky/components/ucp/UcpCommandError;->ErrorFeatureIsOff:Lcom/kaspersky/components/ucp/UcpCommandError;

    goto :goto_0

    .line 56
    :pswitch_5
    sget-object v0, Lcom/kaspersky/components/ucp/UcpCommandError;->ErrorCommandNoAdministrativePrivileges:Lcom/kaspersky/components/ucp/UcpCommandError;

    goto :goto_0

    .line 58
    :pswitch_6
    sget-object v0, Lcom/kaspersky/components/ucp/UcpCommandError;->ErrorLicenseExpired:Lcom/kaspersky/components/ucp/UcpCommandError;

    goto :goto_0

    .line 60
    :pswitch_7
    sget-object v0, Lcom/kaspersky/components/ucp/UcpCommandError;->ErrorFindingDeviceCantGetGpsCoords:Lcom/kaspersky/components/ucp/UcpCommandError;

    goto :goto_0

    .line 71
    :pswitch_8
    sget-object v0, Lcom/kaspersky/components/ucp/UcpCommandError;->ErrorWipingData:Lcom/kaspersky/components/ucp/UcpCommandError;

    goto :goto_0

    .line 73
    :pswitch_9
    sget-object v0, Lcom/kaspersky/components/ucp/UcpCommandError;->ErrorFindingDevice:Lcom/kaspersky/components/ucp/UcpCommandError;

    goto :goto_0

    .line 75
    :pswitch_a
    sget-object v0, Lcom/kaspersky/components/ucp/UcpCommandError;->ErrorMakingPhotoUploadFailed:Lcom/kaspersky/components/ucp/UcpCommandError;

    goto :goto_0

    .line 44
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_3
        :pswitch_1
    .end packed-switch

    .line 68
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method


# virtual methods
.method public final a()Lee;
    .locals 2

    .prologue
    .line 34
    new-instance v0, LeE;

    iget-object v1, p0, LeF;->a:Lcom/kaspersky/kts/antitheft/ActionInfo;

    invoke-virtual {v1}, Lcom/kaspersky/kts/antitheft/ActionInfo;->getActionId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, LeE;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final a(I)Lee;
    .locals 3

    .prologue
    .line 29
    new-instance v0, LeE;

    iget-object v1, p0, LeF;->a:Lcom/kaspersky/kts/antitheft/ActionInfo;

    invoke-virtual {v1}, Lcom/kaspersky/kts/antitheft/ActionInfo;->getActionId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1}, LeF;->b(I)Lcom/kaspersky/components/ucp/UcpCommandError;

    move-result-object v2

    invoke-direct {v0, v1, v2}, LeE;-><init>(Ljava/lang/String;Lcom/kaspersky/components/ucp/UcpCommandError;)V

    return-object v0
.end method

.method public final a(Landroid/location/Location;)Lee;
    .locals 3

    .prologue
    .line 24
    new-instance v0, LeB;

    iget-object v1, p0, LeF;->a:Lcom/kaspersky/kts/antitheft/ActionInfo;

    invoke-virtual {v1}, Lcom/kaspersky/kts/antitheft/ActionInfo;->getActionId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, LeF;->b(Landroid/location/Location;)Lcom/kaspersky/components/ucp/PositionInfo;

    move-result-object v2

    invoke-direct {v0, v1, v2}, LeB;-><init>(Ljava/lang/String;Lcom/kaspersky/components/ucp/PositionInfo;)V

    return-object v0
.end method

.method public final a([BI)Lee;
    .locals 2

    .prologue
    .line 39
    new-instance v0, LeC;

    iget-object v1, p0, LeF;->a:Lcom/kaspersky/kts/antitheft/ActionInfo;

    invoke-virtual {v1}, Lcom/kaspersky/kts/antitheft/ActionInfo;->getActionId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, LeC;-><init>(Ljava/lang/String;[BI)V

    return-object v0
.end method
