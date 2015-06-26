.class public final enum Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum Alarm:Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;

.field public static final enum BlockDevice:Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;

.field public static final enum GetDeviceLocation:Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;

.field public static final enum GetPhotoFromDevice:Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;

.field public static final enum HardReset:Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;

.field public static final enum SoftReset:Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;

.field public static final enum Unknown:Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;

.field private static final synthetic a:[Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4
    new-instance v0, Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;

    const-string v1, "BlockDevice"

    invoke-direct {v0, v1, v3}, Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;->BlockDevice:Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;

    .line 5
    new-instance v0, Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;

    const-string v1, "HardReset"

    invoke-direct {v0, v1, v4}, Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;->HardReset:Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;

    .line 6
    new-instance v0, Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;

    const-string v1, "SoftReset"

    invoke-direct {v0, v1, v5}, Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;->SoftReset:Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;

    .line 7
    new-instance v0, Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;

    const-string v1, "GetDeviceLocation"

    invoke-direct {v0, v1, v6}, Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;->GetDeviceLocation:Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;

    .line 8
    new-instance v0, Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;

    const-string v1, "GetPhotoFromDevice"

    invoke-direct {v0, v1, v7}, Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;->GetPhotoFromDevice:Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;

    .line 9
    new-instance v0, Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;

    const-string v1, "Alarm"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;->Alarm:Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;

    .line 10
    new-instance v0, Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;

    const-string v1, "Unknown"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;->Unknown:Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;

    .line 3
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;

    sget-object v1, Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;->BlockDevice:Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;->HardReset:Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;->SoftReset:Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;->GetDeviceLocation:Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;->GetPhotoFromDevice:Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;->Alarm:Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;->Unknown:Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;->a:[Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;

    return-object v0
.end method

.method public static values()[Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;->a:[Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;

    invoke-virtual {v0}, [Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;

    return-object v0
.end method
