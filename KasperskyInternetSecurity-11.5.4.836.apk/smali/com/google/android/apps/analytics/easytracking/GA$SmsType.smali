.class public final enum Lcom/google/android/apps/analytics/easytracking/GA$SmsType;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum Alarm:Lcom/google/android/apps/analytics/easytracking/GA$SmsType;

.field public static final enum DataWipe:Lcom/google/android/apps/analytics/easytracking/GA$SmsType;

.field public static final enum DeviceLock:Lcom/google/android/apps/analytics/easytracking/GA$SmsType;

.field public static final enum FullReset:Lcom/google/android/apps/analytics/easytracking/GA$SmsType;

.field public static final enum Locate:Lcom/google/android/apps/analytics/easytracking/GA$SmsType;

.field public static final enum PrivacyProtection:Lcom/google/android/apps/analytics/easytracking/GA$SmsType;

.field private static final synthetic a:[Lcom/google/android/apps/analytics/easytracking/GA$SmsType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 207
    new-instance v0, Lcom/google/android/apps/analytics/easytracking/GA$SmsType;

    const-string v1, "DeviceLock"

    invoke-direct {v0, v1, v3}, Lcom/google/android/apps/analytics/easytracking/GA$SmsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/analytics/easytracking/GA$SmsType;->DeviceLock:Lcom/google/android/apps/analytics/easytracking/GA$SmsType;

    new-instance v0, Lcom/google/android/apps/analytics/easytracking/GA$SmsType;

    const-string v1, "DataWipe"

    invoke-direct {v0, v1, v4}, Lcom/google/android/apps/analytics/easytracking/GA$SmsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/analytics/easytracking/GA$SmsType;->DataWipe:Lcom/google/android/apps/analytics/easytracking/GA$SmsType;

    new-instance v0, Lcom/google/android/apps/analytics/easytracking/GA$SmsType;

    const-string v1, "FullReset"

    invoke-direct {v0, v1, v5}, Lcom/google/android/apps/analytics/easytracking/GA$SmsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/analytics/easytracking/GA$SmsType;->FullReset:Lcom/google/android/apps/analytics/easytracking/GA$SmsType;

    new-instance v0, Lcom/google/android/apps/analytics/easytracking/GA$SmsType;

    const-string v1, "Locate"

    invoke-direct {v0, v1, v6}, Lcom/google/android/apps/analytics/easytracking/GA$SmsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/analytics/easytracking/GA$SmsType;->Locate:Lcom/google/android/apps/analytics/easytracking/GA$SmsType;

    new-instance v0, Lcom/google/android/apps/analytics/easytracking/GA$SmsType;

    const-string v1, "PrivacyProtection"

    invoke-direct {v0, v1, v7}, Lcom/google/android/apps/analytics/easytracking/GA$SmsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/analytics/easytracking/GA$SmsType;->PrivacyProtection:Lcom/google/android/apps/analytics/easytracking/GA$SmsType;

    new-instance v0, Lcom/google/android/apps/analytics/easytracking/GA$SmsType;

    const-string v1, "Alarm"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/analytics/easytracking/GA$SmsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/analytics/easytracking/GA$SmsType;->Alarm:Lcom/google/android/apps/analytics/easytracking/GA$SmsType;

    .line 206
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/android/apps/analytics/easytracking/GA$SmsType;

    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$SmsType;->DeviceLock:Lcom/google/android/apps/analytics/easytracking/GA$SmsType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$SmsType;->DataWipe:Lcom/google/android/apps/analytics/easytracking/GA$SmsType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$SmsType;->FullReset:Lcom/google/android/apps/analytics/easytracking/GA$SmsType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$SmsType;->Locate:Lcom/google/android/apps/analytics/easytracking/GA$SmsType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$SmsType;->PrivacyProtection:Lcom/google/android/apps/analytics/easytracking/GA$SmsType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/apps/analytics/easytracking/GA$SmsType;->Alarm:Lcom/google/android/apps/analytics/easytracking/GA$SmsType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/analytics/easytracking/GA$SmsType;->a:[Lcom/google/android/apps/analytics/easytracking/GA$SmsType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 206
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/analytics/easytracking/GA$SmsType;
    .locals 1

    .prologue
    .line 206
    const-class v0, Lcom/google/android/apps/analytics/easytracking/GA$SmsType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/analytics/easytracking/GA$SmsType;

    return-object v0
.end method

.method public static values()[Lcom/google/android/apps/analytics/easytracking/GA$SmsType;
    .locals 1

    .prologue
    .line 206
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA$SmsType;->a:[Lcom/google/android/apps/analytics/easytracking/GA$SmsType;

    invoke-virtual {v0}, [Lcom/google/android/apps/analytics/easytracking/GA$SmsType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/analytics/easytracking/GA$SmsType;

    return-object v0
.end method
