.class public final enum Lcom/google/android/apps/analytics/easytracking/GA$LicenseType;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum Beta:Lcom/google/android/apps/analytics/easytracking/GA$LicenseType;

.field public static final enum Free:Lcom/google/android/apps/analytics/easytracking/GA$LicenseType;

.field public static final enum Oem:Lcom/google/android/apps/analytics/easytracking/GA$LicenseType;

.field public static final enum Paid:Lcom/google/android/apps/analytics/easytracking/GA$LicenseType;

.field public static final enum Testing:Lcom/google/android/apps/analytics/easytracking/GA$LicenseType;

.field public static final enum Trial:Lcom/google/android/apps/analytics/easytracking/GA$LicenseType;

.field public static final enum Undefined:Lcom/google/android/apps/analytics/easytracking/GA$LicenseType;

.field private static final synthetic a:[Lcom/google/android/apps/analytics/easytracking/GA$LicenseType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 577
    new-instance v0, Lcom/google/android/apps/analytics/easytracking/GA$LicenseType;

    const-string v1, "Trial"

    invoke-direct {v0, v1, v3}, Lcom/google/android/apps/analytics/easytracking/GA$LicenseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/analytics/easytracking/GA$LicenseType;->Trial:Lcom/google/android/apps/analytics/easytracking/GA$LicenseType;

    new-instance v0, Lcom/google/android/apps/analytics/easytracking/GA$LicenseType;

    const-string v1, "Paid"

    invoke-direct {v0, v1, v4}, Lcom/google/android/apps/analytics/easytracking/GA$LicenseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/analytics/easytracking/GA$LicenseType;->Paid:Lcom/google/android/apps/analytics/easytracking/GA$LicenseType;

    new-instance v0, Lcom/google/android/apps/analytics/easytracking/GA$LicenseType;

    const-string v1, "Beta"

    invoke-direct {v0, v1, v5}, Lcom/google/android/apps/analytics/easytracking/GA$LicenseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/analytics/easytracking/GA$LicenseType;->Beta:Lcom/google/android/apps/analytics/easytracking/GA$LicenseType;

    new-instance v0, Lcom/google/android/apps/analytics/easytracking/GA$LicenseType;

    const-string v1, "Testing"

    invoke-direct {v0, v1, v6}, Lcom/google/android/apps/analytics/easytracking/GA$LicenseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/analytics/easytracking/GA$LicenseType;->Testing:Lcom/google/android/apps/analytics/easytracking/GA$LicenseType;

    new-instance v0, Lcom/google/android/apps/analytics/easytracking/GA$LicenseType;

    const-string v1, "Undefined"

    invoke-direct {v0, v1, v7}, Lcom/google/android/apps/analytics/easytracking/GA$LicenseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/analytics/easytracking/GA$LicenseType;->Undefined:Lcom/google/android/apps/analytics/easytracking/GA$LicenseType;

    new-instance v0, Lcom/google/android/apps/analytics/easytracking/GA$LicenseType;

    const-string v1, "Oem"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/analytics/easytracking/GA$LicenseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/analytics/easytracking/GA$LicenseType;->Oem:Lcom/google/android/apps/analytics/easytracking/GA$LicenseType;

    new-instance v0, Lcom/google/android/apps/analytics/easytracking/GA$LicenseType;

    const-string v1, "Free"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/analytics/easytracking/GA$LicenseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/analytics/easytracking/GA$LicenseType;->Free:Lcom/google/android/apps/analytics/easytracking/GA$LicenseType;

    .line 576
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/google/android/apps/analytics/easytracking/GA$LicenseType;

    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$LicenseType;->Trial:Lcom/google/android/apps/analytics/easytracking/GA$LicenseType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$LicenseType;->Paid:Lcom/google/android/apps/analytics/easytracking/GA$LicenseType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$LicenseType;->Beta:Lcom/google/android/apps/analytics/easytracking/GA$LicenseType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$LicenseType;->Testing:Lcom/google/android/apps/analytics/easytracking/GA$LicenseType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$LicenseType;->Undefined:Lcom/google/android/apps/analytics/easytracking/GA$LicenseType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/apps/analytics/easytracking/GA$LicenseType;->Oem:Lcom/google/android/apps/analytics/easytracking/GA$LicenseType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/apps/analytics/easytracking/GA$LicenseType;->Free:Lcom/google/android/apps/analytics/easytracking/GA$LicenseType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/analytics/easytracking/GA$LicenseType;->a:[Lcom/google/android/apps/analytics/easytracking/GA$LicenseType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 576
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static convertLicenseTypeToGA(I)Lcom/google/android/apps/analytics/easytracking/GA$LicenseType;
    .locals 1

    .prologue
    .line 580
    packed-switch p0, :pswitch_data_0

    .line 603
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA$LicenseType;->Undefined:Lcom/google/android/apps/analytics/easytracking/GA$LicenseType;

    :goto_0
    return-object v0

    .line 585
    :pswitch_0
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA$LicenseType;->Paid:Lcom/google/android/apps/analytics/easytracking/GA$LicenseType;

    goto :goto_0

    .line 588
    :pswitch_1
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA$LicenseType;->Testing:Lcom/google/android/apps/analytics/easytracking/GA$LicenseType;

    goto :goto_0

    .line 591
    :pswitch_2
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA$LicenseType;->Beta:Lcom/google/android/apps/analytics/easytracking/GA$LicenseType;

    goto :goto_0

    .line 594
    :pswitch_3
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA$LicenseType;->Oem:Lcom/google/android/apps/analytics/easytracking/GA$LicenseType;

    goto :goto_0

    .line 597
    :pswitch_4
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA$LicenseType;->Free:Lcom/google/android/apps/analytics/easytracking/GA$LicenseType;

    goto :goto_0

    .line 600
    :pswitch_5
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA$LicenseType;->Trial:Lcom/google/android/apps/analytics/easytracking/GA$LicenseType;

    goto :goto_0

    .line 580
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_5
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/analytics/easytracking/GA$LicenseType;
    .locals 1

    .prologue
    .line 576
    const-class v0, Lcom/google/android/apps/analytics/easytracking/GA$LicenseType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/analytics/easytracking/GA$LicenseType;

    return-object v0
.end method

.method public static values()[Lcom/google/android/apps/analytics/easytracking/GA$LicenseType;
    .locals 1

    .prologue
    .line 576
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA$LicenseType;->a:[Lcom/google/android/apps/analytics/easytracking/GA$LicenseType;

    invoke-virtual {v0}, [Lcom/google/android/apps/analytics/easytracking/GA$LicenseType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/analytics/easytracking/GA$LicenseType;

    return-object v0
.end method
