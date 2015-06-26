.class public final enum Lcom/kaspersky/components/ucp/UcpLicenseType;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum Activation1Key:Lcom/kaspersky/components/ucp/UcpLicenseType;

.field public static final enum Activation2Ticket:Lcom/kaspersky/components/ucp/UcpLicenseType;

.field public static final enum ActivationCode:Lcom/kaspersky/components/ucp/UcpLicenseType;

.field public static final enum MobileActivationInfo:Lcom/kaspersky/components/ucp/UcpLicenseType;

.field private static final synthetic a:[Lcom/kaspersky/components/ucp/UcpLicenseType;


# instance fields
.field private final mLicenseType:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10
    new-instance v0, Lcom/kaspersky/components/ucp/UcpLicenseType;

    const-string v1, "Activation1Key"

    invoke-direct {v0, v1, v2, v2}, Lcom/kaspersky/components/ucp/UcpLicenseType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaspersky/components/ucp/UcpLicenseType;->Activation1Key:Lcom/kaspersky/components/ucp/UcpLicenseType;

    .line 11
    new-instance v0, Lcom/kaspersky/components/ucp/UcpLicenseType;

    const-string v1, "Activation2Ticket"

    invoke-direct {v0, v1, v3, v3}, Lcom/kaspersky/components/ucp/UcpLicenseType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaspersky/components/ucp/UcpLicenseType;->Activation2Ticket:Lcom/kaspersky/components/ucp/UcpLicenseType;

    .line 12
    new-instance v0, Lcom/kaspersky/components/ucp/UcpLicenseType;

    const-string v1, "ActivationCode"

    invoke-direct {v0, v1, v4, v4}, Lcom/kaspersky/components/ucp/UcpLicenseType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaspersky/components/ucp/UcpLicenseType;->ActivationCode:Lcom/kaspersky/components/ucp/UcpLicenseType;

    .line 13
    new-instance v0, Lcom/kaspersky/components/ucp/UcpLicenseType;

    const-string v1, "MobileActivationInfo"

    invoke-direct {v0, v1, v5, v5}, Lcom/kaspersky/components/ucp/UcpLicenseType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaspersky/components/ucp/UcpLicenseType;->MobileActivationInfo:Lcom/kaspersky/components/ucp/UcpLicenseType;

    .line 3
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/kaspersky/components/ucp/UcpLicenseType;

    sget-object v1, Lcom/kaspersky/components/ucp/UcpLicenseType;->Activation1Key:Lcom/kaspersky/components/ucp/UcpLicenseType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/kaspersky/components/ucp/UcpLicenseType;->Activation2Ticket:Lcom/kaspersky/components/ucp/UcpLicenseType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kaspersky/components/ucp/UcpLicenseType;->ActivationCode:Lcom/kaspersky/components/ucp/UcpLicenseType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/kaspersky/components/ucp/UcpLicenseType;->MobileActivationInfo:Lcom/kaspersky/components/ucp/UcpLicenseType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/kaspersky/components/ucp/UcpLicenseType;->a:[Lcom/kaspersky/components/ucp/UcpLicenseType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 18
    iput p3, p0, Lcom/kaspersky/components/ucp/UcpLicenseType;->mLicenseType:I

    .line 19
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kaspersky/components/ucp/UcpLicenseType;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/kaspersky/components/ucp/UcpLicenseType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kaspersky/components/ucp/UcpLicenseType;

    return-object v0
.end method

.method public static values()[Lcom/kaspersky/components/ucp/UcpLicenseType;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/kaspersky/components/ucp/UcpLicenseType;->a:[Lcom/kaspersky/components/ucp/UcpLicenseType;

    invoke-virtual {v0}, [Lcom/kaspersky/components/ucp/UcpLicenseType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kaspersky/components/ucp/UcpLicenseType;

    return-object v0
.end method


# virtual methods
.method public final getLicenseType()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/kaspersky/components/ucp/UcpLicenseType;->mLicenseType:I

    return v0
.end method
