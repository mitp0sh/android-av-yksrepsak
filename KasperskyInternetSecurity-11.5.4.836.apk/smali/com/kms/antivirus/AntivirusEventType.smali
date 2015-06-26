.class public enum Lcom/kms/antivirus/AntivirusEventType;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum BasesAlreadyLatest:Lcom/kms/antivirus/AntivirusEventType;

.field public static final enum BasesExpired:Lcom/kms/antivirus/AntivirusEventType;

.field public static final enum BasesUpdateFailed:Lcom/kms/antivirus/AntivirusEventType;

.field public static final enum BasesUpdateFinished:Lcom/kms/antivirus/AntivirusEventType;

.field public static final enum BasesUpdateProgressChanged:Lcom/kms/antivirus/AntivirusEventType;

.field public static final enum BasesUpdateStarted:Lcom/kms/antivirus/AntivirusEventType;

.field public static final enum BasesUpdateStateChanged:Lcom/kms/antivirus/AntivirusEventType;

.field public static final enum BasesUpdated:Lcom/kms/antivirus/AntivirusEventType;

.field public static final enum Initialized:Lcom/kms/antivirus/AntivirusEventType;

.field public static final enum MonitorModeChanged:Lcom/kms/antivirus/AntivirusEventType;

.field public static final enum ScanExpired:Lcom/kms/antivirus/AntivirusEventType;

.field public static final enum ScanFinished:Lcom/kms/antivirus/AntivirusEventType;

.field public static final enum ScanNewObjectAppeared:Lcom/kms/antivirus/AntivirusEventType;

.field public static final enum ScanObjectCountChanged:Lcom/kms/antivirus/AntivirusEventType;

.field public static final enum ScanProgressCalculated:Lcom/kms/antivirus/AntivirusEventType;

.field public static final enum ScanProgressChanged:Lcom/kms/antivirus/AntivirusEventType;

.field public static final enum ScanStarted:Lcom/kms/antivirus/AntivirusEventType;

.field public static final enum ScanStartedForFile:Lcom/kms/antivirus/AntivirusEventType;

.field public static final enum ScanVirusDetected:Lcom/kms/antivirus/AntivirusEventType;

.field public static final enum ServiceStateChanged:Lcom/kms/antivirus/AntivirusEventType;

.field private static final synthetic a:[Lcom/kms/antivirus/AntivirusEventType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 12
    new-instance v0, Lcom/kms/antivirus/AntivirusEventType;

    const-string v1, "ScanStarted"

    invoke-direct {v0, v1, v3}, Lcom/kms/antivirus/AntivirusEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kms/antivirus/AntivirusEventType;->ScanStarted:Lcom/kms/antivirus/AntivirusEventType;

    .line 17
    new-instance v0, Lcom/kms/antivirus/AntivirusEventType$1;

    const-string v1, "ScanProgressCalculated"

    invoke-direct {v0, v1, v4}, Lcom/kms/antivirus/AntivirusEventType$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kms/antivirus/AntivirusEventType;->ScanProgressCalculated:Lcom/kms/antivirus/AntivirusEventType;

    .line 29
    new-instance v0, Lcom/kms/antivirus/AntivirusEventType$2;

    const-string v1, "ScanVirusDetected"

    invoke-direct {v0, v1, v5}, Lcom/kms/antivirus/AntivirusEventType$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kms/antivirus/AntivirusEventType;->ScanVirusDetected:Lcom/kms/antivirus/AntivirusEventType;

    .line 41
    new-instance v0, Lcom/kms/antivirus/AntivirusEventType$3;

    const-string v1, "ScanProgressChanged"

    invoke-direct {v0, v1, v6}, Lcom/kms/antivirus/AntivirusEventType$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kms/antivirus/AntivirusEventType;->ScanProgressChanged:Lcom/kms/antivirus/AntivirusEventType;

    .line 53
    new-instance v0, Lcom/kms/antivirus/AntivirusEventType$4;

    const-string v1, "ScanObjectCountChanged"

    invoke-direct {v0, v1, v7}, Lcom/kms/antivirus/AntivirusEventType$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kms/antivirus/AntivirusEventType;->ScanObjectCountChanged:Lcom/kms/antivirus/AntivirusEventType;

    .line 66
    new-instance v0, Lcom/kms/antivirus/AntivirusEventType;

    const-string v1, "ScanFinished"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/kms/antivirus/AntivirusEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kms/antivirus/AntivirusEventType;->ScanFinished:Lcom/kms/antivirus/AntivirusEventType;

    .line 76
    new-instance v0, Lcom/kms/antivirus/AntivirusEventType$5;

    const-string v1, "ScanNewObjectAppeared"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/kms/antivirus/AntivirusEventType$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kms/antivirus/AntivirusEventType;->ScanNewObjectAppeared:Lcom/kms/antivirus/AntivirusEventType;

    .line 88
    new-instance v0, Lcom/kms/antivirus/AntivirusEventType;

    const-string v1, "BasesUpdated"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/kms/antivirus/AntivirusEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kms/antivirus/AntivirusEventType;->BasesUpdated:Lcom/kms/antivirus/AntivirusEventType;

    .line 93
    new-instance v0, Lcom/kms/antivirus/AntivirusEventType;

    const-string v1, "BasesAlreadyLatest"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/kms/antivirus/AntivirusEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kms/antivirus/AntivirusEventType;->BasesAlreadyLatest:Lcom/kms/antivirus/AntivirusEventType;

    .line 98
    new-instance v0, Lcom/kms/antivirus/AntivirusEventType$6;

    const-string v1, "BasesUpdateFailed"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/kms/antivirus/AntivirusEventType$6;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kms/antivirus/AntivirusEventType;->BasesUpdateFailed:Lcom/kms/antivirus/AntivirusEventType;

    .line 112
    new-instance v0, Lcom/kms/antivirus/AntivirusEventType$7;

    const-string v1, "BasesUpdateStarted"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/kms/antivirus/AntivirusEventType$7;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kms/antivirus/AntivirusEventType;->BasesUpdateStarted:Lcom/kms/antivirus/AntivirusEventType;

    .line 124
    new-instance v0, Lcom/kms/antivirus/AntivirusEventType;

    const-string v1, "BasesUpdateFinished"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/kms/antivirus/AntivirusEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kms/antivirus/AntivirusEventType;->BasesUpdateFinished:Lcom/kms/antivirus/AntivirusEventType;

    .line 129
    new-instance v0, Lcom/kms/antivirus/AntivirusEventType$8;

    const-string v1, "BasesUpdateProgressChanged"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/kms/antivirus/AntivirusEventType$8;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kms/antivirus/AntivirusEventType;->BasesUpdateProgressChanged:Lcom/kms/antivirus/AntivirusEventType;

    .line 141
    new-instance v0, Lcom/kms/antivirus/AntivirusEventType$9;

    const-string v1, "ServiceStateChanged"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/kms/antivirus/AntivirusEventType$9;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kms/antivirus/AntivirusEventType;->ServiceStateChanged:Lcom/kms/antivirus/AntivirusEventType;

    .line 153
    new-instance v0, Lcom/kms/antivirus/AntivirusEventType$10;

    const-string v1, "BasesUpdateStateChanged"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/kms/antivirus/AntivirusEventType$10;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kms/antivirus/AntivirusEventType;->BasesUpdateStateChanged:Lcom/kms/antivirus/AntivirusEventType;

    .line 165
    new-instance v0, Lcom/kms/antivirus/AntivirusEventType;

    const-string v1, "BasesExpired"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/kms/antivirus/AntivirusEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kms/antivirus/AntivirusEventType;->BasesExpired:Lcom/kms/antivirus/AntivirusEventType;

    .line 170
    new-instance v0, Lcom/kms/antivirus/AntivirusEventType;

    const-string v1, "ScanExpired"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/kms/antivirus/AntivirusEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kms/antivirus/AntivirusEventType;->ScanExpired:Lcom/kms/antivirus/AntivirusEventType;

    .line 175
    new-instance v0, Lcom/kms/antivirus/AntivirusEventType;

    const-string v1, "Initialized"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/kms/antivirus/AntivirusEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kms/antivirus/AntivirusEventType;->Initialized:Lcom/kms/antivirus/AntivirusEventType;

    .line 180
    new-instance v0, Lcom/kms/antivirus/AntivirusEventType$11;

    const-string v1, "MonitorModeChanged"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/kms/antivirus/AntivirusEventType$11;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kms/antivirus/AntivirusEventType;->MonitorModeChanged:Lcom/kms/antivirus/AntivirusEventType;

    .line 192
    new-instance v0, Lcom/kms/antivirus/AntivirusEventType$12;

    const-string v1, "ScanStartedForFile"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/kms/antivirus/AntivirusEventType$12;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kms/antivirus/AntivirusEventType;->ScanStartedForFile:Lcom/kms/antivirus/AntivirusEventType;

    .line 3
    const/16 v0, 0x14

    new-array v0, v0, [Lcom/kms/antivirus/AntivirusEventType;

    sget-object v1, Lcom/kms/antivirus/AntivirusEventType;->ScanStarted:Lcom/kms/antivirus/AntivirusEventType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kms/antivirus/AntivirusEventType;->ScanProgressCalculated:Lcom/kms/antivirus/AntivirusEventType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/kms/antivirus/AntivirusEventType;->ScanVirusDetected:Lcom/kms/antivirus/AntivirusEventType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/kms/antivirus/AntivirusEventType;->ScanProgressChanged:Lcom/kms/antivirus/AntivirusEventType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/kms/antivirus/AntivirusEventType;->ScanObjectCountChanged:Lcom/kms/antivirus/AntivirusEventType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/kms/antivirus/AntivirusEventType;->ScanFinished:Lcom/kms/antivirus/AntivirusEventType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/kms/antivirus/AntivirusEventType;->ScanNewObjectAppeared:Lcom/kms/antivirus/AntivirusEventType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/kms/antivirus/AntivirusEventType;->BasesUpdated:Lcom/kms/antivirus/AntivirusEventType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/kms/antivirus/AntivirusEventType;->BasesAlreadyLatest:Lcom/kms/antivirus/AntivirusEventType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/kms/antivirus/AntivirusEventType;->BasesUpdateFailed:Lcom/kms/antivirus/AntivirusEventType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/kms/antivirus/AntivirusEventType;->BasesUpdateStarted:Lcom/kms/antivirus/AntivirusEventType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/kms/antivirus/AntivirusEventType;->BasesUpdateFinished:Lcom/kms/antivirus/AntivirusEventType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/kms/antivirus/AntivirusEventType;->BasesUpdateProgressChanged:Lcom/kms/antivirus/AntivirusEventType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/kms/antivirus/AntivirusEventType;->ServiceStateChanged:Lcom/kms/antivirus/AntivirusEventType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/kms/antivirus/AntivirusEventType;->BasesUpdateStateChanged:Lcom/kms/antivirus/AntivirusEventType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/kms/antivirus/AntivirusEventType;->BasesExpired:Lcom/kms/antivirus/AntivirusEventType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/kms/antivirus/AntivirusEventType;->ScanExpired:Lcom/kms/antivirus/AntivirusEventType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/kms/antivirus/AntivirusEventType;->Initialized:Lcom/kms/antivirus/AntivirusEventType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/kms/antivirus/AntivirusEventType;->MonitorModeChanged:Lcom/kms/antivirus/AntivirusEventType;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/kms/antivirus/AntivirusEventType;->ScanStartedForFile:Lcom/kms/antivirus/AntivirusEventType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/kms/antivirus/AntivirusEventType;->a:[Lcom/kms/antivirus/AntivirusEventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/kms/antivirus/AntivirusEventType$1;)V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/kms/antivirus/AntivirusEventType;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kms/antivirus/AntivirusEventType;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/kms/antivirus/AntivirusEventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kms/antivirus/AntivirusEventType;

    return-object v0
.end method

.method public static values()[Lcom/kms/antivirus/AntivirusEventType;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/kms/antivirus/AntivirusEventType;->a:[Lcom/kms/antivirus/AntivirusEventType;

    invoke-virtual {v0}, [Lcom/kms/antivirus/AntivirusEventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kms/antivirus/AntivirusEventType;

    return-object v0
.end method


# virtual methods
.method protected checkData(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 216
    if-eqz p1, :cond_0

    .line 217
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Antivirus event data must be null for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/kms/antivirus/AntivirusEventType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_0
    return-void
.end method

.method public newEvent()Lme;
    .locals 1

    .prologue
    .line 202
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/kms/antivirus/AntivirusEventType;->newEvent(Ljava/lang/Object;)Lme;

    move-result-object v0

    return-object v0
.end method

.method public newEvent(Ljava/lang/Object;)Lme;
    .locals 1

    .prologue
    .line 206
    invoke-virtual {p0, p1}, Lcom/kms/antivirus/AntivirusEventType;->checkData(Ljava/lang/Object;)V

    .line 207
    new-instance v0, Lme;

    invoke-direct {v0, p0, p1}, Lme;-><init>(Lcom/kms/antivirus/AntivirusEventType;Ljava/lang/Object;)V

    return-object v0
.end method
