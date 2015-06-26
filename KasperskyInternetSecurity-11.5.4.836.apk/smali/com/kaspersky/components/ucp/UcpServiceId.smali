.class public final enum Lcom/kaspersky/components/ucp/UcpServiceId;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum KOne:Lcom/kaspersky/components/ucp/UcpServiceId;

.field public static final enum KasperskyAntiVirusMac:Lcom/kaspersky/components/ucp/UcpServiceId;

.field public static final enum KasperskyAntiVirusWin:Lcom/kaspersky/components/ucp/UcpServiceId;

.field public static final enum KasperskyFacebookProtection:Lcom/kaspersky/components/ucp/UcpServiceId;

.field public static final enum KasperskyInternetSecurity:Lcom/kaspersky/components/ucp/UcpServiceId;

.field public static final enum KasperskyMobileSecurity:Lcom/kaspersky/components/ucp/UcpServiceId;

.field public static final enum KasperskyPasswordManager:Lcom/kaspersky/components/ucp/UcpServiceId;

.field public static final enum KasperskyPure:Lcom/kaspersky/components/ucp/UcpServiceId;

.field public static final enum KasperskySecurityMac:Lcom/kaspersky/components/ucp/UcpServiceId;

.field public static final enum KasperskyTabletSecurity:Lcom/kaspersky/components/ucp/UcpServiceId;

.field public static final enum SafeInternet:Lcom/kaspersky/components/ucp/UcpServiceId;

.field public static final enum Socialization:Lcom/kaspersky/components/ucp/UcpServiceId;

.field private static final synthetic a:[Lcom/kaspersky/components/ucp/UcpServiceId;


# instance fields
.field private final mServiceId:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 12
    new-instance v0, Lcom/kaspersky/components/ucp/UcpServiceId;

    const-string v1, "KasperskyInternetSecurity"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v4}, Lcom/kaspersky/components/ucp/UcpServiceId;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaspersky/components/ucp/UcpServiceId;->KasperskyInternetSecurity:Lcom/kaspersky/components/ucp/UcpServiceId;

    .line 13
    new-instance v0, Lcom/kaspersky/components/ucp/UcpServiceId;

    const-string v1, "KasperskyAntiVirusWin"

    invoke-direct {v0, v1, v4, v5}, Lcom/kaspersky/components/ucp/UcpServiceId;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaspersky/components/ucp/UcpServiceId;->KasperskyAntiVirusWin:Lcom/kaspersky/components/ucp/UcpServiceId;

    .line 14
    new-instance v0, Lcom/kaspersky/components/ucp/UcpServiceId;

    const-string v1, "KasperskyMobileSecurity"

    invoke-direct {v0, v1, v5, v6}, Lcom/kaspersky/components/ucp/UcpServiceId;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaspersky/components/ucp/UcpServiceId;->KasperskyMobileSecurity:Lcom/kaspersky/components/ucp/UcpServiceId;

    .line 15
    new-instance v0, Lcom/kaspersky/components/ucp/UcpServiceId;

    const-string v1, "KasperskyTabletSecurity"

    invoke-direct {v0, v1, v6, v7}, Lcom/kaspersky/components/ucp/UcpServiceId;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaspersky/components/ucp/UcpServiceId;->KasperskyTabletSecurity:Lcom/kaspersky/components/ucp/UcpServiceId;

    .line 16
    new-instance v0, Lcom/kaspersky/components/ucp/UcpServiceId;

    const-string v1, "KasperskyPasswordManager"

    invoke-direct {v0, v1, v7, v8}, Lcom/kaspersky/components/ucp/UcpServiceId;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaspersky/components/ucp/UcpServiceId;->KasperskyPasswordManager:Lcom/kaspersky/components/ucp/UcpServiceId;

    .line 17
    new-instance v0, Lcom/kaspersky/components/ucp/UcpServiceId;

    const-string v1, "KasperskyFacebookProtection"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v8, v2}, Lcom/kaspersky/components/ucp/UcpServiceId;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaspersky/components/ucp/UcpServiceId;->KasperskyFacebookProtection:Lcom/kaspersky/components/ucp/UcpServiceId;

    .line 18
    new-instance v0, Lcom/kaspersky/components/ucp/UcpServiceId;

    const-string v1, "KOne"

    const/4 v2, 0x6

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/kaspersky/components/ucp/UcpServiceId;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaspersky/components/ucp/UcpServiceId;->KOne:Lcom/kaspersky/components/ucp/UcpServiceId;

    .line 19
    new-instance v0, Lcom/kaspersky/components/ucp/UcpServiceId;

    const-string v1, "KasperskyPure"

    const/4 v2, 0x7

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/kaspersky/components/ucp/UcpServiceId;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaspersky/components/ucp/UcpServiceId;->KasperskyPure:Lcom/kaspersky/components/ucp/UcpServiceId;

    .line 20
    new-instance v0, Lcom/kaspersky/components/ucp/UcpServiceId;

    const-string v1, "KasperskySecurityMac"

    const/16 v2, 0x8

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/kaspersky/components/ucp/UcpServiceId;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaspersky/components/ucp/UcpServiceId;->KasperskySecurityMac:Lcom/kaspersky/components/ucp/UcpServiceId;

    .line 21
    new-instance v0, Lcom/kaspersky/components/ucp/UcpServiceId;

    const-string v1, "KasperskyAntiVirusMac"

    const/16 v2, 0x9

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/kaspersky/components/ucp/UcpServiceId;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaspersky/components/ucp/UcpServiceId;->KasperskyAntiVirusMac:Lcom/kaspersky/components/ucp/UcpServiceId;

    .line 22
    new-instance v0, Lcom/kaspersky/components/ucp/UcpServiceId;

    const-string v1, "Socialization"

    const/16 v2, 0xa

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/kaspersky/components/ucp/UcpServiceId;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaspersky/components/ucp/UcpServiceId;->Socialization:Lcom/kaspersky/components/ucp/UcpServiceId;

    .line 23
    new-instance v0, Lcom/kaspersky/components/ucp/UcpServiceId;

    const-string v1, "SafeInternet"

    const/16 v2, 0xb

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/kaspersky/components/ucp/UcpServiceId;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaspersky/components/ucp/UcpServiceId;->SafeInternet:Lcom/kaspersky/components/ucp/UcpServiceId;

    .line 3
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/kaspersky/components/ucp/UcpServiceId;

    const/4 v1, 0x0

    sget-object v2, Lcom/kaspersky/components/ucp/UcpServiceId;->KasperskyInternetSecurity:Lcom/kaspersky/components/ucp/UcpServiceId;

    aput-object v2, v0, v1

    sget-object v1, Lcom/kaspersky/components/ucp/UcpServiceId;->KasperskyAntiVirusWin:Lcom/kaspersky/components/ucp/UcpServiceId;

    aput-object v1, v0, v4

    sget-object v1, Lcom/kaspersky/components/ucp/UcpServiceId;->KasperskyMobileSecurity:Lcom/kaspersky/components/ucp/UcpServiceId;

    aput-object v1, v0, v5

    sget-object v1, Lcom/kaspersky/components/ucp/UcpServiceId;->KasperskyTabletSecurity:Lcom/kaspersky/components/ucp/UcpServiceId;

    aput-object v1, v0, v6

    sget-object v1, Lcom/kaspersky/components/ucp/UcpServiceId;->KasperskyPasswordManager:Lcom/kaspersky/components/ucp/UcpServiceId;

    aput-object v1, v0, v7

    sget-object v1, Lcom/kaspersky/components/ucp/UcpServiceId;->KasperskyFacebookProtection:Lcom/kaspersky/components/ucp/UcpServiceId;

    aput-object v1, v0, v8

    const/4 v1, 0x6

    sget-object v2, Lcom/kaspersky/components/ucp/UcpServiceId;->KOne:Lcom/kaspersky/components/ucp/UcpServiceId;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/kaspersky/components/ucp/UcpServiceId;->KasperskyPure:Lcom/kaspersky/components/ucp/UcpServiceId;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/kaspersky/components/ucp/UcpServiceId;->KasperskySecurityMac:Lcom/kaspersky/components/ucp/UcpServiceId;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/kaspersky/components/ucp/UcpServiceId;->KasperskyAntiVirusMac:Lcom/kaspersky/components/ucp/UcpServiceId;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/kaspersky/components/ucp/UcpServiceId;->Socialization:Lcom/kaspersky/components/ucp/UcpServiceId;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/kaspersky/components/ucp/UcpServiceId;->SafeInternet:Lcom/kaspersky/components/ucp/UcpServiceId;

    aput-object v2, v0, v1

    sput-object v0, Lcom/kaspersky/components/ucp/UcpServiceId;->a:[Lcom/kaspersky/components/ucp/UcpServiceId;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 28
    iput p3, p0, Lcom/kaspersky/components/ucp/UcpServiceId;->mServiceId:I

    .line 29
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kaspersky/components/ucp/UcpServiceId;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/kaspersky/components/ucp/UcpServiceId;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kaspersky/components/ucp/UcpServiceId;

    return-object v0
.end method

.method public static values()[Lcom/kaspersky/components/ucp/UcpServiceId;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/kaspersky/components/ucp/UcpServiceId;->a:[Lcom/kaspersky/components/ucp/UcpServiceId;

    invoke-virtual {v0}, [Lcom/kaspersky/components/ucp/UcpServiceId;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kaspersky/components/ucp/UcpServiceId;

    return-object v0
.end method


# virtual methods
.method public final getUcpServiceId()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/kaspersky/components/ucp/UcpServiceId;->mServiceId:I

    return v0
.end method
