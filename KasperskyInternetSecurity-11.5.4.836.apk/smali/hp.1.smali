.class public final Lhp;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:[Lcom/kavsdk/antivirus/SuspiciousThreatType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 28
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "sms"

    aput-object v1, v0, v3

    const-string v1, "screenshot"

    aput-object v1, v0, v4

    const-string v1, "receive_sms"

    aput-object v1, v0, v5

    const-string v1, "read_sms"

    aput-object v1, v0, v6

    const-string v1, "write_sms"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "send_sms"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "device_admin"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "rooter.a.silent"

    aput-object v2, v0, v1

    sput-object v0, Lhp;->a:[Ljava/lang/String;

    .line 39
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/kavsdk/antivirus/SuspiciousThreatType;

    sget-object v1, Lcom/kavsdk/antivirus/SuspiciousThreatType;->BankSms:Lcom/kavsdk/antivirus/SuspiciousThreatType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kavsdk/antivirus/SuspiciousThreatType;->ScreenCapture:Lcom/kavsdk/antivirus/SuspiciousThreatType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/kavsdk/antivirus/SuspiciousThreatType;->ReceiveSms:Lcom/kavsdk/antivirus/SuspiciousThreatType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/kavsdk/antivirus/SuspiciousThreatType;->ReadSms:Lcom/kavsdk/antivirus/SuspiciousThreatType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/kavsdk/antivirus/SuspiciousThreatType;->WriteSms:Lcom/kavsdk/antivirus/SuspiciousThreatType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/kavsdk/antivirus/SuspiciousThreatType;->SendSms:Lcom/kavsdk/antivirus/SuspiciousThreatType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/kavsdk/antivirus/SuspiciousThreatType;->DeviceAdmin:Lcom/kavsdk/antivirus/SuspiciousThreatType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/kavsdk/antivirus/SuspiciousThreatType;->CanRootDevice:Lcom/kavsdk/antivirus/SuspiciousThreatType;

    aput-object v2, v0, v1

    sput-object v0, Lhp;->b:[Lcom/kavsdk/antivirus/SuspiciousThreatType;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/kavsdk/antivirus/ThreatType;
    .locals 1

    .prologue
    .line 51
    const-string v0, "Monitor."

    invoke-static {p0, v0}, LbC;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "RiskTool."

    invoke-static {p0, v0}, LbC;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "RemoteAdmin."

    invoke-static {p0, v0}, LbC;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    :cond_0
    sget-object v0, Lcom/kavsdk/antivirus/ThreatType;->Riskware:Lcom/kavsdk/antivirus/ThreatType;

    .line 60
    :goto_0
    return-object v0

    .line 55
    :cond_1
    const-string v0, "Adware."

    invoke-static {p0, v0}, LbC;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 56
    sget-object v0, Lcom/kavsdk/antivirus/ThreatType;->Adware:Lcom/kavsdk/antivirus/ThreatType;

    goto :goto_0

    .line 57
    :cond_2
    const-string v0, "Trojan-Banker."

    invoke-static {p0, v0}, LbC;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 58
    sget-object v0, Lcom/kavsdk/antivirus/ThreatType;->TrojanBanker:Lcom/kavsdk/antivirus/ThreatType;

    goto :goto_0

    .line 60
    :cond_3
    sget-object v0, Lcom/kavsdk/antivirus/ThreatType;->Malware:Lcom/kavsdk/antivirus/ThreatType;

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Lcom/kavsdk/antivirus/SuspiciousThreatType;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 65
    if-eqz p0, :cond_2

    .line 66
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 67
    const-string v2, "heur:safemoney.androidos."

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 68
    if-ltz v2, :cond_2

    .line 69
    add-int/lit8 v2, v2, 0x19

    .line 70
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v2, :cond_2

    .line 71
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    move v0, v1

    .line 72
    :goto_0
    sget-object v4, Lhp;->a:[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_1

    .line 73
    sget-object v4, Lhp;->a:[Ljava/lang/String;

    aget-object v4, v4, v0

    .line 74
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v5, v6, :cond_0

    .line 75
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 76
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 77
    sget-object v1, Lhp;->b:[Lcom/kavsdk/antivirus/SuspiciousThreatType;

    aget-object v0, v1, v0

    .line 87
    :goto_1
    return-object v0

    .line 72
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 81
    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "BC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 82
    sget-object v0, Lcom/kavsdk/antivirus/SuspiciousThreatType;->BankCredential:Lcom/kavsdk/antivirus/SuspiciousThreatType;

    goto :goto_1

    .line 87
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
