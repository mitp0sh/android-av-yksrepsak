.class public final enum Lcom/kaspersky/components/ucp/UcpDeviceType;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum AppleTV:Lcom/kaspersky/components/ucp/UcpDeviceType;

.field public static final enum Desktop:Lcom/kaspersky/components/ucp/UcpDeviceType;

.field public static final enum MacBook:Lcom/kaspersky/components/ucp/UcpDeviceType;

.field public static final enum MacBookAir:Lcom/kaspersky/components/ucp/UcpDeviceType;

.field public static final enum MacBookPro:Lcom/kaspersky/components/ucp/UcpDeviceType;

.field public static final enum MacMini:Lcom/kaspersky/components/ucp/UcpDeviceType;

.field public static final enum MacPro:Lcom/kaspersky/components/ucp/UcpDeviceType;

.field public static final enum Mobile:Lcom/kaspersky/components/ucp/UcpDeviceType;

.field public static final enum Tablet:Lcom/kaspersky/components/ucp/UcpDeviceType;

.field public static final enum Unknown:Lcom/kaspersky/components/ucp/UcpDeviceType;

.field private static final synthetic a:[Lcom/kaspersky/components/ucp/UcpDeviceType;

.field public static final enum iMac:Lcom/kaspersky/components/ucp/UcpDeviceType;

.field public static final enum iPad:Lcom/kaspersky/components/ucp/UcpDeviceType;

.field public static final enum iPhone:Lcom/kaspersky/components/ucp/UcpDeviceType;

.field public static final enum iPod:Lcom/kaspersky/components/ucp/UcpDeviceType;


# instance fields
.field private final mDeviceType:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 11
    new-instance v0, Lcom/kaspersky/components/ucp/UcpDeviceType;

    const-string v1, "Unknown"

    invoke-direct {v0, v1, v4, v4}, Lcom/kaspersky/components/ucp/UcpDeviceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaspersky/components/ucp/UcpDeviceType;->Unknown:Lcom/kaspersky/components/ucp/UcpDeviceType;

    .line 12
    new-instance v0, Lcom/kaspersky/components/ucp/UcpDeviceType;

    const-string v1, "Desktop"

    invoke-direct {v0, v1, v5, v5}, Lcom/kaspersky/components/ucp/UcpDeviceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaspersky/components/ucp/UcpDeviceType;->Desktop:Lcom/kaspersky/components/ucp/UcpDeviceType;

    .line 13
    new-instance v0, Lcom/kaspersky/components/ucp/UcpDeviceType;

    const-string v1, "Mobile"

    invoke-direct {v0, v1, v6, v6}, Lcom/kaspersky/components/ucp/UcpDeviceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaspersky/components/ucp/UcpDeviceType;->Mobile:Lcom/kaspersky/components/ucp/UcpDeviceType;

    .line 14
    new-instance v0, Lcom/kaspersky/components/ucp/UcpDeviceType;

    const-string v1, "Tablet"

    invoke-direct {v0, v1, v7, v7}, Lcom/kaspersky/components/ucp/UcpDeviceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaspersky/components/ucp/UcpDeviceType;->Tablet:Lcom/kaspersky/components/ucp/UcpDeviceType;

    .line 15
    new-instance v0, Lcom/kaspersky/components/ucp/UcpDeviceType;

    const-string v1, "iMac"

    invoke-direct {v0, v1, v8, v8}, Lcom/kaspersky/components/ucp/UcpDeviceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaspersky/components/ucp/UcpDeviceType;->iMac:Lcom/kaspersky/components/ucp/UcpDeviceType;

    .line 16
    new-instance v0, Lcom/kaspersky/components/ucp/UcpDeviceType;

    const-string v1, "MacBook"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/kaspersky/components/ucp/UcpDeviceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaspersky/components/ucp/UcpDeviceType;->MacBook:Lcom/kaspersky/components/ucp/UcpDeviceType;

    .line 17
    new-instance v0, Lcom/kaspersky/components/ucp/UcpDeviceType;

    const-string v1, "MacPro"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/kaspersky/components/ucp/UcpDeviceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaspersky/components/ucp/UcpDeviceType;->MacPro:Lcom/kaspersky/components/ucp/UcpDeviceType;

    .line 18
    new-instance v0, Lcom/kaspersky/components/ucp/UcpDeviceType;

    const-string v1, "MacMini"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/kaspersky/components/ucp/UcpDeviceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaspersky/components/ucp/UcpDeviceType;->MacMini:Lcom/kaspersky/components/ucp/UcpDeviceType;

    .line 19
    new-instance v0, Lcom/kaspersky/components/ucp/UcpDeviceType;

    const-string v1, "MacBookPro"

    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/kaspersky/components/ucp/UcpDeviceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaspersky/components/ucp/UcpDeviceType;->MacBookPro:Lcom/kaspersky/components/ucp/UcpDeviceType;

    .line 20
    new-instance v0, Lcom/kaspersky/components/ucp/UcpDeviceType;

    const-string v1, "MacBookAir"

    const/16 v2, 0x9

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/kaspersky/components/ucp/UcpDeviceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaspersky/components/ucp/UcpDeviceType;->MacBookAir:Lcom/kaspersky/components/ucp/UcpDeviceType;

    .line 21
    new-instance v0, Lcom/kaspersky/components/ucp/UcpDeviceType;

    const-string v1, "iPod"

    const/16 v2, 0xa

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/kaspersky/components/ucp/UcpDeviceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaspersky/components/ucp/UcpDeviceType;->iPod:Lcom/kaspersky/components/ucp/UcpDeviceType;

    .line 22
    new-instance v0, Lcom/kaspersky/components/ucp/UcpDeviceType;

    const-string v1, "iPhone"

    const/16 v2, 0xb

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/kaspersky/components/ucp/UcpDeviceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaspersky/components/ucp/UcpDeviceType;->iPhone:Lcom/kaspersky/components/ucp/UcpDeviceType;

    .line 23
    new-instance v0, Lcom/kaspersky/components/ucp/UcpDeviceType;

    const-string v1, "iPad"

    const/16 v2, 0xc

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/kaspersky/components/ucp/UcpDeviceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaspersky/components/ucp/UcpDeviceType;->iPad:Lcom/kaspersky/components/ucp/UcpDeviceType;

    .line 24
    new-instance v0, Lcom/kaspersky/components/ucp/UcpDeviceType;

    const-string v1, "AppleTV"

    const/16 v2, 0xd

    const/16 v3, 0xd

    invoke-direct {v0, v1, v2, v3}, Lcom/kaspersky/components/ucp/UcpDeviceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaspersky/components/ucp/UcpDeviceType;->AppleTV:Lcom/kaspersky/components/ucp/UcpDeviceType;

    .line 9
    const/16 v0, 0xe

    new-array v0, v0, [Lcom/kaspersky/components/ucp/UcpDeviceType;

    sget-object v1, Lcom/kaspersky/components/ucp/UcpDeviceType;->Unknown:Lcom/kaspersky/components/ucp/UcpDeviceType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/kaspersky/components/ucp/UcpDeviceType;->Desktop:Lcom/kaspersky/components/ucp/UcpDeviceType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/kaspersky/components/ucp/UcpDeviceType;->Mobile:Lcom/kaspersky/components/ucp/UcpDeviceType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/kaspersky/components/ucp/UcpDeviceType;->Tablet:Lcom/kaspersky/components/ucp/UcpDeviceType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/kaspersky/components/ucp/UcpDeviceType;->iMac:Lcom/kaspersky/components/ucp/UcpDeviceType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/kaspersky/components/ucp/UcpDeviceType;->MacBook:Lcom/kaspersky/components/ucp/UcpDeviceType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/kaspersky/components/ucp/UcpDeviceType;->MacPro:Lcom/kaspersky/components/ucp/UcpDeviceType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/kaspersky/components/ucp/UcpDeviceType;->MacMini:Lcom/kaspersky/components/ucp/UcpDeviceType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/kaspersky/components/ucp/UcpDeviceType;->MacBookPro:Lcom/kaspersky/components/ucp/UcpDeviceType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/kaspersky/components/ucp/UcpDeviceType;->MacBookAir:Lcom/kaspersky/components/ucp/UcpDeviceType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/kaspersky/components/ucp/UcpDeviceType;->iPod:Lcom/kaspersky/components/ucp/UcpDeviceType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/kaspersky/components/ucp/UcpDeviceType;->iPhone:Lcom/kaspersky/components/ucp/UcpDeviceType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/kaspersky/components/ucp/UcpDeviceType;->iPad:Lcom/kaspersky/components/ucp/UcpDeviceType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/kaspersky/components/ucp/UcpDeviceType;->AppleTV:Lcom/kaspersky/components/ucp/UcpDeviceType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/kaspersky/components/ucp/UcpDeviceType;->a:[Lcom/kaspersky/components/ucp/UcpDeviceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 29
    iput p3, p0, Lcom/kaspersky/components/ucp/UcpDeviceType;->mDeviceType:I

    .line 30
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kaspersky/components/ucp/UcpDeviceType;
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/kaspersky/components/ucp/UcpDeviceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kaspersky/components/ucp/UcpDeviceType;

    return-object v0
.end method

.method public static values()[Lcom/kaspersky/components/ucp/UcpDeviceType;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/kaspersky/components/ucp/UcpDeviceType;->a:[Lcom/kaspersky/components/ucp/UcpDeviceType;

    invoke-virtual {v0}, [Lcom/kaspersky/components/ucp/UcpDeviceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kaspersky/components/ucp/UcpDeviceType;

    return-object v0
.end method


# virtual methods
.method public final getDeviceType()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/kaspersky/components/ucp/UcpDeviceType;->mDeviceType:I

    return v0
.end method
