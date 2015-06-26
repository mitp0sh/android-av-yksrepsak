.class public final enum Lcom/google/android/apps/analytics/easytracking/GA$AvSchedulerMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum Daily:Lcom/google/android/apps/analytics/easytracking/GA$AvSchedulerMode;

.field public static final enum Disabled:Lcom/google/android/apps/analytics/easytracking/GA$AvSchedulerMode;

.field public static final enum Weekly:Lcom/google/android/apps/analytics/easytracking/GA$AvSchedulerMode;

.field private static final synthetic a:[Lcom/google/android/apps/analytics/easytracking/GA$AvSchedulerMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 169
    new-instance v0, Lcom/google/android/apps/analytics/easytracking/GA$AvSchedulerMode;

    const-string v1, "Weekly"

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/analytics/easytracking/GA$AvSchedulerMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/analytics/easytracking/GA$AvSchedulerMode;->Weekly:Lcom/google/android/apps/analytics/easytracking/GA$AvSchedulerMode;

    new-instance v0, Lcom/google/android/apps/analytics/easytracking/GA$AvSchedulerMode;

    const-string v1, "Daily"

    invoke-direct {v0, v1, v3}, Lcom/google/android/apps/analytics/easytracking/GA$AvSchedulerMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/analytics/easytracking/GA$AvSchedulerMode;->Daily:Lcom/google/android/apps/analytics/easytracking/GA$AvSchedulerMode;

    new-instance v0, Lcom/google/android/apps/analytics/easytracking/GA$AvSchedulerMode;

    const-string v1, "Disabled"

    invoke-direct {v0, v1, v4}, Lcom/google/android/apps/analytics/easytracking/GA$AvSchedulerMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/analytics/easytracking/GA$AvSchedulerMode;->Disabled:Lcom/google/android/apps/analytics/easytracking/GA$AvSchedulerMode;

    .line 168
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/apps/analytics/easytracking/GA$AvSchedulerMode;

    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$AvSchedulerMode;->Weekly:Lcom/google/android/apps/analytics/easytracking/GA$AvSchedulerMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$AvSchedulerMode;->Daily:Lcom/google/android/apps/analytics/easytracking/GA$AvSchedulerMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$AvSchedulerMode;->Disabled:Lcom/google/android/apps/analytics/easytracking/GA$AvSchedulerMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/apps/analytics/easytracking/GA$AvSchedulerMode;->a:[Lcom/google/android/apps/analytics/easytracking/GA$AvSchedulerMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 168
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getMode(I)Lcom/google/android/apps/analytics/easytracking/GA$AvSchedulerMode;
    .locals 1

    .prologue
    .line 172
    packed-switch p0, :pswitch_data_0

    .line 178
    :pswitch_0
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA$AvSchedulerMode;->Daily:Lcom/google/android/apps/analytics/easytracking/GA$AvSchedulerMode;

    :goto_0
    return-object v0

    .line 174
    :pswitch_1
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA$AvSchedulerMode;->Weekly:Lcom/google/android/apps/analytics/easytracking/GA$AvSchedulerMode;

    goto :goto_0

    .line 176
    :pswitch_2
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA$AvSchedulerMode;->Disabled:Lcom/google/android/apps/analytics/easytracking/GA$AvSchedulerMode;

    goto :goto_0

    .line 172
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/analytics/easytracking/GA$AvSchedulerMode;
    .locals 1

    .prologue
    .line 168
    const-class v0, Lcom/google/android/apps/analytics/easytracking/GA$AvSchedulerMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/analytics/easytracking/GA$AvSchedulerMode;

    return-object v0
.end method

.method public static values()[Lcom/google/android/apps/analytics/easytracking/GA$AvSchedulerMode;
    .locals 1

    .prologue
    .line 168
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA$AvSchedulerMode;->a:[Lcom/google/android/apps/analytics/easytracking/GA$AvSchedulerMode;

    invoke-virtual {v0}, [Lcom/google/android/apps/analytics/easytracking/GA$AvSchedulerMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/analytics/easytracking/GA$AvSchedulerMode;

    return-object v0
.end method
