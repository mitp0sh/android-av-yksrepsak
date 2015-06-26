.class public final enum Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum ActionOnThreatDetectionChanged:Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;

.field public static final enum BasesUpdate:Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;

.field public static final enum CleanModeChanged:Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;

.field public static final enum CloudeCheckChanged:Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;

.field public static final enum FileTypeToScanChanged:Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;

.field public static final enum OpenQuarantine:Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;

.field public static final enum ProtectionLevelChanged:Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;

.field public static final enum RiskwareCheckChanged:Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;

.field public static final enum Scan:Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;

.field public static final enum ScanResults:Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;

.field public static final enum ScanScheduleChanged:Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;

.field public static final enum TrustSystemAppsChanged:Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;

.field public static final enum TryCureChanged:Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;

.field public static final enum UpdateBasesScheduleChanged:Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;

.field private static final synthetic a:[Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 298
    new-instance v0, Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;

    const-string v1, "BasesUpdate"

    invoke-direct {v0, v1, v3}, Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;->BasesUpdate:Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;

    .line 299
    new-instance v0, Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;

    const-string v1, "ProtectionLevelChanged"

    invoke-direct {v0, v1, v4}, Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;->ProtectionLevelChanged:Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;

    .line 300
    new-instance v0, Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;

    const-string v1, "CloudeCheckChanged"

    invoke-direct {v0, v1, v5}, Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;->CloudeCheckChanged:Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;

    .line 301
    new-instance v0, Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;

    const-string v1, "RiskwareCheckChanged"

    invoke-direct {v0, v1, v6}, Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;->RiskwareCheckChanged:Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;

    .line 302
    new-instance v0, Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;

    const-string v1, "TrustSystemAppsChanged"

    invoke-direct {v0, v1, v7}, Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;->TrustSystemAppsChanged:Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;

    .line 303
    new-instance v0, Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;

    const-string v1, "ScanScheduleChanged"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;->ScanScheduleChanged:Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;

    .line 304
    new-instance v0, Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;

    const-string v1, "UpdateBasesScheduleChanged"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;->UpdateBasesScheduleChanged:Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;

    .line 305
    new-instance v0, Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;

    const-string v1, "FileTypeToScanChanged"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;->FileTypeToScanChanged:Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;

    .line 306
    new-instance v0, Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;

    const-string v1, "ActionOnThreatDetectionChanged"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;->ActionOnThreatDetectionChanged:Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;

    .line 307
    new-instance v0, Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;

    const-string v1, "Scan"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;->Scan:Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;

    .line 308
    new-instance v0, Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;

    const-string v1, "OpenQuarantine"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;->OpenQuarantine:Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;

    .line 309
    new-instance v0, Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;

    const-string v1, "TryCureChanged"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;->TryCureChanged:Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;

    .line 310
    new-instance v0, Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;

    const-string v1, "CleanModeChanged"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;->CleanModeChanged:Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;

    .line 311
    new-instance v0, Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;

    const-string v1, "ScanResults"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;->ScanResults:Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;

    .line 297
    const/16 v0, 0xe

    new-array v0, v0, [Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;

    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;->BasesUpdate:Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;->ProtectionLevelChanged:Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;->CloudeCheckChanged:Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;->RiskwareCheckChanged:Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;->TrustSystemAppsChanged:Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;->ScanScheduleChanged:Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;->UpdateBasesScheduleChanged:Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;->FileTypeToScanChanged:Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;->ActionOnThreatDetectionChanged:Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;->Scan:Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;->OpenQuarantine:Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;->TryCureChanged:Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;->CleanModeChanged:Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;->ScanResults:Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;->a:[Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 297
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;
    .locals 1

    .prologue
    .line 297
    const-class v0, Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;

    return-object v0
.end method

.method public static values()[Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;
    .locals 1

    .prologue
    .line 297
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;->a:[Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;

    invoke-virtual {v0}, [Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;

    return-object v0
.end method
