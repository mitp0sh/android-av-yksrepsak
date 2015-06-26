.class public final enum Lcom/google/android/apps/analytics/easytracking/GA$AvScanType;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum FolderScan:Lcom/google/android/apps/analytics/easytracking/GA$AvScanType;

.field public static final enum FullScan:Lcom/google/android/apps/analytics/easytracking/GA$AvScanType;

.field public static final enum QuickScan:Lcom/google/android/apps/analytics/easytracking/GA$AvScanType;

.field private static final synthetic a:[Lcom/google/android/apps/analytics/easytracking/GA$AvScanType;


# instance fields
.field private final mScanType:Lcom/kms/antivirus/AntivirusScanType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 142
    new-instance v0, Lcom/google/android/apps/analytics/easytracking/GA$AvScanType;

    const-string v1, "FullScan"

    sget-object v2, Lcom/kms/antivirus/AntivirusScanType;->Full:Lcom/kms/antivirus/AntivirusScanType;

    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/apps/analytics/easytracking/GA$AvScanType;-><init>(Ljava/lang/String;ILcom/kms/antivirus/AntivirusScanType;)V

    sput-object v0, Lcom/google/android/apps/analytics/easytracking/GA$AvScanType;->FullScan:Lcom/google/android/apps/analytics/easytracking/GA$AvScanType;

    .line 143
    new-instance v0, Lcom/google/android/apps/analytics/easytracking/GA$AvScanType;

    const-string v1, "FolderScan"

    sget-object v2, Lcom/kms/antivirus/AntivirusScanType;->Folder:Lcom/kms/antivirus/AntivirusScanType;

    invoke-direct {v0, v1, v4, v2}, Lcom/google/android/apps/analytics/easytracking/GA$AvScanType;-><init>(Ljava/lang/String;ILcom/kms/antivirus/AntivirusScanType;)V

    sput-object v0, Lcom/google/android/apps/analytics/easytracking/GA$AvScanType;->FolderScan:Lcom/google/android/apps/analytics/easytracking/GA$AvScanType;

    .line 144
    new-instance v0, Lcom/google/android/apps/analytics/easytracking/GA$AvScanType;

    const-string v1, "QuickScan"

    sget-object v2, Lcom/kms/antivirus/AntivirusScanType;->Quick:Lcom/kms/antivirus/AntivirusScanType;

    invoke-direct {v0, v1, v5, v2}, Lcom/google/android/apps/analytics/easytracking/GA$AvScanType;-><init>(Ljava/lang/String;ILcom/kms/antivirus/AntivirusScanType;)V

    sput-object v0, Lcom/google/android/apps/analytics/easytracking/GA$AvScanType;->QuickScan:Lcom/google/android/apps/analytics/easytracking/GA$AvScanType;

    .line 141
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/apps/analytics/easytracking/GA$AvScanType;

    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$AvScanType;->FullScan:Lcom/google/android/apps/analytics/easytracking/GA$AvScanType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$AvScanType;->FolderScan:Lcom/google/android/apps/analytics/easytracking/GA$AvScanType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$AvScanType;->QuickScan:Lcom/google/android/apps/analytics/easytracking/GA$AvScanType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/apps/analytics/easytracking/GA$AvScanType;->a:[Lcom/google/android/apps/analytics/easytracking/GA$AvScanType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/kms/antivirus/AntivirusScanType;)V
    .locals 0

    .prologue
    .line 148
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 149
    iput-object p3, p0, Lcom/google/android/apps/analytics/easytracking/GA$AvScanType;->mScanType:Lcom/kms/antivirus/AntivirusScanType;

    .line 150
    return-void
.end method

.method public static getByScanType(Lcom/kms/antivirus/AntivirusScanType;)Lcom/google/android/apps/analytics/easytracking/GA$AvScanType;
    .locals 5

    .prologue
    .line 154
    invoke-static {}, Lcom/google/android/apps/analytics/easytracking/GA$AvScanType;->values()[Lcom/google/android/apps/analytics/easytracking/GA$AvScanType;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 155
    iget-object v4, v0, Lcom/google/android/apps/analytics/easytracking/GA$AvScanType;->mScanType:Lcom/kms/antivirus/AntivirusScanType;

    if-ne v4, p0, :cond_0

    .line 160
    :goto_1
    return-object v0

    .line 154
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 160
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/analytics/easytracking/GA$AvScanType;
    .locals 1

    .prologue
    .line 141
    const-class v0, Lcom/google/android/apps/analytics/easytracking/GA$AvScanType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/analytics/easytracking/GA$AvScanType;

    return-object v0
.end method

.method public static values()[Lcom/google/android/apps/analytics/easytracking/GA$AvScanType;
    .locals 1

    .prologue
    .line 141
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA$AvScanType;->a:[Lcom/google/android/apps/analytics/easytracking/GA$AvScanType;

    invoke-virtual {v0}, [Lcom/google/android/apps/analytics/easytracking/GA$AvScanType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/analytics/easytracking/GA$AvScanType;

    return-object v0
.end method
