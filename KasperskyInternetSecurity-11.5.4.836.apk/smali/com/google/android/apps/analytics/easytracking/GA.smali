.class public final Lcom/google/android/apps/analytics/easytracking/GA;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field private static final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static c:Lcom/google/analytics/tracking/android/EasyTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/google/android/apps/analytics/easytracking/GA;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/analytics/easytracking/GA;->a:Ljava/lang/String;

    .line 50
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/google/android/apps/analytics/easytracking/GA;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 750
    return-void
.end method

.method public static a()Lcom/google/analytics/tracking/android/EasyTracker;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA;->c:Lcom/google/analytics/tracking/android/EasyTracker;

    return-object v0
.end method

.method public static a(I)V
    .locals 5

    .prologue
    .line 482
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA$Category;->AntiThief:Lcom/google/android/apps/analytics/easytracking/GA$Category;

    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$AtActions;->SetSecretCode:Lcom/google/android/apps/analytics/easytracking/GA$AtActions;

    const-string v2, "code length"

    int-to-long v3, p0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/analytics/easytracking/GA;->a(Lcom/google/android/apps/analytics/easytracking/GA$Category;Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Long;)V

    .line 483
    return-void
.end method

.method public static a(J)V
    .locals 6

    .prologue
    .line 543
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA$Category;->PrivacyProtection:Lcom/google/android/apps/analytics/easytracking/GA$Category;

    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$PpActions;->AutoHidingModeChanged:Lcom/google/android/apps/analytics/easytracking/GA$PpActions;

    const-string v2, "%d minutes"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/analytics/easytracking/GA;->a(Lcom/google/android/apps/analytics/easytracking/GA$Category;Ljava/lang/Enum;Ljava/lang/String;)V

    .line 544
    return-void
.end method

.method public static a(Lcom/google/android/apps/analytics/easytracking/GA$AdditionalActions;Ljava/lang/Boolean;)V
    .locals 2

    .prologue
    .line 649
    const/4 v0, 0x0

    .line 650
    if-eqz p1, :cond_0

    .line 651
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/apps/analytics/easytracking/GA;->q(Z)Ljava/lang/String;

    move-result-object v0

    .line 653
    :cond_0
    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$Category;->Additional:Lcom/google/android/apps/analytics/easytracking/GA$Category;

    invoke-static {v1, p0, v0}, Lcom/google/android/apps/analytics/easytracking/GA;->a(Lcom/google/android/apps/analytics/easytracking/GA$Category;Ljava/lang/Enum;Ljava/lang/String;)V

    .line 654
    return-void
.end method

.method public static a(Lcom/google/android/apps/analytics/easytracking/GA$AsFilterMode;)V
    .locals 3

    .prologue
    .line 509
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA$Category;->AntiSpam:Lcom/google/android/apps/analytics/easytracking/GA$Category;

    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$AsActions;->AntiSpamModeChanged:Lcom/google/android/apps/analytics/easytracking/GA$AsActions;

    invoke-virtual {p0}, Lcom/google/android/apps/analytics/easytracking/GA$AsFilterMode;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/analytics/easytracking/GA;->a(Lcom/google/android/apps/analytics/easytracking/GA$Category;Ljava/lang/Enum;Ljava/lang/String;)V

    .line 510
    return-void
.end method

.method public static a(Lcom/google/android/apps/analytics/easytracking/GA$AvActionOnThreatDetection;)V
    .locals 3

    .prologue
    .line 375
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA$Category;->Antivirus:Lcom/google/android/apps/analytics/easytracking/GA$Category;

    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;->ActionOnThreatDetectionChanged:Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;

    invoke-virtual {p0}, Lcom/google/android/apps/analytics/easytracking/GA$AvActionOnThreatDetection;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/analytics/easytracking/GA;->a(Lcom/google/android/apps/analytics/easytracking/GA$Category;Ljava/lang/Enum;Ljava/lang/String;)V

    .line 376
    return-void
.end method

.method public static a(Lcom/google/android/apps/analytics/easytracking/GA$AvCleanMode;)V
    .locals 3

    .prologue
    .line 392
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA$Category;->Antivirus:Lcom/google/android/apps/analytics/easytracking/GA$Category;

    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;->CleanModeChanged:Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;

    invoke-virtual {p0}, Lcom/google/android/apps/analytics/easytracking/GA$AvCleanMode;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/analytics/easytracking/GA;->a(Lcom/google/android/apps/analytics/easytracking/GA$Category;Ljava/lang/Enum;Ljava/lang/String;)V

    .line 393
    return-void
.end method

.method public static a(Lcom/google/android/apps/analytics/easytracking/GA$AvFileTypeScanMode;)V
    .locals 3

    .prologue
    .line 371
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA$Category;->Antivirus:Lcom/google/android/apps/analytics/easytracking/GA$Category;

    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;->FileTypeToScanChanged:Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;

    invoke-virtual {p0}, Lcom/google/android/apps/analytics/easytracking/GA$AvFileTypeScanMode;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/analytics/easytracking/GA;->a(Lcom/google/android/apps/analytics/easytracking/GA$Category;Ljava/lang/Enum;Ljava/lang/String;)V

    .line 372
    return-void
.end method

.method public static a(Lcom/google/android/apps/analytics/easytracking/GA$AvScanType;)V
    .locals 3

    .prologue
    .line 379
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA$Category;->Antivirus:Lcom/google/android/apps/analytics/easytracking/GA$Category;

    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;->Scan:Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;

    invoke-virtual {p0}, Lcom/google/android/apps/analytics/easytracking/GA$AvScanType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/analytics/easytracking/GA;->a(Lcom/google/android/apps/analytics/easytracking/GA$Category;Ljava/lang/Enum;Ljava/lang/String;)V

    .line 380
    return-void
.end method

.method public static a(Lcom/google/android/apps/analytics/easytracking/GA$AvScanType;JI)V
    .locals 5

    .prologue
    .line 397
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA;->c:Lcom/google/analytics/tracking/android/EasyTracker;

    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$Category;->Antivirus:Lcom/google/android/apps/analytics/easytracking/GA$Category;

    invoke-virtual {v1}, Lcom/google/android/apps/analytics/easytracking/GA$Category;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "Scan time"

    invoke-virtual {p0}, Lcom/google/android/apps/analytics/easytracking/GA$AvScanType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/google/analytics/tracking/android/MapBuilder;->createTiming(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/MapBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/analytics/tracking/android/MapBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/EasyTracker;->send(Ljava/util/Map;)V

    .line 404
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA$Category;->Antivirus:Lcom/google/android/apps/analytics/easytracking/GA$Category;

    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;->ScanResults:Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;

    const-string v2, "virus detected"

    int-to-long v3, p3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/analytics/easytracking/GA;->a(Lcom/google/android/apps/analytics/easytracking/GA$Category;Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Long;)V

    .line 405
    return-void
.end method

.method public static a(Lcom/google/android/apps/analytics/easytracking/GA$AvSchedulerMode;)V
    .locals 3

    .prologue
    .line 361
    invoke-virtual {p0}, Lcom/google/android/apps/analytics/easytracking/GA$AvSchedulerMode;->toString()Ljava/lang/String;

    move-result-object v0

    .line 362
    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$Category;->Antivirus:Lcom/google/android/apps/analytics/easytracking/GA$Category;

    sget-object v2, Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;->ScanScheduleChanged:Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;

    invoke-static {v1, v2, v0}, Lcom/google/android/apps/analytics/easytracking/GA;->a(Lcom/google/android/apps/analytics/easytracking/GA$Category;Ljava/lang/Enum;Ljava/lang/String;)V

    .line 363
    return-void
.end method

.method private static a(Lcom/google/android/apps/analytics/easytracking/GA$Category;Ljava/lang/Enum;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 219
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sendEvent category="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/apps/analytics/easytracking/GA$Category;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", label="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kms/kmsshared/KMSLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA;->c:Lcom/google/analytics/tracking/android/EasyTracker;

    invoke-virtual {p0}, Lcom/google/android/apps/analytics/easytracking/GA$Category;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, p2, v3}, Lcom/google/analytics/tracking/android/MapBuilder;->createEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcom/google/analytics/tracking/android/MapBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/analytics/tracking/android/MapBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/EasyTracker;->send(Ljava/util/Map;)V

    .line 221
    return-void
.end method

.method private static a(Lcom/google/android/apps/analytics/easytracking/GA$Category;Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 3

    .prologue
    .line 224
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sendEvent category="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/apps/analytics/easytracking/GA$Category;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", label="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kms/kmsshared/KMSLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA;->c:Lcom/google/analytics/tracking/android/EasyTracker;

    invoke-virtual {p0}, Lcom/google/android/apps/analytics/easytracking/GA$Category;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p2, p3}, Lcom/google/analytics/tracking/android/MapBuilder;->createEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcom/google/analytics/tracking/android/MapBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/analytics/tracking/android/MapBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/EasyTracker;->send(Ljava/util/Map;)V

    .line 227
    return-void
.end method

.method public static a(Lcom/google/android/apps/analytics/easytracking/GA$IssueActions;)V
    .locals 2

    .prologue
    .line 676
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA$Category;->Issues:Lcom/google/android/apps/analytics/easytracking/GA$Category;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/google/android/apps/analytics/easytracking/GA;->a(Lcom/google/android/apps/analytics/easytracking/GA$Category;Ljava/lang/Enum;Ljava/lang/String;)V

    .line 677
    return-void
.end method

.method public static a(Lcom/google/android/apps/analytics/easytracking/GA$LicenseTransferActions;Lcom/kms/licensing/ActivationType;)V
    .locals 2

    .prologue
    .line 765
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA$Category;->CommercialLicenseTransfer:Lcom/google/android/apps/analytics/easytracking/GA$Category;

    invoke-virtual {p1}, Lcom/kms/licensing/ActivationType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/google/android/apps/analytics/easytracking/GA;->a(Lcom/google/android/apps/analytics/easytracking/GA$Category;Ljava/lang/Enum;Ljava/lang/String;)V

    .line 766
    return-void
.end method

.method public static a(Lcom/google/android/apps/analytics/easytracking/GA$LicenseType;)V
    .locals 3

    .prologue
    .line 609
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA$Category;->Activation:Lcom/google/android/apps/analytics/easytracking/GA$Category;

    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$ActivationActions;->Activated:Lcom/google/android/apps/analytics/easytracking/GA$ActivationActions;

    invoke-virtual {p0}, Lcom/google/android/apps/analytics/easytracking/GA$LicenseType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/analytics/easytracking/GA;->a(Lcom/google/android/apps/analytics/easytracking/GA$Category;Ljava/lang/Enum;Ljava/lang/String;)V

    .line 610
    return-void
.end method

.method public static a(Lcom/google/android/apps/analytics/easytracking/GA$MainWindowActions;)V
    .locals 2

    .prologue
    .line 567
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA$Category;->MainWindow:Lcom/google/android/apps/analytics/easytracking/GA$Category;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/google/android/apps/analytics/easytracking/GA;->a(Lcom/google/android/apps/analytics/easytracking/GA$Category;Ljava/lang/Enum;Ljava/lang/String;)V

    .line 568
    return-void
.end method

.method public static a(Lcom/google/android/apps/analytics/easytracking/GA$PremiumActions;)V
    .locals 2

    .prologue
    .line 710
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA$PremiumActions;->TryNow:Lcom/google/android/apps/analytics/easytracking/GA$PremiumActions;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/analytics/easytracking/GA$PremiumActions;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 712
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA$Wizards;->PremiumFeatureWizard:Lcom/google/android/apps/analytics/easytracking/GA$Wizards;

    invoke-static {v0}, Lcom/google/android/apps/analytics/easytracking/GA;->a(Lcom/google/android/apps/analytics/easytracking/GA$Wizards;)V

    .line 715
    :cond_0
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA$Category;->PremiumFeatureStep:Lcom/google/android/apps/analytics/easytracking/GA$Category;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/google/android/apps/analytics/easytracking/GA;->a(Lcom/google/android/apps/analytics/easytracking/GA$Category;Ljava/lang/Enum;Ljava/lang/String;)V

    .line 716
    return-void
.end method

.method public static a(Lcom/google/android/apps/analytics/easytracking/GA$SmsType;)V
    .locals 3

    .prologue
    .line 470
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA$Category;->AntiThief:Lcom/google/android/apps/analytics/easytracking/GA$Category;

    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$AtActions;->SendSmsCommand:Lcom/google/android/apps/analytics/easytracking/GA$AtActions;

    invoke-virtual {p0}, Lcom/google/android/apps/analytics/easytracking/GA$SmsType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/analytics/easytracking/GA;->a(Lcom/google/android/apps/analytics/easytracking/GA$Category;Ljava/lang/Enum;Ljava/lang/String;)V

    .line 471
    return-void
.end method

.method public static a(Lcom/google/android/apps/analytics/easytracking/GA$Wizards;)V
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    .line 734
    invoke-static {}, Lsr;->i()Lsz;

    move-result-object v0

    .line 735
    invoke-virtual {v0}, Lsz;->d()J

    move-result-wide v1

    .line 737
    cmp-long v3, v1, v5

    if-lez v3, :cond_0

    .line 739
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v1, v3, v1

    .line 740
    invoke-static {p0, v1, v2}, Lcom/google/android/apps/analytics/easytracking/GA;->a(Lcom/google/android/apps/analytics/easytracking/GA$Wizards;J)V

    .line 743
    invoke-virtual {v0, v5, v6}, Lsz;->a(J)V

    .line 744
    invoke-virtual {v0}, Lsz;->g_()V

    .line 746
    :cond_0
    return-void
.end method

.method private static a(Lcom/google/android/apps/analytics/easytracking/GA$Wizards;J)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 277
    invoke-virtual {p0}, Lcom/google/android/apps/analytics/easytracking/GA$Wizards;->toString()Ljava/lang/String;

    move-result-object v0

    .line 278
    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA;->c:Lcom/google/analytics/tracking/android/EasyTracker;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "Time taken to pass wizard"

    invoke-static {v0, v2, v3, v4}, Lcom/google/analytics/tracking/android/MapBuilder;->createTiming(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/MapBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/analytics/tracking/android/MapBuilder;->build()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/analytics/tracking/android/EasyTracker;->send(Ljava/util/Map;)V

    .line 285
    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA;->c:Lcom/google/analytics/tracking/android/EasyTracker;

    const-string v2, "&cd"

    invoke-virtual {v1, v2, v4}, Lcom/google/analytics/tracking/android/EasyTracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "trackWizardFinish wizard="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " takes="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ms"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/kms/kmsshared/KMSLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    return-void
.end method

.method public static a(Lcom/kaspersky/kts/antitheft/KisAtCommandType;Z)V
    .locals 5

    .prologue
    .line 451
    invoke-static {p1}, Lcom/google/android/apps/analytics/easytracking/GA;->q(Z)Ljava/lang/String;

    move-result-object v0

    .line 452
    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$Category;->AntiThief:Lcom/google/android/apps/analytics/easytracking/GA$Category;

    sget-object v2, Lcom/google/android/apps/analytics/easytracking/GA$AtActions;->CommandEnableChanged:Lcom/google/android/apps/analytics/easytracking/GA$AtActions;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/kaspersky/kts/antitheft/KisAtCommandType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/google/android/apps/analytics/easytracking/GA;->a(Lcom/google/android/apps/analytics/easytracking/GA$Category;Ljava/lang/Enum;Ljava/lang/String;)V

    .line 453
    return-void
.end method

.method public static a(Lcom/kms/antiphishing/AntiPhishingMode;)V
    .locals 3

    .prologue
    .line 414
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA$Category;->AntiPhishing:Lcom/google/android/apps/analytics/easytracking/GA$Category;

    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$ApActions;->WebAntiphishingChanged:Lcom/google/android/apps/analytics/easytracking/GA$ApActions;

    invoke-virtual {p0}, Lcom/kms/antiphishing/AntiPhishingMode;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/analytics/easytracking/GA;->a(Lcom/google/android/apps/analytics/easytracking/GA$Category;Ljava/lang/Enum;Ljava/lang/String;)V

    .line 415
    return-void
.end method

.method public static a(Lcom/kms/antivirus/MonitorMode;)V
    .locals 3

    .prologue
    .line 342
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA$Category;->Antivirus:Lcom/google/android/apps/analytics/easytracking/GA$Category;

    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;->ProtectionLevelChanged:Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;

    invoke-virtual {p0}, Lcom/kms/antivirus/MonitorMode;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/analytics/easytracking/GA;->a(Lcom/google/android/apps/analytics/easytracking/GA$Category;Ljava/lang/Enum;Ljava/lang/String;)V

    .line 343
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 232
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA;->c:Lcom/google/analytics/tracking/android/EasyTracker;

    const-string v1, "&cd"

    invoke-virtual {v0, v1, p0}, Lcom/google/analytics/tracking/android/EasyTracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA;->c:Lcom/google/analytics/tracking/android/EasyTracker;

    invoke-static {}, Lcom/google/analytics/tracking/android/MapBuilder;->createAppView()Lcom/google/analytics/tracking/android/MapBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/analytics/tracking/android/MapBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/EasyTracker;->send(Ljava/util/Map;)V

    .line 234
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "trackScreen screen="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kms/kmsshared/KMSLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    return-void
.end method

.method public static a(Lps;)V
    .locals 3

    .prologue
    .line 680
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA$Category;->Issues:Lcom/google/android/apps/analytics/easytracking/GA$Category;

    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$IssueActions;->IgnoreIssue:Lcom/google/android/apps/analytics/easytracking/GA$IssueActions;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/analytics/easytracking/GA;->a(Lcom/google/android/apps/analytics/easytracking/GA$Category;Ljava/lang/Enum;Ljava/lang/String;)V

    .line 681
    return-void
.end method

.method public static a(Lrx;)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 65
    sget-object v2, Lcom/google/android/apps/analytics/easytracking/GA;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-nez v2, :cond_0

    .line 66
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Already inited!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_0
    invoke-static {}, LjJ;->p()Ll;

    move-result-object v2

    .line 70
    sget-object v3, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/analytics/tracking/android/GoogleAnalytics;

    move-result-object v3

    .line 74
    invoke-static {}, Lsr;->h()Lsj;

    move-result-object v4

    invoke-virtual {v4}, Lsj;->u()Z

    move-result v4

    .line 75
    if-nez v4, :cond_3

    :goto_0
    invoke-virtual {v3, v0}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->setAppOptOut(Z)V

    .line 82
    invoke-virtual {v3}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getLogger()Lcom/google/analytics/tracking/android/Logger;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/Logger$LogLevel;->ERROR:Lcom/google/analytics/tracking/android/Logger$LogLevel;

    invoke-interface {v0, v1}, Lcom/google/analytics/tracking/android/Logger;->setLogLevel(Lcom/google/analytics/tracking/android/Logger$LogLevel;)V

    .line 84
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/EasyTracker;->getInstance(Landroid/content/Context;)Lcom/google/analytics/tracking/android/EasyTracker;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/analytics/easytracking/GA;->c:Lcom/google/analytics/tracking/android/EasyTracker;

    .line 87
    const-string v0, "ga_dispatchPeriod"

    invoke-interface {v2, v0}, Ll;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    const-string v0, "ga_dispatchPeriod"

    invoke-interface {v2, v0}, Ll;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 89
    invoke-static {}, Lcom/google/analytics/tracking/android/GAServiceManager;->getInstance()Lcom/google/analytics/tracking/android/GAServiceManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/analytics/tracking/android/GAServiceManager;->setLocalDispatchPeriod(I)V

    .line 91
    :cond_1
    const-string v0, "ga_trackingId"

    invoke-interface {v2, v0}, Ll;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 92
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA;->c:Lcom/google/analytics/tracking/android/EasyTracker;

    const-string v1, "&tid"

    const-string v3, "ga_trackingId"

    invoke-interface {v2, v3}, Ll;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/analytics/tracking/android/EasyTracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :cond_2
    const-class v0, Lkk;

    new-instance v1, Le;

    invoke-direct {v1}, Le;-><init>()V

    invoke-interface {p0, v0, v1}, Lrx;->a(Ljava/lang/Class;Lrz;)V

    .line 96
    const-class v0, Lme;

    new-instance v1, Lc;

    invoke-direct {v1}, Lc;-><init>()V

    invoke-interface {p0, v0, v1}, Lrx;->a(Ljava/lang/Class;Lrz;)V

    .line 97
    return-void

    :cond_3
    move v0, v1

    .line 75
    goto :goto_0
.end method

.method public static a(Z)V
    .locals 3

    .prologue
    .line 100
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SetEnabled with value ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kms/kmsshared/KMSLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/analytics/tracking/android/GoogleAnalytics;

    move-result-object v1

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->setAppOptOut(Z)V

    .line 105
    const-class v1, Lsj;

    monitor-enter v1

    .line 106
    :try_start_0
    invoke-static {}, Lsr;->h()Lsj;

    move-result-object v0

    .line 107
    invoke-virtual {v0, p0}, Lsj;->i(Z)V

    .line 108
    invoke-virtual {v0}, Lsj;->g_()V

    .line 109
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 102
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(ZLcom/google/android/apps/analytics/easytracking/GA$AsItemTypes;)V
    .locals 3

    .prologue
    .line 518
    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$Category;->AntiSpam:Lcom/google/android/apps/analytics/easytracking/GA$Category;

    if-eqz p0, :cond_0

    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA$AsActions;->AddWhiteItem:Lcom/google/android/apps/analytics/easytracking/GA$AsActions;

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/apps/analytics/easytracking/GA$AsItemTypes;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/google/android/apps/analytics/easytracking/GA;->a(Lcom/google/android/apps/analytics/easytracking/GA$Category;Ljava/lang/Enum;Ljava/lang/String;)V

    .line 519
    return-void

    .line 518
    :cond_0
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA$AsActions;->AddBlackItem:Lcom/google/android/apps/analytics/easytracking/GA$AsActions;

    goto :goto_0
.end method

.method public static a(ZZ)V
    .locals 3

    .prologue
    .line 698
    sget-object v2, Lcom/google/android/apps/analytics/easytracking/GA$Category;->Portal:Lcom/google/android/apps/analytics/easytracking/GA$Category;

    if-eqz p0, :cond_0

    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA$PortalActions;->ResgisterToAtWm:Lcom/google/android/apps/analytics/easytracking/GA$PortalActions;

    move-object v1, v0

    :goto_0
    if-eqz p1, :cond_1

    const-string v0, "Create new account"

    :goto_1
    invoke-static {v2, v1, v0}, Lcom/google/android/apps/analytics/easytracking/GA;->a(Lcom/google/android/apps/analytics/easytracking/GA$Category;Ljava/lang/Enum;Ljava/lang/String;)V

    .line 700
    return-void

    .line 698
    :cond_0
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA$PortalActions;->RegisterToKPC:Lcom/google/android/apps/analytics/easytracking/GA$PortalActions;

    move-object v1, v0

    goto :goto_0

    :cond_1
    const-string v0, "Use existing account"

    goto :goto_1
.end method

.method public static b()V
    .locals 3

    .prologue
    .line 338
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA$Category;->Antivirus:Lcom/google/android/apps/analytics/easytracking/GA$Category;

    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;->BasesUpdate:Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;

    const-string v2, "On demand"

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/analytics/easytracking/GA;->a(Lcom/google/android/apps/analytics/easytracking/GA$Category;Ljava/lang/Enum;Ljava/lang/String;)V

    .line 339
    return-void
.end method

.method public static b(Lcom/google/android/apps/analytics/easytracking/GA$AvSchedulerMode;)V
    .locals 3

    .prologue
    .line 366
    invoke-virtual {p0}, Lcom/google/android/apps/analytics/easytracking/GA$AvSchedulerMode;->toString()Ljava/lang/String;

    move-result-object v0

    .line 367
    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$Category;->Antivirus:Lcom/google/android/apps/analytics/easytracking/GA$Category;

    sget-object v2, Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;->UpdateBasesScheduleChanged:Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;

    invoke-static {v1, v2, v0}, Lcom/google/android/apps/analytics/easytracking/GA;->a(Lcom/google/android/apps/analytics/easytracking/GA$Category;Ljava/lang/Enum;Ljava/lang/String;)V

    .line 368
    return-void
.end method

.method public static b(Lcom/google/android/apps/analytics/easytracking/GA$LicenseType;)V
    .locals 4

    .prologue
    .line 626
    invoke-virtual {p0}, Lcom/google/android/apps/analytics/easytracking/GA$LicenseType;->toString()Ljava/lang/String;

    move-result-object v0

    .line 627
    invoke-static {}, Lcom/google/android/apps/analytics/easytracking/GA;->a()Lcom/google/analytics/tracking/android/EasyTracker;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 628
    invoke-static {}, Lcom/google/android/apps/analytics/easytracking/GA;->a()Lcom/google/analytics/tracking/android/EasyTracker;

    move-result-object v1

    sget-object v2, Lcom/google/android/apps/analytics/easytracking/GA$CustomVariable;->LicenseType:Lcom/google/android/apps/analytics/easytracking/GA$CustomVariable;

    invoke-virtual {v2}, Lcom/google/android/apps/analytics/easytracking/GA$CustomVariable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/analytics/tracking/android/EasyTracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    :cond_0
    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Set license type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/kms/kmsshared/KMSLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    return-void
.end method

.method public static b(Lcom/google/android/apps/analytics/easytracking/GA$SmsType;)V
    .locals 3

    .prologue
    .line 474
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA$Category;->AntiThief:Lcom/google/android/apps/analytics/easytracking/GA$Category;

    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$AtActions;->ReceiveSmsCommand:Lcom/google/android/apps/analytics/easytracking/GA$AtActions;

    invoke-virtual {p0}, Lcom/google/android/apps/analytics/easytracking/GA$SmsType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/analytics/easytracking/GA;->a(Lcom/google/android/apps/analytics/easytracking/GA$Category;Ljava/lang/Enum;Ljava/lang/String;)V

    .line 475
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 268
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA$Category;->MainWizard:Lcom/google/android/apps/analytics/easytracking/GA$Category;

    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$WizardActions;->SelectSountry:Lcom/google/android/apps/analytics/easytracking/GA$WizardActions;

    invoke-static {v0, v1, p0}, Lcom/google/android/apps/analytics/easytracking/GA;->a(Lcom/google/android/apps/analytics/easytracking/GA$Category;Ljava/lang/Enum;Ljava/lang/String;)V

    .line 269
    return-void
.end method

.method public static b(Lps;)V
    .locals 3

    .prologue
    .line 684
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA$Category;->Issues:Lcom/google/android/apps/analytics/easytracking/GA$Category;

    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$IssueActions;->TryToSolveIssue:Lcom/google/android/apps/analytics/easytracking/GA$IssueActions;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/analytics/easytracking/GA;->a(Lcom/google/android/apps/analytics/easytracking/GA$Category;Ljava/lang/Enum;Ljava/lang/String;)V

    .line 685
    return-void
.end method

.method public static b(Z)V
    .locals 3

    .prologue
    .line 272
    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$Category;->MainWizard:Lcom/google/android/apps/analytics/easytracking/GA$Category;

    sget-object v2, Lcom/google/android/apps/analytics/easytracking/GA$WizardActions;->LastWizardStepActivation:Lcom/google/android/apps/analytics/easytracking/GA$WizardActions;

    if-eqz p0, :cond_0

    const-string v0, "There\'s activation code"

    :goto_0
    invoke-static {v1, v2, v0}, Lcom/google/android/apps/analytics/easytracking/GA;->a(Lcom/google/android/apps/analytics/easytracking/GA$Category;Ljava/lang/Enum;Ljava/lang/String;)V

    .line 274
    return-void

    .line 272
    :cond_0
    const-string v0, "Continue with Free license"

    goto :goto_0
.end method

.method public static c()V
    .locals 3

    .prologue
    .line 383
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA$Category;->Antivirus:Lcom/google/android/apps/analytics/easytracking/GA$Category;

    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;->OpenQuarantine:Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/analytics/easytracking/GA;->a(Lcom/google/android/apps/analytics/easytracking/GA$Category;Ljava/lang/Enum;Ljava/lang/String;)V

    .line 384
    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 613
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA$Category;->Activation:Lcom/google/android/apps/analytics/easytracking/GA$Category;

    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$ActivationActions;->ActivationError:Lcom/google/android/apps/analytics/easytracking/GA$ActivationActions;

    invoke-static {v0, v1, p0}, Lcom/google/android/apps/analytics/easytracking/GA;->a(Lcom/google/android/apps/analytics/easytracking/GA$Category;Ljava/lang/Enum;Ljava/lang/String;)V

    .line 614
    return-void
.end method

.method public static c(Lps;)V
    .locals 3

    .prologue
    .line 688
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA$Category;->Issues:Lcom/google/android/apps/analytics/easytracking/GA$Category;

    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$IssueActions;->ExpandIssue:Lcom/google/android/apps/analytics/easytracking/GA$IssueActions;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/analytics/easytracking/GA;->a(Lcom/google/android/apps/analytics/easytracking/GA$Category;Ljava/lang/Enum;Ljava/lang/String;)V

    .line 689
    return-void
.end method

.method public static c(Z)V
    .locals 3

    .prologue
    .line 292
    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$Category;->MainWizard:Lcom/google/android/apps/analytics/easytracking/GA$Category;

    sget-object v2, Lcom/google/android/apps/analytics/easytracking/GA$WizardActions;->ShowAgreement:Lcom/google/android/apps/analytics/easytracking/GA$WizardActions;

    if-eqz p0, :cond_0

    const-string v0, "EULA"

    :goto_0
    invoke-static {v1, v2, v0}, Lcom/google/android/apps/analytics/easytracking/GA;->a(Lcom/google/android/apps/analytics/easytracking/GA$Category;Ljava/lang/Enum;Ljava/lang/String;)V

    .line 293
    return-void

    .line 292
    :cond_0
    const-string v0, "Privacy statement"

    goto :goto_0
.end method

.method public static d()V
    .locals 3

    .prologue
    .line 423
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA$Category;->AntiPhishing:Lcom/google/android/apps/analytics/easytracking/GA$Category;

    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$ApActions;->SetDefaultBrowser:Lcom/google/android/apps/analytics/easytracking/GA$ApActions;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/analytics/easytracking/GA;->a(Lcom/google/android/apps/analytics/easytracking/GA$Category;Ljava/lang/Enum;Ljava/lang/String;)V

    .line 424
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 661
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA$Category;->Help:Lcom/google/android/apps/analytics/easytracking/GA$Category;

    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$AdditionalActions;->SettingsHelpOpened:Lcom/google/android/apps/analytics/easytracking/GA$AdditionalActions;

    invoke-static {v0, v1, p0}, Lcom/google/android/apps/analytics/easytracking/GA;->a(Lcom/google/android/apps/analytics/easytracking/GA$Category;Ljava/lang/Enum;Ljava/lang/String;)V

    .line 662
    return-void
.end method

.method public static d(Z)V
    .locals 3

    .prologue
    .line 346
    invoke-static {p0}, Lcom/google/android/apps/analytics/easytracking/GA;->q(Z)Ljava/lang/String;

    move-result-object v0

    .line 347
    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$Category;->Antivirus:Lcom/google/android/apps/analytics/easytracking/GA$Category;

    sget-object v2, Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;->CloudeCheckChanged:Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;

    invoke-static {v1, v2, v0}, Lcom/google/android/apps/analytics/easytracking/GA;->a(Lcom/google/android/apps/analytics/easytracking/GA$Category;Ljava/lang/Enum;Ljava/lang/String;)V

    .line 348
    return-void
.end method

.method public static e()V
    .locals 3

    .prologue
    .line 427
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA$Category;->AntiPhishing:Lcom/google/android/apps/analytics/easytracking/GA$Category;

    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$ApActions;->OpenDefaultBrowser:Lcom/google/android/apps/analytics/easytracking/GA$ApActions;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/analytics/easytracking/GA;->a(Lcom/google/android/apps/analytics/easytracking/GA$Category;Ljava/lang/Enum;Ljava/lang/String;)V

    .line 428
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 665
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA$Category;->Help:Lcom/google/android/apps/analytics/easytracking/GA$Category;

    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$AdditionalActions;->TrackingInsideHelp:Lcom/google/android/apps/analytics/easytracking/GA$AdditionalActions;

    invoke-static {v0, v1, p0}, Lcom/google/android/apps/analytics/easytracking/GA;->a(Lcom/google/android/apps/analytics/easytracking/GA$Category;Ljava/lang/Enum;Ljava/lang/String;)V

    .line 666
    return-void
.end method

.method public static e(Z)V
    .locals 3

    .prologue
    .line 351
    invoke-static {p0}, Lcom/google/android/apps/analytics/easytracking/GA;->q(Z)Ljava/lang/String;

    move-result-object v0

    .line 352
    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$Category;->Antivirus:Lcom/google/android/apps/analytics/easytracking/GA$Category;

    sget-object v2, Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;->RiskwareCheckChanged:Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;

    invoke-static {v1, v2, v0}, Lcom/google/android/apps/analytics/easytracking/GA;->a(Lcom/google/android/apps/analytics/easytracking/GA$Category;Ljava/lang/Enum;Ljava/lang/String;)V

    .line 353
    return-void
.end method

.method public static f()V
    .locals 3

    .prologue
    .line 478
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA$Category;->AntiThief:Lcom/google/android/apps/analytics/easytracking/GA$Category;

    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$AtActions;->OpenSmsCommandMenu:Lcom/google/android/apps/analytics/easytracking/GA$AtActions;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/analytics/easytracking/GA;->a(Lcom/google/android/apps/analytics/easytracking/GA$Category;Ljava/lang/Enum;Ljava/lang/String;)V

    .line 479
    return-void
.end method

.method public static f(Z)V
    .locals 3

    .prologue
    .line 356
    invoke-static {p0}, Lcom/google/android/apps/analytics/easytracking/GA;->q(Z)Ljava/lang/String;

    move-result-object v0

    .line 357
    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$Category;->Antivirus:Lcom/google/android/apps/analytics/easytracking/GA$Category;

    sget-object v2, Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;->TrustSystemAppsChanged:Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;

    invoke-static {v1, v2, v0}, Lcom/google/android/apps/analytics/easytracking/GA;->a(Lcom/google/android/apps/analytics/easytracking/GA$Category;Ljava/lang/Enum;Ljava/lang/String;)V

    .line 358
    return-void
.end method

.method public static g()V
    .locals 3

    .prologue
    .line 617
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA$Category;->Activation:Lcom/google/android/apps/analytics/easytracking/GA$Category;

    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$ActivationActions;->GotoPurchaseOnline:Lcom/google/android/apps/analytics/easytracking/GA$ActivationActions;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/analytics/easytracking/GA;->a(Lcom/google/android/apps/analytics/easytracking/GA$Category;Ljava/lang/Enum;Ljava/lang/String;)V

    .line 618
    return-void
.end method

.method public static g(Z)V
    .locals 3

    .prologue
    .line 387
    invoke-static {p0}, Lcom/google/android/apps/analytics/easytracking/GA;->q(Z)Ljava/lang/String;

    move-result-object v0

    .line 388
    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$Category;->Antivirus:Lcom/google/android/apps/analytics/easytracking/GA$Category;

    sget-object v2, Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;->TryCureChanged:Lcom/google/android/apps/analytics/easytracking/GA$AntivirusActions;

    invoke-static {v1, v2, v0}, Lcom/google/android/apps/analytics/easytracking/GA;->a(Lcom/google/android/apps/analytics/easytracking/GA$Category;Ljava/lang/Enum;Ljava/lang/String;)V

    .line 389
    return-void
.end method

.method public static h()V
    .locals 3

    .prologue
    .line 621
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA$Category;->Activation:Lcom/google/android/apps/analytics/easytracking/GA$Category;

    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$ActivationActions;->InputCodeByHand:Lcom/google/android/apps/analytics/easytracking/GA$ActivationActions;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/analytics/easytracking/GA;->a(Lcom/google/android/apps/analytics/easytracking/GA$Category;Ljava/lang/Enum;Ljava/lang/String;)V

    .line 622
    return-void
.end method

.method public static h(Z)V
    .locals 3

    .prologue
    .line 418
    invoke-static {p0}, Lcom/google/android/apps/analytics/easytracking/GA;->q(Z)Ljava/lang/String;

    move-result-object v0

    .line 419
    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$Category;->AntiPhishing:Lcom/google/android/apps/analytics/easytracking/GA$Category;

    sget-object v2, Lcom/google/android/apps/analytics/easytracking/GA$ApActions;->SmsAntiphishingChanged:Lcom/google/android/apps/analytics/easytracking/GA$ApActions;

    invoke-static {v1, v2, v0}, Lcom/google/android/apps/analytics/easytracking/GA;->a(Lcom/google/android/apps/analytics/easytracking/GA$Category;Ljava/lang/Enum;Ljava/lang/String;)V

    .line 420
    return-void
.end method

.method public static i()V
    .locals 3

    .prologue
    .line 645
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA$Category;->Additional:Lcom/google/android/apps/analytics/easytracking/GA$Category;

    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$AdditionalActions;->Uninstall:Lcom/google/android/apps/analytics/easytracking/GA$AdditionalActions;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/analytics/easytracking/GA;->a(Lcom/google/android/apps/analytics/easytracking/GA$Category;Ljava/lang/Enum;Ljava/lang/String;)V

    .line 646
    return-void
.end method

.method public static i(Z)V
    .locals 3

    .prologue
    .line 446
    if-eqz p0, :cond_0

    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA$PortalActions;->ResgisterToAtWm:Lcom/google/android/apps/analytics/easytracking/GA$PortalActions;

    .line 447
    :goto_0
    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$Category;->AntiThief:Lcom/google/android/apps/analytics/easytracking/GA$Category;

    sget-object v2, Lcom/google/android/apps/analytics/easytracking/GA$AtActions;->Activated:Lcom/google/android/apps/analytics/easytracking/GA$AtActions;

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/easytracking/GA$PortalActions;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/google/android/apps/analytics/easytracking/GA;->a(Lcom/google/android/apps/analytics/easytracking/GA$Category;Ljava/lang/Enum;Ljava/lang/String;)V

    .line 448
    return-void

    .line 446
    :cond_0
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA$PortalActions;->RegisterToKPC:Lcom/google/android/apps/analytics/easytracking/GA$PortalActions;

    goto :goto_0
.end method

.method public static j()V
    .locals 3

    .prologue
    .line 657
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA$Category;->Application:Lcom/google/android/apps/analytics/easytracking/GA$Category;

    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$AdditionalActions;->ApplicationUpdated:Lcom/google/android/apps/analytics/easytracking/GA$AdditionalActions;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/analytics/easytracking/GA;->a(Lcom/google/android/apps/analytics/easytracking/GA$Category;Ljava/lang/Enum;Ljava/lang/String;)V

    .line 658
    return-void
.end method

.method public static j(Z)V
    .locals 3

    .prologue
    .line 456
    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$Category;->AntiThief:Lcom/google/android/apps/analytics/easytracking/GA$Category;

    sget-object v2, Lcom/google/android/apps/analytics/easytracking/GA$AtActions;->OpenPortal:Lcom/google/android/apps/analytics/easytracking/GA$AtActions;

    if-eqz p0, :cond_0

    const-string v0, "Settings"

    :goto_0
    invoke-static {v1, v2, v0}, Lcom/google/android/apps/analytics/easytracking/GA;->a(Lcom/google/android/apps/analytics/easytracking/GA$Category;Ljava/lang/Enum;Ljava/lang/String;)V

    .line 457
    return-void

    .line 456
    :cond_0
    const-string v0, "Main Screen"

    goto :goto_0
.end method

.method public static k()V
    .locals 3

    .prologue
    .line 720
    invoke-static {}, Lsr;->i()Lsz;

    move-result-object v0

    .line 721
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lsz;->a(J)V

    .line 722
    invoke-virtual {v0}, Lsz;->g_()V

    .line 723
    return-void
.end method

.method public static k(Z)V
    .locals 3

    .prologue
    .line 460
    invoke-static {p0}, Lcom/google/android/apps/analytics/easytracking/GA;->q(Z)Ljava/lang/String;

    move-result-object v0

    .line 461
    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$Category;->AntiThief:Lcom/google/android/apps/analytics/easytracking/GA$Category;

    sget-object v2, Lcom/google/android/apps/analytics/easytracking/GA$AtActions;->SimWatchChanged:Lcom/google/android/apps/analytics/easytracking/GA$AtActions;

    invoke-static {v1, v2, v0}, Lcom/google/android/apps/analytics/easytracking/GA;->a(Lcom/google/android/apps/analytics/easytracking/GA$Category;Ljava/lang/Enum;Ljava/lang/String;)V

    .line 462
    return-void
.end method

.method public static l(Z)V
    .locals 3

    .prologue
    .line 465
    invoke-static {p0}, Lcom/google/android/apps/analytics/easytracking/GA;->q(Z)Ljava/lang/String;

    move-result-object v0

    .line 466
    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$Category;->AntiThief:Lcom/google/android/apps/analytics/easytracking/GA$Category;

    sget-object v2, Lcom/google/android/apps/analytics/easytracking/GA$AtActions;->SimWatchBlockChanged:Lcom/google/android/apps/analytics/easytracking/GA$AtActions;

    invoke-static {v1, v2, v0}, Lcom/google/android/apps/analytics/easytracking/GA;->a(Lcom/google/android/apps/analytics/easytracking/GA$Category;Ljava/lang/Enum;Ljava/lang/String;)V

    .line 467
    return-void
.end method

.method public static m(Z)V
    .locals 3

    .prologue
    .line 513
    invoke-static {p0}, Lcom/google/android/apps/analytics/easytracking/GA;->q(Z)Ljava/lang/String;

    move-result-object v0

    .line 514
    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$Category;->AntiSpam:Lcom/google/android/apps/analytics/easytracking/GA$Category;

    sget-object v2, Lcom/google/android/apps/analytics/easytracking/GA$AsActions;->BlockNonNumericPhonesChanged:Lcom/google/android/apps/analytics/easytracking/GA$AsActions;

    invoke-static {v1, v2, v0}, Lcom/google/android/apps/analytics/easytracking/GA;->a(Lcom/google/android/apps/analytics/easytracking/GA$Category;Ljava/lang/Enum;Ljava/lang/String;)V

    .line 515
    return-void
.end method

.method public static n(Z)V
    .locals 3

    .prologue
    .line 528
    invoke-static {p0}, Lcom/google/android/apps/analytics/easytracking/GA;->q(Z)Ljava/lang/String;

    move-result-object v0

    .line 529
    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$Category;->PrivacyProtection:Lcom/google/android/apps/analytics/easytracking/GA$Category;

    sget-object v2, Lcom/google/android/apps/analytics/easytracking/GA$PpActions;->ModeChanged:Lcom/google/android/apps/analytics/easytracking/GA$PpActions;

    invoke-static {v1, v2, v0}, Lcom/google/android/apps/analytics/easytracking/GA;->a(Lcom/google/android/apps/analytics/easytracking/GA$Category;Ljava/lang/Enum;Ljava/lang/String;)V

    .line 530
    return-void
.end method

.method public static o(Z)V
    .locals 3

    .prologue
    .line 533
    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$Category;->PrivacyProtection:Lcom/google/android/apps/analytics/easytracking/GA$Category;

    sget-object v2, Lcom/google/android/apps/analytics/easytracking/GA$PpActions;->AddHiddenContact:Lcom/google/android/apps/analytics/easytracking/GA$PpActions;

    if-eqz p0, :cond_0

    const-string v0, "from contacts list"

    :goto_0
    invoke-static {v1, v2, v0}, Lcom/google/android/apps/analytics/easytracking/GA;->a(Lcom/google/android/apps/analytics/easytracking/GA$Category;Ljava/lang/Enum;Ljava/lang/String;)V

    .line 535
    return-void

    .line 533
    :cond_0
    const-string v0, "input phone number"

    goto :goto_0
.end method

.method public static p(Z)V
    .locals 3

    .prologue
    .line 538
    invoke-static {p0}, Lcom/google/android/apps/analytics/easytracking/GA;->q(Z)Ljava/lang/String;

    move-result-object v0

    .line 539
    sget-object v1, Lcom/google/android/apps/analytics/easytracking/GA$Category;->PrivacyProtection:Lcom/google/android/apps/analytics/easytracking/GA$Category;

    sget-object v2, Lcom/google/android/apps/analytics/easytracking/GA$PpActions;->HideBySmsCommandChanged:Lcom/google/android/apps/analytics/easytracking/GA$PpActions;

    invoke-static {v1, v2, v0}, Lcom/google/android/apps/analytics/easytracking/GA;->a(Lcom/google/android/apps/analytics/easytracking/GA$Category;Ljava/lang/Enum;Ljava/lang/String;)V

    .line 540
    return-void
.end method

.method private static q(Z)Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    if-eqz p0, :cond_0

    const-string v0, "Enabled"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Disabled"

    goto :goto_0
.end method
