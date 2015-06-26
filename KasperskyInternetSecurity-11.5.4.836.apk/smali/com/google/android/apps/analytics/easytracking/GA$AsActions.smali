.class public final enum Lcom/google/android/apps/analytics/easytracking/GA$AsActions;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum AddBlackItem:Lcom/google/android/apps/analytics/easytracking/GA$AsActions;

.field public static final enum AddWhiteItem:Lcom/google/android/apps/analytics/easytracking/GA$AsActions;

.field public static final enum AntiSpamModeChanged:Lcom/google/android/apps/analytics/easytracking/GA$AsActions;

.field public static final enum BlockNonNumericPhonesChanged:Lcom/google/android/apps/analytics/easytracking/GA$AsActions;

.field private static final synthetic a:[Lcom/google/android/apps/analytics/easytracking/GA$AsActions;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 488
    new-instance v0, Lcom/google/android/apps/analytics/easytracking/GA$AsActions;

    const-string v1, "AntiSpamModeChanged"

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/analytics/easytracking/GA$AsActions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/analytics/easytracking/GA$AsActions;->AntiSpamModeChanged:Lcom/google/android/apps/analytics/easytracking/GA$AsActions;

    new-instance v0, Lcom/google/android/apps/analytics/easytracking/GA$AsActions;

    const-string v1, "BlockNonNumericPhonesChanged"

    invoke-direct {v0, v1, v3}, Lcom/google/android/apps/analytics/easytracking/GA$AsActions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/analytics/easytracking/GA$AsActions;->BlockNonNumericPhonesChanged:Lcom/google/android/apps/analytics/easytracking/GA$AsActions;

    new-instance v0, Lcom/google/android/apps/analytics/easytracking/GA$AsActions;

    const-string v1, "AddWhiteItem"

    invoke-direct {v0, v1, v4}, Lcom/google/android/apps/analytics/easytracking/GA$AsActions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/analytics/easytracking/GA$AsActions;->AddWhiteItem:Lcom/google/android/apps/analytics/easytracking/GA$AsActions;

    new-instance v0, Lcom/google/android/apps/analytics/easytracking/GA$AsActions;

    const-string v1, "AddBlackItem"

    invoke-direct {v0, v1, v5}, Lcom/google/android/apps/analytics/easytracking/GA$AsActions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/analytics/easytracking/GA$AsActions;->AddBlackItem:Lcom/google/android/apps/analytics/easytracking/GA$AsActions;

    .line 487
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/apps/analytics/easytracking/GA$AsActions;

    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$AsActions;->AntiSpamModeChanged:Lcom/google/android/apps/analytics/easytracking/GA$AsActions;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$AsActions;->BlockNonNumericPhonesChanged:Lcom/google/android/apps/analytics/easytracking/GA$AsActions;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$AsActions;->AddWhiteItem:Lcom/google/android/apps/analytics/easytracking/GA$AsActions;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$AsActions;->AddBlackItem:Lcom/google/android/apps/analytics/easytracking/GA$AsActions;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/apps/analytics/easytracking/GA$AsActions;->a:[Lcom/google/android/apps/analytics/easytracking/GA$AsActions;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 487
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/analytics/easytracking/GA$AsActions;
    .locals 1

    .prologue
    .line 487
    const-class v0, Lcom/google/android/apps/analytics/easytracking/GA$AsActions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/analytics/easytracking/GA$AsActions;

    return-object v0
.end method

.method public static values()[Lcom/google/android/apps/analytics/easytracking/GA$AsActions;
    .locals 1

    .prologue
    .line 487
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA$AsActions;->a:[Lcom/google/android/apps/analytics/easytracking/GA$AsActions;

    invoke-virtual {v0}, [Lcom/google/android/apps/analytics/easytracking/GA$AsActions;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/analytics/easytracking/GA$AsActions;

    return-object v0
.end method
