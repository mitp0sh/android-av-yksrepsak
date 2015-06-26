.class public final enum Lcom/google/android/apps/analytics/easytracking/GA$PortalActions;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum RegisterToKPC:Lcom/google/android/apps/analytics/easytracking/GA$PortalActions;

.field public static final enum ResgisterToAtWm:Lcom/google/android/apps/analytics/easytracking/GA$PortalActions;

.field private static final synthetic a:[Lcom/google/android/apps/analytics/easytracking/GA$PortalActions;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 694
    new-instance v0, Lcom/google/android/apps/analytics/easytracking/GA$PortalActions;

    const-string v1, "RegisterToKPC"

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/analytics/easytracking/GA$PortalActions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/analytics/easytracking/GA$PortalActions;->RegisterToKPC:Lcom/google/android/apps/analytics/easytracking/GA$PortalActions;

    new-instance v0, Lcom/google/android/apps/analytics/easytracking/GA$PortalActions;

    const-string v1, "ResgisterToAtWm"

    invoke-direct {v0, v1, v3}, Lcom/google/android/apps/analytics/easytracking/GA$PortalActions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/analytics/easytracking/GA$PortalActions;->ResgisterToAtWm:Lcom/google/android/apps/analytics/easytracking/GA$PortalActions;

    .line 693
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/apps/analytics/easytracking/GA$PortalActions;

    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$PortalActions;->RegisterToKPC:Lcom/google/android/apps/analytics/easytracking/GA$PortalActions;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$PortalActions;->ResgisterToAtWm:Lcom/google/android/apps/analytics/easytracking/GA$PortalActions;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/apps/analytics/easytracking/GA$PortalActions;->a:[Lcom/google/android/apps/analytics/easytracking/GA$PortalActions;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 693
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/analytics/easytracking/GA$PortalActions;
    .locals 1

    .prologue
    .line 693
    const-class v0, Lcom/google/android/apps/analytics/easytracking/GA$PortalActions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/analytics/easytracking/GA$PortalActions;

    return-object v0
.end method

.method public static values()[Lcom/google/android/apps/analytics/easytracking/GA$PortalActions;
    .locals 1

    .prologue
    .line 693
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA$PortalActions;->a:[Lcom/google/android/apps/analytics/easytracking/GA$PortalActions;

    invoke-virtual {v0}, [Lcom/google/android/apps/analytics/easytracking/GA$PortalActions;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/analytics/easytracking/GA$PortalActions;

    return-object v0
.end method
