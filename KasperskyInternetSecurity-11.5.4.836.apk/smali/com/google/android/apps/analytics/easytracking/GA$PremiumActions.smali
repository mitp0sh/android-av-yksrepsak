.class public final enum Lcom/google/android/apps/analytics/easytracking/GA$PremiumActions;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum GetAllFeatures:Lcom/google/android/apps/analytics/easytracking/GA$PremiumActions;

.field public static final enum TryNow:Lcom/google/android/apps/analytics/easytracking/GA$PremiumActions;

.field private static final synthetic a:[Lcom/google/android/apps/analytics/easytracking/GA$PremiumActions;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 705
    new-instance v0, Lcom/google/android/apps/analytics/easytracking/GA$PremiumActions;

    const-string v1, "TryNow"

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/analytics/easytracking/GA$PremiumActions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/analytics/easytracking/GA$PremiumActions;->TryNow:Lcom/google/android/apps/analytics/easytracking/GA$PremiumActions;

    new-instance v0, Lcom/google/android/apps/analytics/easytracking/GA$PremiumActions;

    const-string v1, "GetAllFeatures"

    invoke-direct {v0, v1, v3}, Lcom/google/android/apps/analytics/easytracking/GA$PremiumActions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/analytics/easytracking/GA$PremiumActions;->GetAllFeatures:Lcom/google/android/apps/analytics/easytracking/GA$PremiumActions;

    .line 704
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/apps/analytics/easytracking/GA$PremiumActions;

    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$PremiumActions;->TryNow:Lcom/google/android/apps/analytics/easytracking/GA$PremiumActions;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$PremiumActions;->GetAllFeatures:Lcom/google/android/apps/analytics/easytracking/GA$PremiumActions;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/apps/analytics/easytracking/GA$PremiumActions;->a:[Lcom/google/android/apps/analytics/easytracking/GA$PremiumActions;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 704
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/analytics/easytracking/GA$PremiumActions;
    .locals 1

    .prologue
    .line 704
    const-class v0, Lcom/google/android/apps/analytics/easytracking/GA$PremiumActions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/analytics/easytracking/GA$PremiumActions;

    return-object v0
.end method

.method public static values()[Lcom/google/android/apps/analytics/easytracking/GA$PremiumActions;
    .locals 1

    .prologue
    .line 704
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA$PremiumActions;->a:[Lcom/google/android/apps/analytics/easytracking/GA$PremiumActions;

    invoke-virtual {v0}, [Lcom/google/android/apps/analytics/easytracking/GA$PremiumActions;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/analytics/easytracking/GA$PremiumActions;

    return-object v0
.end method
