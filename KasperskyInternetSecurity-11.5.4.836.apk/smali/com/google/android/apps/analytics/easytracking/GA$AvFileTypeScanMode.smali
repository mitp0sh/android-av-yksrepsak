.class public final enum Lcom/google/android/apps/analytics/easytracking/GA$AvFileTypeScanMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum ScanAllFiles:Lcom/google/android/apps/analytics/easytracking/GA$AvFileTypeScanMode;

.field public static final enum ScanExecutablesOnly:Lcom/google/android/apps/analytics/easytracking/GA$AvFileTypeScanMode;

.field private static final synthetic a:[Lcom/google/android/apps/analytics/easytracking/GA$AvFileTypeScanMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 165
    new-instance v0, Lcom/google/android/apps/analytics/easytracking/GA$AvFileTypeScanMode;

    const-string v1, "ScanAllFiles"

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/analytics/easytracking/GA$AvFileTypeScanMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/analytics/easytracking/GA$AvFileTypeScanMode;->ScanAllFiles:Lcom/google/android/apps/analytics/easytracking/GA$AvFileTypeScanMode;

    new-instance v0, Lcom/google/android/apps/analytics/easytracking/GA$AvFileTypeScanMode;

    const-string v1, "ScanExecutablesOnly"

    invoke-direct {v0, v1, v3}, Lcom/google/android/apps/analytics/easytracking/GA$AvFileTypeScanMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/analytics/easytracking/GA$AvFileTypeScanMode;->ScanExecutablesOnly:Lcom/google/android/apps/analytics/easytracking/GA$AvFileTypeScanMode;

    .line 164
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/apps/analytics/easytracking/GA$AvFileTypeScanMode;

    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$AvFileTypeScanMode;->ScanAllFiles:Lcom/google/android/apps/analytics/easytracking/GA$AvFileTypeScanMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$AvFileTypeScanMode;->ScanExecutablesOnly:Lcom/google/android/apps/analytics/easytracking/GA$AvFileTypeScanMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/apps/analytics/easytracking/GA$AvFileTypeScanMode;->a:[Lcom/google/android/apps/analytics/easytracking/GA$AvFileTypeScanMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 164
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/analytics/easytracking/GA$AvFileTypeScanMode;
    .locals 1

    .prologue
    .line 164
    const-class v0, Lcom/google/android/apps/analytics/easytracking/GA$AvFileTypeScanMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/analytics/easytracking/GA$AvFileTypeScanMode;

    return-object v0
.end method

.method public static values()[Lcom/google/android/apps/analytics/easytracking/GA$AvFileTypeScanMode;
    .locals 1

    .prologue
    .line 164
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA$AvFileTypeScanMode;->a:[Lcom/google/android/apps/analytics/easytracking/GA$AvFileTypeScanMode;

    invoke-virtual {v0}, [Lcom/google/android/apps/analytics/easytracking/GA$AvFileTypeScanMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/analytics/easytracking/GA$AvFileTypeScanMode;

    return-object v0
.end method
