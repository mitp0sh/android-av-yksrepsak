.class final enum Lcom/google/android/apps/analytics/easytracking/GA$CustomVariable;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum LicenseType:Lcom/google/android/apps/analytics/easytracking/GA$CustomVariable;

.field private static final synthetic a:[Lcom/google/android/apps/analytics/easytracking/GA$CustomVariable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 134
    new-instance v0, Lcom/google/android/apps/analytics/easytracking/GA$CustomVariable;

    const-string v1, "LicenseType"

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/analytics/easytracking/GA$CustomVariable;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/analytics/easytracking/GA$CustomVariable;->LicenseType:Lcom/google/android/apps/analytics/easytracking/GA$CustomVariable;

    .line 133
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/apps/analytics/easytracking/GA$CustomVariable;

    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$CustomVariable;->LicenseType:Lcom/google/android/apps/analytics/easytracking/GA$CustomVariable;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/apps/analytics/easytracking/GA$CustomVariable;->a:[Lcom/google/android/apps/analytics/easytracking/GA$CustomVariable;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/analytics/easytracking/GA$CustomVariable;
    .locals 1

    .prologue
    .line 133
    const-class v0, Lcom/google/android/apps/analytics/easytracking/GA$CustomVariable;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/analytics/easytracking/GA$CustomVariable;

    return-object v0
.end method

.method public static values()[Lcom/google/android/apps/analytics/easytracking/GA$CustomVariable;
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA$CustomVariable;->a:[Lcom/google/android/apps/analytics/easytracking/GA$CustomVariable;

    invoke-virtual {v0}, [Lcom/google/android/apps/analytics/easytracking/GA$CustomVariable;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/analytics/easytracking/GA$CustomVariable;

    return-object v0
.end method
