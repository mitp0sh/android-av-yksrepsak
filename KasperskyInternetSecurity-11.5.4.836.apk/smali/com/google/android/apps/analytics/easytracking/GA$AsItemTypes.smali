.class public final enum Lcom/google/android/apps/analytics/easytracking/GA$AsItemTypes;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum PhoneCalls:Lcom/google/android/apps/analytics/easytracking/GA$AsItemTypes;

.field public static final enum Sms:Lcom/google/android/apps/analytics/easytracking/GA$AsItemTypes;

.field public static final enum SmsAndPhoneCalls:Lcom/google/android/apps/analytics/easytracking/GA$AsItemTypes;

.field private static final synthetic a:[Lcom/google/android/apps/analytics/easytracking/GA$AsItemTypes;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 492
    new-instance v0, Lcom/google/android/apps/analytics/easytracking/GA$AsItemTypes;

    const-string v1, "Sms"

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/analytics/easytracking/GA$AsItemTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/analytics/easytracking/GA$AsItemTypes;->Sms:Lcom/google/android/apps/analytics/easytracking/GA$AsItemTypes;

    new-instance v0, Lcom/google/android/apps/analytics/easytracking/GA$AsItemTypes;

    const-string v1, "PhoneCalls"

    invoke-direct {v0, v1, v3}, Lcom/google/android/apps/analytics/easytracking/GA$AsItemTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/analytics/easytracking/GA$AsItemTypes;->PhoneCalls:Lcom/google/android/apps/analytics/easytracking/GA$AsItemTypes;

    new-instance v0, Lcom/google/android/apps/analytics/easytracking/GA$AsItemTypes;

    const-string v1, "SmsAndPhoneCalls"

    invoke-direct {v0, v1, v4}, Lcom/google/android/apps/analytics/easytracking/GA$AsItemTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/analytics/easytracking/GA$AsItemTypes;->SmsAndPhoneCalls:Lcom/google/android/apps/analytics/easytracking/GA$AsItemTypes;

    .line 491
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/apps/analytics/easytracking/GA$AsItemTypes;

    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$AsItemTypes;->Sms:Lcom/google/android/apps/analytics/easytracking/GA$AsItemTypes;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$AsItemTypes;->PhoneCalls:Lcom/google/android/apps/analytics/easytracking/GA$AsItemTypes;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$AsItemTypes;->SmsAndPhoneCalls:Lcom/google/android/apps/analytics/easytracking/GA$AsItemTypes;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/apps/analytics/easytracking/GA$AsItemTypes;->a:[Lcom/google/android/apps/analytics/easytracking/GA$AsItemTypes;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 491
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getItemType(I)Lcom/google/android/apps/analytics/easytracking/GA$AsItemTypes;
    .locals 2

    .prologue
    .line 495
    packed-switch p0, :pswitch_data_0

    .line 503
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unknown AS item type!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 497
    :pswitch_0
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA$AsItemTypes;->Sms:Lcom/google/android/apps/analytics/easytracking/GA$AsItemTypes;

    .line 501
    :goto_0
    return-object v0

    .line 499
    :pswitch_1
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA$AsItemTypes;->PhoneCalls:Lcom/google/android/apps/analytics/easytracking/GA$AsItemTypes;

    goto :goto_0

    .line 501
    :pswitch_2
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA$AsItemTypes;->SmsAndPhoneCalls:Lcom/google/android/apps/analytics/easytracking/GA$AsItemTypes;

    goto :goto_0

    .line 495
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/analytics/easytracking/GA$AsItemTypes;
    .locals 1

    .prologue
    .line 491
    const-class v0, Lcom/google/android/apps/analytics/easytracking/GA$AsItemTypes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/analytics/easytracking/GA$AsItemTypes;

    return-object v0
.end method

.method public static values()[Lcom/google/android/apps/analytics/easytracking/GA$AsItemTypes;
    .locals 1

    .prologue
    .line 491
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA$AsItemTypes;->a:[Lcom/google/android/apps/analytics/easytracking/GA$AsItemTypes;

    invoke-virtual {v0}, [Lcom/google/android/apps/analytics/easytracking/GA$AsItemTypes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/analytics/easytracking/GA$AsItemTypes;

    return-object v0
.end method
