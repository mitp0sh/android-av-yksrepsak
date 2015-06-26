.class public final enum Lcom/kavsdk/antivirus/SuspiciousThreatType;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum BankCredential:Lcom/kavsdk/antivirus/SuspiciousThreatType;

.field public static final enum BankSms:Lcom/kavsdk/antivirus/SuspiciousThreatType;

.field public static final enum CanRootDevice:Lcom/kavsdk/antivirus/SuspiciousThreatType;

.field public static final enum DeviceAdmin:Lcom/kavsdk/antivirus/SuspiciousThreatType;

.field public static final enum ReadSms:Lcom/kavsdk/antivirus/SuspiciousThreatType;

.field public static final enum ReceiveSms:Lcom/kavsdk/antivirus/SuspiciousThreatType;

.field public static final enum ScreenCapture:Lcom/kavsdk/antivirus/SuspiciousThreatType;

.field public static final enum SendSms:Lcom/kavsdk/antivirus/SuspiciousThreatType;

.field public static final enum WriteSms:Lcom/kavsdk/antivirus/SuspiciousThreatType;

.field private static final synthetic a:[Lcom/kavsdk/antivirus/SuspiciousThreatType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 8
    new-instance v0, Lcom/kavsdk/antivirus/SuspiciousThreatType;

    const-string v1, "BankCredential"

    invoke-direct {v0, v1, v3}, Lcom/kavsdk/antivirus/SuspiciousThreatType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kavsdk/antivirus/SuspiciousThreatType;->BankCredential:Lcom/kavsdk/antivirus/SuspiciousThreatType;

    .line 9
    new-instance v0, Lcom/kavsdk/antivirus/SuspiciousThreatType;

    const-string v1, "BankSms"

    invoke-direct {v0, v1, v4}, Lcom/kavsdk/antivirus/SuspiciousThreatType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kavsdk/antivirus/SuspiciousThreatType;->BankSms:Lcom/kavsdk/antivirus/SuspiciousThreatType;

    .line 10
    new-instance v0, Lcom/kavsdk/antivirus/SuspiciousThreatType;

    const-string v1, "ScreenCapture"

    invoke-direct {v0, v1, v5}, Lcom/kavsdk/antivirus/SuspiciousThreatType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kavsdk/antivirus/SuspiciousThreatType;->ScreenCapture:Lcom/kavsdk/antivirus/SuspiciousThreatType;

    .line 11
    new-instance v0, Lcom/kavsdk/antivirus/SuspiciousThreatType;

    const-string v1, "ReceiveSms"

    invoke-direct {v0, v1, v6}, Lcom/kavsdk/antivirus/SuspiciousThreatType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kavsdk/antivirus/SuspiciousThreatType;->ReceiveSms:Lcom/kavsdk/antivirus/SuspiciousThreatType;

    .line 12
    new-instance v0, Lcom/kavsdk/antivirus/SuspiciousThreatType;

    const-string v1, "ReadSms"

    invoke-direct {v0, v1, v7}, Lcom/kavsdk/antivirus/SuspiciousThreatType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kavsdk/antivirus/SuspiciousThreatType;->ReadSms:Lcom/kavsdk/antivirus/SuspiciousThreatType;

    .line 13
    new-instance v0, Lcom/kavsdk/antivirus/SuspiciousThreatType;

    const-string v1, "WriteSms"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/kavsdk/antivirus/SuspiciousThreatType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kavsdk/antivirus/SuspiciousThreatType;->WriteSms:Lcom/kavsdk/antivirus/SuspiciousThreatType;

    .line 14
    new-instance v0, Lcom/kavsdk/antivirus/SuspiciousThreatType;

    const-string v1, "SendSms"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/kavsdk/antivirus/SuspiciousThreatType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kavsdk/antivirus/SuspiciousThreatType;->SendSms:Lcom/kavsdk/antivirus/SuspiciousThreatType;

    .line 15
    new-instance v0, Lcom/kavsdk/antivirus/SuspiciousThreatType;

    const-string v1, "DeviceAdmin"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/kavsdk/antivirus/SuspiciousThreatType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kavsdk/antivirus/SuspiciousThreatType;->DeviceAdmin:Lcom/kavsdk/antivirus/SuspiciousThreatType;

    .line 16
    new-instance v0, Lcom/kavsdk/antivirus/SuspiciousThreatType;

    const-string v1, "CanRootDevice"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/kavsdk/antivirus/SuspiciousThreatType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kavsdk/antivirus/SuspiciousThreatType;->CanRootDevice:Lcom/kavsdk/antivirus/SuspiciousThreatType;

    .line 7
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/kavsdk/antivirus/SuspiciousThreatType;

    sget-object v1, Lcom/kavsdk/antivirus/SuspiciousThreatType;->BankCredential:Lcom/kavsdk/antivirus/SuspiciousThreatType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kavsdk/antivirus/SuspiciousThreatType;->BankSms:Lcom/kavsdk/antivirus/SuspiciousThreatType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/kavsdk/antivirus/SuspiciousThreatType;->ScreenCapture:Lcom/kavsdk/antivirus/SuspiciousThreatType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/kavsdk/antivirus/SuspiciousThreatType;->ReceiveSms:Lcom/kavsdk/antivirus/SuspiciousThreatType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/kavsdk/antivirus/SuspiciousThreatType;->ReadSms:Lcom/kavsdk/antivirus/SuspiciousThreatType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/kavsdk/antivirus/SuspiciousThreatType;->WriteSms:Lcom/kavsdk/antivirus/SuspiciousThreatType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/kavsdk/antivirus/SuspiciousThreatType;->SendSms:Lcom/kavsdk/antivirus/SuspiciousThreatType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/kavsdk/antivirus/SuspiciousThreatType;->DeviceAdmin:Lcom/kavsdk/antivirus/SuspiciousThreatType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/kavsdk/antivirus/SuspiciousThreatType;->CanRootDevice:Lcom/kavsdk/antivirus/SuspiciousThreatType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/kavsdk/antivirus/SuspiciousThreatType;->a:[Lcom/kavsdk/antivirus/SuspiciousThreatType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kavsdk/antivirus/SuspiciousThreatType;
    .locals 1

    .prologue
    .line 7
    const-class v0, Lcom/kavsdk/antivirus/SuspiciousThreatType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kavsdk/antivirus/SuspiciousThreatType;

    return-object v0
.end method

.method public static values()[Lcom/kavsdk/antivirus/SuspiciousThreatType;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/kavsdk/antivirus/SuspiciousThreatType;->a:[Lcom/kavsdk/antivirus/SuspiciousThreatType;

    invoke-virtual {v0}, [Lcom/kavsdk/antivirus/SuspiciousThreatType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kavsdk/antivirus/SuspiciousThreatType;

    return-object v0
.end method
