.class public final enum Lcom/google/android/apps/analytics/easytracking/GA$AvCleanMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum AskUser:Lcom/google/android/apps/analytics/easytracking/GA$AvCleanMode;

.field public static final enum Delete:Lcom/google/android/apps/analytics/easytracking/GA$AvCleanMode;

.field public static final enum PutToQuarantine:Lcom/google/android/apps/analytics/easytracking/GA$AvCleanMode;

.field public static final enum Skip:Lcom/google/android/apps/analytics/easytracking/GA$AvCleanMode;

.field public static final enum Unknown:Lcom/google/android/apps/analytics/easytracking/GA$AvCleanMode;

.field private static final synthetic a:[Lcom/google/android/apps/analytics/easytracking/GA$AvCleanMode;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 315
    new-instance v0, Lcom/google/android/apps/analytics/easytracking/GA$AvCleanMode;

    const-string v1, "PutToQuarantine"

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/analytics/easytracking/GA$AvCleanMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/analytics/easytracking/GA$AvCleanMode;->PutToQuarantine:Lcom/google/android/apps/analytics/easytracking/GA$AvCleanMode;

    new-instance v0, Lcom/google/android/apps/analytics/easytracking/GA$AvCleanMode;

    const-string v1, "Delete"

    invoke-direct {v0, v1, v3}, Lcom/google/android/apps/analytics/easytracking/GA$AvCleanMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/analytics/easytracking/GA$AvCleanMode;->Delete:Lcom/google/android/apps/analytics/easytracking/GA$AvCleanMode;

    new-instance v0, Lcom/google/android/apps/analytics/easytracking/GA$AvCleanMode;

    const-string v1, "AskUser"

    invoke-direct {v0, v1, v4}, Lcom/google/android/apps/analytics/easytracking/GA$AvCleanMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/analytics/easytracking/GA$AvCleanMode;->AskUser:Lcom/google/android/apps/analytics/easytracking/GA$AvCleanMode;

    new-instance v0, Lcom/google/android/apps/analytics/easytracking/GA$AvCleanMode;

    const-string v1, "Skip"

    invoke-direct {v0, v1, v5}, Lcom/google/android/apps/analytics/easytracking/GA$AvCleanMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/analytics/easytracking/GA$AvCleanMode;->Skip:Lcom/google/android/apps/analytics/easytracking/GA$AvCleanMode;

    new-instance v0, Lcom/google/android/apps/analytics/easytracking/GA$AvCleanMode;

    const-string v1, "Unknown"

    invoke-direct {v0, v1, v6}, Lcom/google/android/apps/analytics/easytracking/GA$AvCleanMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/analytics/easytracking/GA$AvCleanMode;->Unknown:Lcom/google/android/apps/analytics/easytracking/GA$AvCleanMode;

    .line 314
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/android/apps/analytics/easytracking/GA$AvCleanMode;

    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$AvCleanMode;->PutToQuarantine:Lcom/google/android/apps/analytics/easytracking/GA$AvCleanMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$AvCleanMode;->Delete:Lcom/google/android/apps/analytics/easytracking/GA$AvCleanMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$AvCleanMode;->AskUser:Lcom/google/android/apps/analytics/easytracking/GA$AvCleanMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$AvCleanMode;->Skip:Lcom/google/android/apps/analytics/easytracking/GA$AvCleanMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$AvCleanMode;->Unknown:Lcom/google/android/apps/analytics/easytracking/GA$AvCleanMode;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/apps/analytics/easytracking/GA$AvCleanMode;->a:[Lcom/google/android/apps/analytics/easytracking/GA$AvCleanMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 314
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getCleanMode(I)Lcom/google/android/apps/analytics/easytracking/GA$AvCleanMode;
    .locals 1

    .prologue
    .line 318
    packed-switch p0, :pswitch_data_0

    .line 328
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA$AvCleanMode;->Unknown:Lcom/google/android/apps/analytics/easytracking/GA$AvCleanMode;

    :goto_0
    return-object v0

    .line 320
    :pswitch_0
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA$AvCleanMode;->PutToQuarantine:Lcom/google/android/apps/analytics/easytracking/GA$AvCleanMode;

    goto :goto_0

    .line 322
    :pswitch_1
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA$AvCleanMode;->Delete:Lcom/google/android/apps/analytics/easytracking/GA$AvCleanMode;

    goto :goto_0

    .line 324
    :pswitch_2
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA$AvCleanMode;->Skip:Lcom/google/android/apps/analytics/easytracking/GA$AvCleanMode;

    goto :goto_0

    .line 326
    :pswitch_3
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA$AvCleanMode;->AskUser:Lcom/google/android/apps/analytics/easytracking/GA$AvCleanMode;

    goto :goto_0

    .line 318
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/analytics/easytracking/GA$AvCleanMode;
    .locals 1

    .prologue
    .line 314
    const-class v0, Lcom/google/android/apps/analytics/easytracking/GA$AvCleanMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/analytics/easytracking/GA$AvCleanMode;

    return-object v0
.end method

.method public static values()[Lcom/google/android/apps/analytics/easytracking/GA$AvCleanMode;
    .locals 1

    .prologue
    .line 314
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA$AvCleanMode;->a:[Lcom/google/android/apps/analytics/easytracking/GA$AvCleanMode;

    invoke-virtual {v0}, [Lcom/google/android/apps/analytics/easytracking/GA$AvCleanMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/analytics/easytracking/GA$AvCleanMode;

    return-object v0
.end method
