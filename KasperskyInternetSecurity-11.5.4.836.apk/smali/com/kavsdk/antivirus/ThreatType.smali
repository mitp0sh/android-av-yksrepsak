.class public final enum Lcom/kavsdk/antivirus/ThreatType;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum Adware:Lcom/kavsdk/antivirus/ThreatType;

.field public static final enum Malware:Lcom/kavsdk/antivirus/ThreatType;

.field public static final enum None:Lcom/kavsdk/antivirus/ThreatType;

.field public static final enum Riskware:Lcom/kavsdk/antivirus/ThreatType;

.field public static final enum TrojanBanker:Lcom/kavsdk/antivirus/ThreatType;

.field private static final synthetic a:[Lcom/kavsdk/antivirus/ThreatType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8
    new-instance v0, Lcom/kavsdk/antivirus/ThreatType;

    const-string v1, "None"

    invoke-direct {v0, v1, v2}, Lcom/kavsdk/antivirus/ThreatType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kavsdk/antivirus/ThreatType;->None:Lcom/kavsdk/antivirus/ThreatType;

    .line 9
    new-instance v0, Lcom/kavsdk/antivirus/ThreatType;

    const-string v1, "Malware"

    invoke-direct {v0, v1, v3}, Lcom/kavsdk/antivirus/ThreatType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kavsdk/antivirus/ThreatType;->Malware:Lcom/kavsdk/antivirus/ThreatType;

    .line 10
    new-instance v0, Lcom/kavsdk/antivirus/ThreatType;

    const-string v1, "Riskware"

    invoke-direct {v0, v1, v4}, Lcom/kavsdk/antivirus/ThreatType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kavsdk/antivirus/ThreatType;->Riskware:Lcom/kavsdk/antivirus/ThreatType;

    .line 11
    new-instance v0, Lcom/kavsdk/antivirus/ThreatType;

    const-string v1, "Adware"

    invoke-direct {v0, v1, v5}, Lcom/kavsdk/antivirus/ThreatType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kavsdk/antivirus/ThreatType;->Adware:Lcom/kavsdk/antivirus/ThreatType;

    .line 12
    new-instance v0, Lcom/kavsdk/antivirus/ThreatType;

    const-string v1, "TrojanBanker"

    invoke-direct {v0, v1, v6}, Lcom/kavsdk/antivirus/ThreatType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kavsdk/antivirus/ThreatType;->TrojanBanker:Lcom/kavsdk/antivirus/ThreatType;

    .line 7
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/kavsdk/antivirus/ThreatType;

    sget-object v1, Lcom/kavsdk/antivirus/ThreatType;->None:Lcom/kavsdk/antivirus/ThreatType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/kavsdk/antivirus/ThreatType;->Malware:Lcom/kavsdk/antivirus/ThreatType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kavsdk/antivirus/ThreatType;->Riskware:Lcom/kavsdk/antivirus/ThreatType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/kavsdk/antivirus/ThreatType;->Adware:Lcom/kavsdk/antivirus/ThreatType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/kavsdk/antivirus/ThreatType;->TrojanBanker:Lcom/kavsdk/antivirus/ThreatType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/kavsdk/antivirus/ThreatType;->a:[Lcom/kavsdk/antivirus/ThreatType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kavsdk/antivirus/ThreatType;
    .locals 1

    .prologue
    .line 7
    const-class v0, Lcom/kavsdk/antivirus/ThreatType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kavsdk/antivirus/ThreatType;

    return-object v0
.end method

.method public static values()[Lcom/kavsdk/antivirus/ThreatType;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/kavsdk/antivirus/ThreatType;->a:[Lcom/kavsdk/antivirus/ThreatType;

    invoke-virtual {v0}, [Lcom/kavsdk/antivirus/ThreatType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kavsdk/antivirus/ThreatType;

    return-object v0
.end method
