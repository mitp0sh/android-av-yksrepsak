.class public final enum Lcom/google/android/apps/analytics/easytracking/GA$LicenseTransferActions;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum Free:Lcom/google/android/apps/analytics/easytracking/GA$LicenseTransferActions;

.field public static final enum Paid:Lcom/google/android/apps/analytics/easytracking/GA$LicenseTransferActions;

.field public static final enum Trial:Lcom/google/android/apps/analytics/easytracking/GA$LicenseTransferActions;

.field private static final synthetic a:[Lcom/google/android/apps/analytics/easytracking/GA$LicenseTransferActions;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 751
    new-instance v0, Lcom/google/android/apps/analytics/easytracking/GA$LicenseTransferActions;

    const-string v1, "Trial"

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/analytics/easytracking/GA$LicenseTransferActions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/analytics/easytracking/GA$LicenseTransferActions;->Trial:Lcom/google/android/apps/analytics/easytracking/GA$LicenseTransferActions;

    new-instance v0, Lcom/google/android/apps/analytics/easytracking/GA$LicenseTransferActions;

    const-string v1, "Free"

    invoke-direct {v0, v1, v3}, Lcom/google/android/apps/analytics/easytracking/GA$LicenseTransferActions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/analytics/easytracking/GA$LicenseTransferActions;->Free:Lcom/google/android/apps/analytics/easytracking/GA$LicenseTransferActions;

    new-instance v0, Lcom/google/android/apps/analytics/easytracking/GA$LicenseTransferActions;

    const-string v1, "Paid"

    invoke-direct {v0, v1, v4}, Lcom/google/android/apps/analytics/easytracking/GA$LicenseTransferActions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/analytics/easytracking/GA$LicenseTransferActions;->Paid:Lcom/google/android/apps/analytics/easytracking/GA$LicenseTransferActions;

    .line 750
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/apps/analytics/easytracking/GA$LicenseTransferActions;

    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$LicenseTransferActions;->Trial:Lcom/google/android/apps/analytics/easytracking/GA$LicenseTransferActions;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$LicenseTransferActions;->Free:Lcom/google/android/apps/analytics/easytracking/GA$LicenseTransferActions;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$LicenseTransferActions;->Paid:Lcom/google/android/apps/analytics/easytracking/GA$LicenseTransferActions;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/apps/analytics/easytracking/GA$LicenseTransferActions;->a:[Lcom/google/android/apps/analytics/easytracking/GA$LicenseTransferActions;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 750
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/analytics/easytracking/GA$LicenseTransferActions;
    .locals 1

    .prologue
    .line 750
    const-class v0, Lcom/google/android/apps/analytics/easytracking/GA$LicenseTransferActions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/analytics/easytracking/GA$LicenseTransferActions;

    return-object v0
.end method

.method public static values()[Lcom/google/android/apps/analytics/easytracking/GA$LicenseTransferActions;
    .locals 1

    .prologue
    .line 750
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA$LicenseTransferActions;->a:[Lcom/google/android/apps/analytics/easytracking/GA$LicenseTransferActions;

    invoke-virtual {v0}, [Lcom/google/android/apps/analytics/easytracking/GA$LicenseTransferActions;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/analytics/easytracking/GA$LicenseTransferActions;

    return-object v0
.end method
