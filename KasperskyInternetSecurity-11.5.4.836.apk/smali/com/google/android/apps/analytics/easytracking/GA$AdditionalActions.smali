.class public final enum Lcom/google/android/apps/analytics/easytracking/GA$AdditionalActions;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum ApplicationUpdated:Lcom/google/android/apps/analytics/easytracking/GA$AdditionalActions;

.field public static final enum DisplayStatusBarNotificationChanged:Lcom/google/android/apps/analytics/easytracking/GA$AdditionalActions;

.field public static final enum SettingsHelpOpened:Lcom/google/android/apps/analytics/easytracking/GA$AdditionalActions;

.field public static final enum SettingsLicensePanelOpened:Lcom/google/android/apps/analytics/easytracking/GA$AdditionalActions;

.field public static final enum TrackingInsideHelp:Lcom/google/android/apps/analytics/easytracking/GA$AdditionalActions;

.field public static final enum Uninstall:Lcom/google/android/apps/analytics/easytracking/GA$AdditionalActions;

.field private static final synthetic a:[Lcom/google/android/apps/analytics/easytracking/GA$AdditionalActions;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 636
    new-instance v0, Lcom/google/android/apps/analytics/easytracking/GA$AdditionalActions;

    const-string v1, "Uninstall"

    invoke-direct {v0, v1, v3}, Lcom/google/android/apps/analytics/easytracking/GA$AdditionalActions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/analytics/easytracking/GA$AdditionalActions;->Uninstall:Lcom/google/android/apps/analytics/easytracking/GA$AdditionalActions;

    .line 637
    new-instance v0, Lcom/google/android/apps/analytics/easytracking/GA$AdditionalActions;

    const-string v1, "DisplayStatusBarNotificationChanged"

    invoke-direct {v0, v1, v4}, Lcom/google/android/apps/analytics/easytracking/GA$AdditionalActions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/analytics/easytracking/GA$AdditionalActions;->DisplayStatusBarNotificationChanged:Lcom/google/android/apps/analytics/easytracking/GA$AdditionalActions;

    .line 638
    new-instance v0, Lcom/google/android/apps/analytics/easytracking/GA$AdditionalActions;

    const-string v1, "SettingsHelpOpened"

    invoke-direct {v0, v1, v5}, Lcom/google/android/apps/analytics/easytracking/GA$AdditionalActions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/analytics/easytracking/GA$AdditionalActions;->SettingsHelpOpened:Lcom/google/android/apps/analytics/easytracking/GA$AdditionalActions;

    .line 639
    new-instance v0, Lcom/google/android/apps/analytics/easytracking/GA$AdditionalActions;

    const-string v1, "SettingsLicensePanelOpened"

    invoke-direct {v0, v1, v6}, Lcom/google/android/apps/analytics/easytracking/GA$AdditionalActions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/analytics/easytracking/GA$AdditionalActions;->SettingsLicensePanelOpened:Lcom/google/android/apps/analytics/easytracking/GA$AdditionalActions;

    .line 640
    new-instance v0, Lcom/google/android/apps/analytics/easytracking/GA$AdditionalActions;

    const-string v1, "ApplicationUpdated"

    invoke-direct {v0, v1, v7}, Lcom/google/android/apps/analytics/easytracking/GA$AdditionalActions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/analytics/easytracking/GA$AdditionalActions;->ApplicationUpdated:Lcom/google/android/apps/analytics/easytracking/GA$AdditionalActions;

    .line 641
    new-instance v0, Lcom/google/android/apps/analytics/easytracking/GA$AdditionalActions;

    const-string v1, "TrackingInsideHelp"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/analytics/easytracking/GA$AdditionalActions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/analytics/easytracking/GA$AdditionalActions;->TrackingInsideHelp:Lcom/google/android/apps/analytics/easytracking/GA$AdditionalActions;

    .line 635
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/android/apps/analytics/easytracking/GA$AdditionalActions;

    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$AdditionalActions;->Uninstall:Lcom/google/android/apps/analytics/easytracking/GA$AdditionalActions;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$AdditionalActions;->DisplayStatusBarNotificationChanged:Lcom/google/android/apps/analytics/easytracking/GA$AdditionalActions;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$AdditionalActions;->SettingsHelpOpened:Lcom/google/android/apps/analytics/easytracking/GA$AdditionalActions;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$AdditionalActions;->SettingsLicensePanelOpened:Lcom/google/android/apps/analytics/easytracking/GA$AdditionalActions;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$AdditionalActions;->ApplicationUpdated:Lcom/google/android/apps/analytics/easytracking/GA$AdditionalActions;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/apps/analytics/easytracking/GA$AdditionalActions;->TrackingInsideHelp:Lcom/google/android/apps/analytics/easytracking/GA$AdditionalActions;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/analytics/easytracking/GA$AdditionalActions;->a:[Lcom/google/android/apps/analytics/easytracking/GA$AdditionalActions;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 635
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/analytics/easytracking/GA$AdditionalActions;
    .locals 1

    .prologue
    .line 635
    const-class v0, Lcom/google/android/apps/analytics/easytracking/GA$AdditionalActions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/analytics/easytracking/GA$AdditionalActions;

    return-object v0
.end method

.method public static values()[Lcom/google/android/apps/analytics/easytracking/GA$AdditionalActions;
    .locals 1

    .prologue
    .line 635
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA$AdditionalActions;->a:[Lcom/google/android/apps/analytics/easytracking/GA$AdditionalActions;

    invoke-virtual {v0}, [Lcom/google/android/apps/analytics/easytracking/GA$AdditionalActions;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/analytics/easytracking/GA$AdditionalActions;

    return-object v0
.end method
