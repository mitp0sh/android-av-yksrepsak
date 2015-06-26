.class public final enum Lcom/kaspersky/components/ucp/UcpLicenseStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum ActivationError:Lcom/kaspersky/components/ucp/UcpLicenseStatus;

.field public static final enum Active:Lcom/kaspersky/components/ucp/UcpLicenseStatus;

.field public static final enum Reserved:Lcom/kaspersky/components/ucp/UcpLicenseStatus;

.field private static final synthetic a:[Lcom/kaspersky/components/ucp/UcpLicenseStatus;


# instance fields
.field private final mLicenseStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11
    new-instance v0, Lcom/kaspersky/components/ucp/UcpLicenseStatus;

    const-string v1, "Active"

    invoke-direct {v0, v1, v2, v2}, Lcom/kaspersky/components/ucp/UcpLicenseStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaspersky/components/ucp/UcpLicenseStatus;->Active:Lcom/kaspersky/components/ucp/UcpLicenseStatus;

    .line 12
    new-instance v0, Lcom/kaspersky/components/ucp/UcpLicenseStatus;

    const-string v1, "Reserved"

    invoke-direct {v0, v1, v3, v3}, Lcom/kaspersky/components/ucp/UcpLicenseStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaspersky/components/ucp/UcpLicenseStatus;->Reserved:Lcom/kaspersky/components/ucp/UcpLicenseStatus;

    .line 13
    new-instance v0, Lcom/kaspersky/components/ucp/UcpLicenseStatus;

    const-string v1, "ActivationError"

    invoke-direct {v0, v1, v4, v4}, Lcom/kaspersky/components/ucp/UcpLicenseStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaspersky/components/ucp/UcpLicenseStatus;->ActivationError:Lcom/kaspersky/components/ucp/UcpLicenseStatus;

    .line 3
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/kaspersky/components/ucp/UcpLicenseStatus;

    sget-object v1, Lcom/kaspersky/components/ucp/UcpLicenseStatus;->Active:Lcom/kaspersky/components/ucp/UcpLicenseStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/kaspersky/components/ucp/UcpLicenseStatus;->Reserved:Lcom/kaspersky/components/ucp/UcpLicenseStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kaspersky/components/ucp/UcpLicenseStatus;->ActivationError:Lcom/kaspersky/components/ucp/UcpLicenseStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/kaspersky/components/ucp/UcpLicenseStatus;->a:[Lcom/kaspersky/components/ucp/UcpLicenseStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 18
    iput p3, p0, Lcom/kaspersky/components/ucp/UcpLicenseStatus;->mLicenseStatus:I

    .line 19
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kaspersky/components/ucp/UcpLicenseStatus;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/kaspersky/components/ucp/UcpLicenseStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kaspersky/components/ucp/UcpLicenseStatus;

    return-object v0
.end method

.method public static values()[Lcom/kaspersky/components/ucp/UcpLicenseStatus;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/kaspersky/components/ucp/UcpLicenseStatus;->a:[Lcom/kaspersky/components/ucp/UcpLicenseStatus;

    invoke-virtual {v0}, [Lcom/kaspersky/components/ucp/UcpLicenseStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kaspersky/components/ucp/UcpLicenseStatus;

    return-object v0
.end method


# virtual methods
.method public final getLicenseStatus()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/kaspersky/components/ucp/UcpLicenseStatus;->mLicenseStatus:I

    return v0
.end method
