.class public final enum Lcom/kaspersky/kts/antitheft/KisAtCommandType;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum Alarm:Lcom/kaspersky/kts/antitheft/KisAtCommandType;

.field public static final enum BlockDevice:Lcom/kaspersky/kts/antitheft/KisAtCommandType;

.field public static final enum GetDeviceLocation:Lcom/kaspersky/kts/antitheft/KisAtCommandType;

.field public static final enum GetPhotoFromDevice:Lcom/kaspersky/kts/antitheft/KisAtCommandType;

.field public static final enum Wipe:Lcom/kaspersky/kts/antitheft/KisAtCommandType;

.field private static final synthetic a:[Lcom/kaspersky/kts/antitheft/KisAtCommandType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/kaspersky/kts/antitheft/KisAtCommandType;

    const-string v1, "BlockDevice"

    invoke-direct {v0, v1, v2}, Lcom/kaspersky/kts/antitheft/KisAtCommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaspersky/kts/antitheft/KisAtCommandType;->BlockDevice:Lcom/kaspersky/kts/antitheft/KisAtCommandType;

    .line 5
    new-instance v0, Lcom/kaspersky/kts/antitheft/KisAtCommandType;

    const-string v1, "Wipe"

    invoke-direct {v0, v1, v3}, Lcom/kaspersky/kts/antitheft/KisAtCommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaspersky/kts/antitheft/KisAtCommandType;->Wipe:Lcom/kaspersky/kts/antitheft/KisAtCommandType;

    .line 6
    new-instance v0, Lcom/kaspersky/kts/antitheft/KisAtCommandType;

    const-string v1, "GetPhotoFromDevice"

    invoke-direct {v0, v1, v4}, Lcom/kaspersky/kts/antitheft/KisAtCommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaspersky/kts/antitheft/KisAtCommandType;->GetPhotoFromDevice:Lcom/kaspersky/kts/antitheft/KisAtCommandType;

    .line 7
    new-instance v0, Lcom/kaspersky/kts/antitheft/KisAtCommandType;

    const-string v1, "Alarm"

    invoke-direct {v0, v1, v5}, Lcom/kaspersky/kts/antitheft/KisAtCommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaspersky/kts/antitheft/KisAtCommandType;->Alarm:Lcom/kaspersky/kts/antitheft/KisAtCommandType;

    .line 8
    new-instance v0, Lcom/kaspersky/kts/antitheft/KisAtCommandType;

    const-string v1, "GetDeviceLocation"

    invoke-direct {v0, v1, v6}, Lcom/kaspersky/kts/antitheft/KisAtCommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaspersky/kts/antitheft/KisAtCommandType;->GetDeviceLocation:Lcom/kaspersky/kts/antitheft/KisAtCommandType;

    .line 3
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/kaspersky/kts/antitheft/KisAtCommandType;

    sget-object v1, Lcom/kaspersky/kts/antitheft/KisAtCommandType;->BlockDevice:Lcom/kaspersky/kts/antitheft/KisAtCommandType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/kaspersky/kts/antitheft/KisAtCommandType;->Wipe:Lcom/kaspersky/kts/antitheft/KisAtCommandType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kaspersky/kts/antitheft/KisAtCommandType;->GetPhotoFromDevice:Lcom/kaspersky/kts/antitheft/KisAtCommandType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/kaspersky/kts/antitheft/KisAtCommandType;->Alarm:Lcom/kaspersky/kts/antitheft/KisAtCommandType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/kaspersky/kts/antitheft/KisAtCommandType;->GetDeviceLocation:Lcom/kaspersky/kts/antitheft/KisAtCommandType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/kaspersky/kts/antitheft/KisAtCommandType;->a:[Lcom/kaspersky/kts/antitheft/KisAtCommandType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kaspersky/kts/antitheft/KisAtCommandType;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/kaspersky/kts/antitheft/KisAtCommandType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kaspersky/kts/antitheft/KisAtCommandType;

    return-object v0
.end method

.method public static values()[Lcom/kaspersky/kts/antitheft/KisAtCommandType;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/kaspersky/kts/antitheft/KisAtCommandType;->a:[Lcom/kaspersky/kts/antitheft/KisAtCommandType;

    invoke-virtual {v0}, [Lcom/kaspersky/kts/antitheft/KisAtCommandType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kaspersky/kts/antitheft/KisAtCommandType;

    return-object v0
.end method
