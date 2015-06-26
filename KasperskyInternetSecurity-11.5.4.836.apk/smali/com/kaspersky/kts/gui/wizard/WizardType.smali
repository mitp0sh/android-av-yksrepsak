.class public abstract enum Lcom/kaspersky/kts/gui/wizard/WizardType;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum Agreements:Lcom/kaspersky/kts/gui/wizard/WizardType;

.field public static final enum AllWebRegistration:Lcom/kaspersky/kts/gui/wizard/WizardType;

.field public static final enum DeviceAdminStep:Lcom/kaspersky/kts/gui/wizard/WizardType;

.field public static final enum Main:Lcom/kaspersky/kts/gui/wizard/WizardType;

.field public static final enum PremiumFeatures:Lcom/kaspersky/kts/gui/wizard/WizardType;

.field public static final enum UcpRegistration:Lcom/kaspersky/kts/gui/wizard/WizardType;

.field private static final synthetic a:[Lcom/kaspersky/kts/gui/wizard/WizardType;


# instance fields
.field private final mStepCounterVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 10
    new-instance v0, Lcom/kaspersky/kts/gui/wizard/WizardType$1;

    const-string v1, "Main"

    invoke-direct {v0, v1, v3, v4}, Lcom/kaspersky/kts/gui/wizard/WizardType$1;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/kaspersky/kts/gui/wizard/WizardType;->Main:Lcom/kaspersky/kts/gui/wizard/WizardType;

    .line 17
    new-instance v0, Lcom/kaspersky/kts/gui/wizard/WizardType$2;

    const-string v1, "Agreements"

    invoke-direct {v0, v1, v4, v3}, Lcom/kaspersky/kts/gui/wizard/WizardType$2;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/kaspersky/kts/gui/wizard/WizardType;->Agreements:Lcom/kaspersky/kts/gui/wizard/WizardType;

    .line 24
    new-instance v0, Lcom/kaspersky/kts/gui/wizard/WizardType$3;

    const-string v1, "UcpRegistration"

    invoke-direct {v0, v1, v5, v3}, Lcom/kaspersky/kts/gui/wizard/WizardType$3;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/kaspersky/kts/gui/wizard/WizardType;->UcpRegistration:Lcom/kaspersky/kts/gui/wizard/WizardType;

    .line 31
    new-instance v0, Lcom/kaspersky/kts/gui/wizard/WizardType$4;

    const-string v1, "AllWebRegistration"

    invoke-direct {v0, v1, v6, v3}, Lcom/kaspersky/kts/gui/wizard/WizardType$4;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/kaspersky/kts/gui/wizard/WizardType;->AllWebRegistration:Lcom/kaspersky/kts/gui/wizard/WizardType;

    .line 38
    new-instance v0, Lcom/kaspersky/kts/gui/wizard/WizardType$5;

    const-string v1, "PremiumFeatures"

    invoke-direct {v0, v1, v7, v3}, Lcom/kaspersky/kts/gui/wizard/WizardType$5;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/kaspersky/kts/gui/wizard/WizardType;->PremiumFeatures:Lcom/kaspersky/kts/gui/wizard/WizardType;

    .line 45
    new-instance v0, Lcom/kaspersky/kts/gui/wizard/WizardType$6;

    const-string v1, "DeviceAdminStep"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/kaspersky/kts/gui/wizard/WizardType$6;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/kaspersky/kts/gui/wizard/WizardType;->DeviceAdminStep:Lcom/kaspersky/kts/gui/wizard/WizardType;

    .line 8
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/kaspersky/kts/gui/wizard/WizardType;

    sget-object v1, Lcom/kaspersky/kts/gui/wizard/WizardType;->Main:Lcom/kaspersky/kts/gui/wizard/WizardType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kaspersky/kts/gui/wizard/WizardType;->Agreements:Lcom/kaspersky/kts/gui/wizard/WizardType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/kaspersky/kts/gui/wizard/WizardType;->UcpRegistration:Lcom/kaspersky/kts/gui/wizard/WizardType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/kaspersky/kts/gui/wizard/WizardType;->AllWebRegistration:Lcom/kaspersky/kts/gui/wizard/WizardType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/kaspersky/kts/gui/wizard/WizardType;->PremiumFeatures:Lcom/kaspersky/kts/gui/wizard/WizardType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/kaspersky/kts/gui/wizard/WizardType;->DeviceAdminStep:Lcom/kaspersky/kts/gui/wizard/WizardType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/kaspersky/kts/gui/wizard/WizardType;->a:[Lcom/kaspersky/kts/gui/wizard/WizardType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 55
    iput-boolean p3, p0, Lcom/kaspersky/kts/gui/wizard/WizardType;->mStepCounterVisible:Z

    .line 56
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IZLcom/kaspersky/kts/gui/wizard/WizardType$1;)V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0, p1, p2, p3}, Lcom/kaspersky/kts/gui/wizard/WizardType;-><init>(Ljava/lang/String;IZ)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kaspersky/kts/gui/wizard/WizardType;
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/kaspersky/kts/gui/wizard/WizardType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kaspersky/kts/gui/wizard/WizardType;

    return-object v0
.end method

.method public static values()[Lcom/kaspersky/kts/gui/wizard/WizardType;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/kaspersky/kts/gui/wizard/WizardType;->a:[Lcom/kaspersky/kts/gui/wizard/WizardType;

    invoke-virtual {v0}, [Lcom/kaspersky/kts/gui/wizard/WizardType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kaspersky/kts/gui/wizard/WizardType;

    return-object v0
.end method


# virtual methods
.method abstract createSteps()LfX;
.end method

.method public isStepCounterVisible()Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/kaspersky/kts/gui/wizard/WizardType;->mStepCounterVisible:Z

    return v0
.end method
