.class public final enum Lcom/kavsdk/shared/SdkUtils$DeviceType;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum Phone:Lcom/kavsdk/shared/SdkUtils$DeviceType;

.field public static final enum Tablet:Lcom/kavsdk/shared/SdkUtils$DeviceType;

.field public static final enum Unknown:Lcom/kavsdk/shared/SdkUtils$DeviceType;

.field private static final synthetic a:[Lcom/kavsdk/shared/SdkUtils$DeviceType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 434
    new-instance v0, Lcom/kavsdk/shared/SdkUtils$DeviceType;

    const-string v1, "Unknown"

    invoke-direct {v0, v1, v2}, Lcom/kavsdk/shared/SdkUtils$DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kavsdk/shared/SdkUtils$DeviceType;->Unknown:Lcom/kavsdk/shared/SdkUtils$DeviceType;

    .line 435
    new-instance v0, Lcom/kavsdk/shared/SdkUtils$DeviceType;

    const-string v1, "Phone"

    invoke-direct {v0, v1, v3}, Lcom/kavsdk/shared/SdkUtils$DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kavsdk/shared/SdkUtils$DeviceType;->Phone:Lcom/kavsdk/shared/SdkUtils$DeviceType;

    .line 436
    new-instance v0, Lcom/kavsdk/shared/SdkUtils$DeviceType;

    const-string v1, "Tablet"

    invoke-direct {v0, v1, v4}, Lcom/kavsdk/shared/SdkUtils$DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kavsdk/shared/SdkUtils$DeviceType;->Tablet:Lcom/kavsdk/shared/SdkUtils$DeviceType;

    .line 433
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/kavsdk/shared/SdkUtils$DeviceType;

    sget-object v1, Lcom/kavsdk/shared/SdkUtils$DeviceType;->Unknown:Lcom/kavsdk/shared/SdkUtils$DeviceType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/kavsdk/shared/SdkUtils$DeviceType;->Phone:Lcom/kavsdk/shared/SdkUtils$DeviceType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kavsdk/shared/SdkUtils$DeviceType;->Tablet:Lcom/kavsdk/shared/SdkUtils$DeviceType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/kavsdk/shared/SdkUtils$DeviceType;->a:[Lcom/kavsdk/shared/SdkUtils$DeviceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 433
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kavsdk/shared/SdkUtils$DeviceType;
    .locals 1

    .prologue
    .line 433
    const-class v0, Lcom/kavsdk/shared/SdkUtils$DeviceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kavsdk/shared/SdkUtils$DeviceType;

    return-object v0
.end method

.method public static values()[Lcom/kavsdk/shared/SdkUtils$DeviceType;
    .locals 1

    .prologue
    .line 433
    sget-object v0, Lcom/kavsdk/shared/SdkUtils$DeviceType;->a:[Lcom/kavsdk/shared/SdkUtils$DeviceType;

    invoke-virtual {v0}, [Lcom/kavsdk/shared/SdkUtils$DeviceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kavsdk/shared/SdkUtils$DeviceType;

    return-object v0
.end method
