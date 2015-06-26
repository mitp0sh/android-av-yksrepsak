.class public final enum Lcom/google/android/apps/analytics/easytracking/GA$Category;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum Activation:Lcom/google/android/apps/analytics/easytracking/GA$Category;

.field public static final enum Additional:Lcom/google/android/apps/analytics/easytracking/GA$Category;

.field public static final enum AntiPhishing:Lcom/google/android/apps/analytics/easytracking/GA$Category;

.field public static final enum AntiSpam:Lcom/google/android/apps/analytics/easytracking/GA$Category;

.field public static final enum AntiThief:Lcom/google/android/apps/analytics/easytracking/GA$Category;

.field public static final enum Antivirus:Lcom/google/android/apps/analytics/easytracking/GA$Category;

.field public static final enum Application:Lcom/google/android/apps/analytics/easytracking/GA$Category;

.field public static final enum CommercialLicenseTransfer:Lcom/google/android/apps/analytics/easytracking/GA$Category;

.field public static final enum Help:Lcom/google/android/apps/analytics/easytracking/GA$Category;

.field public static final enum Issues:Lcom/google/android/apps/analytics/easytracking/GA$Category;

.field public static final enum MainWindow:Lcom/google/android/apps/analytics/easytracking/GA$Category;

.field public static final enum MainWizard:Lcom/google/android/apps/analytics/easytracking/GA$Category;

.field public static final enum Portal:Lcom/google/android/apps/analytics/easytracking/GA$Category;

.field public static final enum PremiumFeatureStep:Lcom/google/android/apps/analytics/easytracking/GA$Category;

.field public static final enum PrivacyProtection:Lcom/google/android/apps/analytics/easytracking/GA$Category;

.field private static final synthetic a:[Lcom/google/android/apps/analytics/easytracking/GA$Category;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 116
    new-instance v0, Lcom/google/android/apps/analytics/easytracking/GA$Category;

    const-string v1, "Activation"

    invoke-direct {v0, v1, v3}, Lcom/google/android/apps/analytics/easytracking/GA$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/analytics/easytracking/GA$Category;->Activation:Lcom/google/android/apps/analytics/easytracking/GA$Category;

    .line 117
    new-instance v0, Lcom/google/android/apps/analytics/easytracking/GA$Category;

    const-string v1, "Antivirus"

    invoke-direct {v0, v1, v4}, Lcom/google/android/apps/analytics/easytracking/GA$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/analytics/easytracking/GA$Category;->Antivirus:Lcom/google/android/apps/analytics/easytracking/GA$Category;

    .line 118
    new-instance v0, Lcom/google/android/apps/analytics/easytracking/GA$Category;

    const-string v1, "AntiPhishing"

    invoke-direct {v0, v1, v5}, Lcom/google/android/apps/analytics/easytracking/GA$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/analytics/easytracking/GA$Category;->AntiPhishing:Lcom/google/android/apps/analytics/easytracking/GA$Category;

    .line 119
    new-instance v0, Lcom/google/android/apps/analytics/easytracking/GA$Category;

    const-string v1, "AntiThief"

    invoke-direct {v0, v1, v6}, Lcom/google/android/apps/analytics/easytracking/GA$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/analytics/easytracking/GA$Category;->AntiThief:Lcom/google/android/apps/analytics/easytracking/GA$Category;

    .line 120
    new-instance v0, Lcom/google/android/apps/analytics/easytracking/GA$Category;

    const-string v1, "AntiSpam"

    invoke-direct {v0, v1, v7}, Lcom/google/android/apps/analytics/easytracking/GA$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/analytics/easytracking/GA$Category;->AntiSpam:Lcom/google/android/apps/analytics/easytracking/GA$Category;

    .line 121
    new-instance v0, Lcom/google/android/apps/analytics/easytracking/GA$Category;

    const-string v1, "PrivacyProtection"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/analytics/easytracking/GA$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/analytics/easytracking/GA$Category;->PrivacyProtection:Lcom/google/android/apps/analytics/easytracking/GA$Category;

    .line 122
    new-instance v0, Lcom/google/android/apps/analytics/easytracking/GA$Category;

    const-string v1, "MainWindow"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/analytics/easytracking/GA$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/analytics/easytracking/GA$Category;->MainWindow:Lcom/google/android/apps/analytics/easytracking/GA$Category;

    .line 123
    new-instance v0, Lcom/google/android/apps/analytics/easytracking/GA$Category;

    const-string v1, "Additional"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/analytics/easytracking/GA$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/analytics/easytracking/GA$Category;->Additional:Lcom/google/android/apps/analytics/easytracking/GA$Category;

    .line 124
    new-instance v0, Lcom/google/android/apps/analytics/easytracking/GA$Category;

    const-string v1, "Application"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/analytics/easytracking/GA$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/analytics/easytracking/GA$Category;->Application:Lcom/google/android/apps/analytics/easytracking/GA$Category;

    .line 125
    new-instance v0, Lcom/google/android/apps/analytics/easytracking/GA$Category;

    const-string v1, "Help"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/analytics/easytracking/GA$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/analytics/easytracking/GA$Category;->Help:Lcom/google/android/apps/analytics/easytracking/GA$Category;

    .line 126
    new-instance v0, Lcom/google/android/apps/analytics/easytracking/GA$Category;

    const-string v1, "Issues"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/analytics/easytracking/GA$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/analytics/easytracking/GA$Category;->Issues:Lcom/google/android/apps/analytics/easytracking/GA$Category;

    .line 127
    new-instance v0, Lcom/google/android/apps/analytics/easytracking/GA$Category;

    const-string v1, "CommercialLicenseTransfer"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/analytics/easytracking/GA$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/analytics/easytracking/GA$Category;->CommercialLicenseTransfer:Lcom/google/android/apps/analytics/easytracking/GA$Category;

    .line 128
    new-instance v0, Lcom/google/android/apps/analytics/easytracking/GA$Category;

    const-string v1, "Portal"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/analytics/easytracking/GA$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/analytics/easytracking/GA$Category;->Portal:Lcom/google/android/apps/analytics/easytracking/GA$Category;

    .line 129
    new-instance v0, Lcom/google/android/apps/analytics/easytracking/GA$Category;

    const-string v1, "MainWizard"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/analytics/easytracking/GA$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/analytics/easytracking/GA$Category;->MainWizard:Lcom/google/android/apps/analytics/easytracking/GA$Category;

    .line 130
    new-instance v0, Lcom/google/android/apps/analytics/easytracking/GA$Category;

    const-string v1, "PremiumFeatureStep"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/analytics/easytracking/GA$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/analytics/easytracking/GA$Category;->PremiumFeatureStep:Lcom/google/android/apps/analytics/easytracking/GA$Category;

    .line 115
    const/16 v0, 0xf

    new-array v0, v0, [Lcom/google/android/apps/analytics/easytracking/GA$Category;

    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$Category;->Activation:Lcom/google/android/apps/analytics/easytracking/GA$Category;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$Category;->Antivirus:Lcom/google/android/apps/analytics/easytracking/GA$Category;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$Category;->AntiPhishing:Lcom/google/android/apps/analytics/easytracking/GA$Category;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$Category;->AntiThief:Lcom/google/android/apps/analytics/easytracking/GA$Category;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$Category;->AntiSpam:Lcom/google/android/apps/analytics/easytracking/GA$Category;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/apps/analytics/easytracking/GA$Category;->PrivacyProtection:Lcom/google/android/apps/analytics/easytracking/GA$Category;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/apps/analytics/easytracking/GA$Category;->MainWindow:Lcom/google/android/apps/analytics/easytracking/GA$Category;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/android/apps/analytics/easytracking/GA$Category;->Additional:Lcom/google/android/apps/analytics/easytracking/GA$Category;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/android/apps/analytics/easytracking/GA$Category;->Application:Lcom/google/android/apps/analytics/easytracking/GA$Category;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/android/apps/analytics/easytracking/GA$Category;->Help:Lcom/google/android/apps/analytics/easytracking/GA$Category;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/android/apps/analytics/easytracking/GA$Category;->Issues:Lcom/google/android/apps/analytics/easytracking/GA$Category;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/google/android/apps/analytics/easytracking/GA$Category;->CommercialLicenseTransfer:Lcom/google/android/apps/analytics/easytracking/GA$Category;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/google/android/apps/analytics/easytracking/GA$Category;->Portal:Lcom/google/android/apps/analytics/easytracking/GA$Category;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/google/android/apps/analytics/easytracking/GA$Category;->MainWizard:Lcom/google/android/apps/analytics/easytracking/GA$Category;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/google/android/apps/analytics/easytracking/GA$Category;->PremiumFeatureStep:Lcom/google/android/apps/analytics/easytracking/GA$Category;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/analytics/easytracking/GA$Category;->a:[Lcom/google/android/apps/analytics/easytracking/GA$Category;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/analytics/easytracking/GA$Category;
    .locals 1

    .prologue
    .line 115
    const-class v0, Lcom/google/android/apps/analytics/easytracking/GA$Category;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/analytics/easytracking/GA$Category;

    return-object v0
.end method

.method public static values()[Lcom/google/android/apps/analytics/easytracking/GA$Category;
    .locals 1

    .prologue
    .line 115
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA$Category;->a:[Lcom/google/android/apps/analytics/easytracking/GA$Category;

    invoke-virtual {v0}, [Lcom/google/android/apps/analytics/easytracking/GA$Category;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/analytics/easytracking/GA$Category;

    return-object v0
.end method
