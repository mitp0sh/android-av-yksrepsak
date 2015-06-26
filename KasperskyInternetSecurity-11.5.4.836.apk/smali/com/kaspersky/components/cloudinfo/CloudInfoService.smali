.class public Lcom/kaspersky/components/cloudinfo/CloudInfoService;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()J
    .locals 2

    .prologue
    .line 11
    invoke-static {}, Lcom/kms/ksn/locator/ServiceLocator;->a()Lcom/kms/ksn/locator/ServiceLocator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kms/ksn/locator/ServiceLocator;->b()I

    move-result v0

    invoke-static {v0}, Lcom/kaspersky/components/cloudinfo/CloudInfoService;->getMobileThreatsImpl(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private static native getMobileThreatsImpl(I)J
.end method
