.class public final enum Lcom/google/android/apps/analytics/easytracking/GA$PpActions;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum AddHiddenContact:Lcom/google/android/apps/analytics/easytracking/GA$PpActions;

.field public static final enum AutoHidingModeChanged:Lcom/google/android/apps/analytics/easytracking/GA$PpActions;

.field public static final enum HideBySmsCommandChanged:Lcom/google/android/apps/analytics/easytracking/GA$PpActions;

.field public static final enum ModeChanged:Lcom/google/android/apps/analytics/easytracking/GA$PpActions;

.field private static final synthetic a:[Lcom/google/android/apps/analytics/easytracking/GA$PpActions;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 524
    new-instance v0, Lcom/google/android/apps/analytics/easytracking/GA$PpActions;

    const-string v1, "ModeChanged"

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/analytics/easytracking/GA$PpActions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/analytics/easytracking/GA$PpActions;->ModeChanged:Lcom/google/android/apps/analytics/easytracking/GA$PpActions;

    new-instance v0, Lcom/google/android/apps/analytics/easytracking/GA$PpActions;

    const-string v1, "AddHiddenContact"

    invoke-direct {v0, v1, v3}, Lcom/google/android/apps/analytics/easytracking/GA$PpActions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/analytics/easytracking/GA$PpActions;->AddHiddenContact:Lcom/google/android/apps/analytics/easytracking/GA$PpActions;

    new-instance v0, Lcom/google/android/apps/analytics/easytracking/GA$PpActions;

    const-string v1, "HideBySmsCommandChanged"

    invoke-direct {v0, v1, v4}, Lcom/google/android/apps/analytics/easytracking/GA$PpActions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/analytics/easytracking/GA$PpActions;->HideBySmsCommandChanged:Lcom/google/android/apps/analytics/easytracking/GA$PpActions;

    new-instance v0, Lcom/google/android/apps/analytics/easytracking/GA$PpActions;

    const-string v1, "AutoHidingModeChanged"

    invoke-direct {v0, v1, v5}, Lcom/google/android/apps/analytics/easytracking/GA$PpActions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/analytics/easytracking/GA$PpActions;->AutoHidingModeChanged:Lcom/google/android/apps/analytics/easytracking/GA$PpActions;

    .line 523
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/apps/analytics/easytracking/GA$PpActions;

    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$PpActions;->ModeChanged:Lcom/google/android/apps/analytics/easytracking/GA$PpActions;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$PpActions;->AddHiddenContact:Lcom/google/android/apps/analytics/easytracking/GA$PpActions;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$PpActions;->HideBySmsCommandChanged:Lcom/google/android/apps/analytics/easytracking/GA$PpActions;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$PpActions;->AutoHidingModeChanged:Lcom/google/android/apps/analytics/easytracking/GA$PpActions;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/apps/analytics/easytracking/GA$PpActions;->a:[Lcom/google/android/apps/analytics/easytracking/GA$PpActions;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 523
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/analytics/easytracking/GA$PpActions;
    .locals 1

    .prologue
    .line 523
    const-class v0, Lcom/google/android/apps/analytics/easytracking/GA$PpActions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/analytics/easytracking/GA$PpActions;

    return-object v0
.end method

.method public static values()[Lcom/google/android/apps/analytics/easytracking/GA$PpActions;
    .locals 1

    .prologue
    .line 523
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA$PpActions;->a:[Lcom/google/android/apps/analytics/easytracking/GA$PpActions;

    invoke-virtual {v0}, [Lcom/google/android/apps/analytics/easytracking/GA$PpActions;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/analytics/easytracking/GA$PpActions;

    return-object v0
.end method
