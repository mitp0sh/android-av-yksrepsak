.class public final enum Lcom/kaspersky/components/ipm/LicenseInfo$Status;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum BLOCKED:Lcom/kaspersky/components/ipm/LicenseInfo$Status;

.field public static final enum LIMITED:Lcom/kaspersky/components/ipm/LicenseInfo$Status;

.field public static final enum TRIAL_RESET_DETECTED:Lcom/kaspersky/components/ipm/LicenseInfo$Status;

.field public static final enum UNSPECIFIED:Lcom/kaspersky/components/ipm/LicenseInfo$Status;

.field public static final enum VALID:Lcom/kaspersky/components/ipm/LicenseInfo$Status;

.field private static final synthetic a:[Lcom/kaspersky/components/ipm/LicenseInfo$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    new-instance v0, Lcom/kaspersky/components/ipm/LicenseInfo$Status;

    const-string v1, "UNSPECIFIED"

    invoke-direct {v0, v1, v2}, Lcom/kaspersky/components/ipm/LicenseInfo$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaspersky/components/ipm/LicenseInfo$Status;->UNSPECIFIED:Lcom/kaspersky/components/ipm/LicenseInfo$Status;

    new-instance v0, Lcom/kaspersky/components/ipm/LicenseInfo$Status;

    const-string v1, "BLOCKED"

    invoke-direct {v0, v1, v3}, Lcom/kaspersky/components/ipm/LicenseInfo$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaspersky/components/ipm/LicenseInfo$Status;->BLOCKED:Lcom/kaspersky/components/ipm/LicenseInfo$Status;

    new-instance v0, Lcom/kaspersky/components/ipm/LicenseInfo$Status;

    const-string v1, "LIMITED"

    invoke-direct {v0, v1, v4}, Lcom/kaspersky/components/ipm/LicenseInfo$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaspersky/components/ipm/LicenseInfo$Status;->LIMITED:Lcom/kaspersky/components/ipm/LicenseInfo$Status;

    new-instance v0, Lcom/kaspersky/components/ipm/LicenseInfo$Status;

    const-string v1, "VALID"

    invoke-direct {v0, v1, v5}, Lcom/kaspersky/components/ipm/LicenseInfo$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaspersky/components/ipm/LicenseInfo$Status;->VALID:Lcom/kaspersky/components/ipm/LicenseInfo$Status;

    new-instance v0, Lcom/kaspersky/components/ipm/LicenseInfo$Status;

    const-string v1, "TRIAL_RESET_DETECTED"

    invoke-direct {v0, v1, v6}, Lcom/kaspersky/components/ipm/LicenseInfo$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaspersky/components/ipm/LicenseInfo$Status;->TRIAL_RESET_DETECTED:Lcom/kaspersky/components/ipm/LicenseInfo$Status;

    .line 22
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/kaspersky/components/ipm/LicenseInfo$Status;

    sget-object v1, Lcom/kaspersky/components/ipm/LicenseInfo$Status;->UNSPECIFIED:Lcom/kaspersky/components/ipm/LicenseInfo$Status;

    aput-object v1, v0, v2

    sget-object v1, Lcom/kaspersky/components/ipm/LicenseInfo$Status;->BLOCKED:Lcom/kaspersky/components/ipm/LicenseInfo$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kaspersky/components/ipm/LicenseInfo$Status;->LIMITED:Lcom/kaspersky/components/ipm/LicenseInfo$Status;

    aput-object v1, v0, v4

    sget-object v1, Lcom/kaspersky/components/ipm/LicenseInfo$Status;->VALID:Lcom/kaspersky/components/ipm/LicenseInfo$Status;

    aput-object v1, v0, v5

    sget-object v1, Lcom/kaspersky/components/ipm/LicenseInfo$Status;->TRIAL_RESET_DETECTED:Lcom/kaspersky/components/ipm/LicenseInfo$Status;

    aput-object v1, v0, v6

    sput-object v0, Lcom/kaspersky/components/ipm/LicenseInfo$Status;->a:[Lcom/kaspersky/components/ipm/LicenseInfo$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kaspersky/components/ipm/LicenseInfo$Status;
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/kaspersky/components/ipm/LicenseInfo$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kaspersky/components/ipm/LicenseInfo$Status;

    return-object v0
.end method

.method public static values()[Lcom/kaspersky/components/ipm/LicenseInfo$Status;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/kaspersky/components/ipm/LicenseInfo$Status;->a:[Lcom/kaspersky/components/ipm/LicenseInfo$Status;

    invoke-virtual {v0}, [Lcom/kaspersky/components/ipm/LicenseInfo$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kaspersky/components/ipm/LicenseInfo$Status;

    return-object v0
.end method
