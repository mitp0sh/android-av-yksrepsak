.class public final enum Lcom/kaspersky/components/urlchecker/UrlCategory;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum ANON_PROXY:Lcom/kaspersky/components/urlchecker/UrlCategory;

.field public static final enum CASUAL_GAMES:Lcom/kaspersky/components/urlchecker/UrlCategory;

.field public static final enum CC_PAYMENTS:Lcom/kaspersky/components/urlchecker/UrlCategory;

.field public static final enum CHAT:Lcom/kaspersky/components/urlchecker/UrlCategory;

.field public static final enum COUNTERFEIT:Lcom/kaspersky/components/urlchecker/UrlCategory;

.field public static final enum DRUGS:Lcom/kaspersky/components/urlchecker/UrlCategory;

.field public static final enum GAMBLING:Lcom/kaspersky/components/urlchecker/UrlCategory;

.field public static final enum ILLEGAL_SOFT:Lcom/kaspersky/components/urlchecker/UrlCategory;

.field public static final enum JOB_SITE:Lcom/kaspersky/components/urlchecker/UrlCategory;

.field public static final enum MALWARE:Lcom/kaspersky/components/urlchecker/UrlCategory;

.field public static final enum PHISHING:Lcom/kaspersky/components/urlchecker/UrlCategory;

.field public static final enum PORN:Lcom/kaspersky/components/urlchecker/UrlCategory;

.field public static final enum SHOPS:Lcom/kaspersky/components/urlchecker/UrlCategory;

.field public static final enum SOCIAL_NET:Lcom/kaspersky/components/urlchecker/UrlCategory;

.field public static final enum SWEARING:Lcom/kaspersky/components/urlchecker/UrlCategory;

.field public static final enum VIOLENCE:Lcom/kaspersky/components/urlchecker/UrlCategory;

.field public static final enum WEAPONS:Lcom/kaspersky/components/urlchecker/UrlCategory;

.field public static final enum WEB_MAIL:Lcom/kaspersky/components/urlchecker/UrlCategory;

.field private static final synthetic a:[Lcom/kaspersky/components/urlchecker/UrlCategory;


# instance fields
.field private final mPower:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 18
    new-instance v0, Lcom/kaspersky/components/urlchecker/UrlCategory;

    const-string v1, "PORN"

    invoke-direct {v0, v1, v4, v4}, Lcom/kaspersky/components/urlchecker/UrlCategory;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaspersky/components/urlchecker/UrlCategory;->PORN:Lcom/kaspersky/components/urlchecker/UrlCategory;

    .line 19
    new-instance v0, Lcom/kaspersky/components/urlchecker/UrlCategory;

    const-string v1, "ILLEGAL_SOFT"

    invoke-direct {v0, v1, v5, v5}, Lcom/kaspersky/components/urlchecker/UrlCategory;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaspersky/components/urlchecker/UrlCategory;->ILLEGAL_SOFT:Lcom/kaspersky/components/urlchecker/UrlCategory;

    .line 20
    new-instance v0, Lcom/kaspersky/components/urlchecker/UrlCategory;

    const-string v1, "DRUGS"

    invoke-direct {v0, v1, v6, v6}, Lcom/kaspersky/components/urlchecker/UrlCategory;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaspersky/components/urlchecker/UrlCategory;->DRUGS:Lcom/kaspersky/components/urlchecker/UrlCategory;

    .line 21
    new-instance v0, Lcom/kaspersky/components/urlchecker/UrlCategory;

    const-string v1, "VIOLENCE"

    invoke-direct {v0, v1, v7, v7}, Lcom/kaspersky/components/urlchecker/UrlCategory;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaspersky/components/urlchecker/UrlCategory;->VIOLENCE:Lcom/kaspersky/components/urlchecker/UrlCategory;

    .line 22
    new-instance v0, Lcom/kaspersky/components/urlchecker/UrlCategory;

    const-string v1, "SWEARING"

    invoke-direct {v0, v1, v8, v8}, Lcom/kaspersky/components/urlchecker/UrlCategory;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaspersky/components/urlchecker/UrlCategory;->SWEARING:Lcom/kaspersky/components/urlchecker/UrlCategory;

    .line 23
    new-instance v0, Lcom/kaspersky/components/urlchecker/UrlCategory;

    const-string v1, "WEAPONS"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/kaspersky/components/urlchecker/UrlCategory;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaspersky/components/urlchecker/UrlCategory;->WEAPONS:Lcom/kaspersky/components/urlchecker/UrlCategory;

    .line 24
    new-instance v0, Lcom/kaspersky/components/urlchecker/UrlCategory;

    const-string v1, "GAMBLING"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/kaspersky/components/urlchecker/UrlCategory;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaspersky/components/urlchecker/UrlCategory;->GAMBLING:Lcom/kaspersky/components/urlchecker/UrlCategory;

    .line 25
    new-instance v0, Lcom/kaspersky/components/urlchecker/UrlCategory;

    const-string v1, "CHAT"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/kaspersky/components/urlchecker/UrlCategory;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaspersky/components/urlchecker/UrlCategory;->CHAT:Lcom/kaspersky/components/urlchecker/UrlCategory;

    .line 26
    new-instance v0, Lcom/kaspersky/components/urlchecker/UrlCategory;

    const-string v1, "WEB_MAIL"

    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/kaspersky/components/urlchecker/UrlCategory;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaspersky/components/urlchecker/UrlCategory;->WEB_MAIL:Lcom/kaspersky/components/urlchecker/UrlCategory;

    .line 27
    new-instance v0, Lcom/kaspersky/components/urlchecker/UrlCategory;

    const-string v1, "SHOPS"

    const/16 v2, 0x9

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/kaspersky/components/urlchecker/UrlCategory;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaspersky/components/urlchecker/UrlCategory;->SHOPS:Lcom/kaspersky/components/urlchecker/UrlCategory;

    .line 28
    new-instance v0, Lcom/kaspersky/components/urlchecker/UrlCategory;

    const-string v1, "SOCIAL_NET"

    const/16 v2, 0xa

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/kaspersky/components/urlchecker/UrlCategory;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaspersky/components/urlchecker/UrlCategory;->SOCIAL_NET:Lcom/kaspersky/components/urlchecker/UrlCategory;

    .line 29
    new-instance v0, Lcom/kaspersky/components/urlchecker/UrlCategory;

    const-string v1, "JOB_SITE"

    const/16 v2, 0xb

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/kaspersky/components/urlchecker/UrlCategory;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaspersky/components/urlchecker/UrlCategory;->JOB_SITE:Lcom/kaspersky/components/urlchecker/UrlCategory;

    .line 30
    new-instance v0, Lcom/kaspersky/components/urlchecker/UrlCategory;

    const-string v1, "ANON_PROXY"

    const/16 v2, 0xc

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/kaspersky/components/urlchecker/UrlCategory;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaspersky/components/urlchecker/UrlCategory;->ANON_PROXY:Lcom/kaspersky/components/urlchecker/UrlCategory;

    .line 31
    new-instance v0, Lcom/kaspersky/components/urlchecker/UrlCategory;

    const-string v1, "CC_PAYMENTS"

    const/16 v2, 0xd

    const/16 v3, 0xd

    invoke-direct {v0, v1, v2, v3}, Lcom/kaspersky/components/urlchecker/UrlCategory;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaspersky/components/urlchecker/UrlCategory;->CC_PAYMENTS:Lcom/kaspersky/components/urlchecker/UrlCategory;

    .line 32
    new-instance v0, Lcom/kaspersky/components/urlchecker/UrlCategory;

    const-string v1, "CASUAL_GAMES"

    const/16 v2, 0xe

    const/16 v3, 0xe

    invoke-direct {v0, v1, v2, v3}, Lcom/kaspersky/components/urlchecker/UrlCategory;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaspersky/components/urlchecker/UrlCategory;->CASUAL_GAMES:Lcom/kaspersky/components/urlchecker/UrlCategory;

    .line 33
    new-instance v0, Lcom/kaspersky/components/urlchecker/UrlCategory;

    const-string v1, "COUNTERFEIT"

    const/16 v2, 0xf

    const/16 v3, 0x14

    invoke-direct {v0, v1, v2, v3}, Lcom/kaspersky/components/urlchecker/UrlCategory;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaspersky/components/urlchecker/UrlCategory;->COUNTERFEIT:Lcom/kaspersky/components/urlchecker/UrlCategory;

    .line 35
    new-instance v0, Lcom/kaspersky/components/urlchecker/UrlCategory;

    const-string v1, "PHISHING"

    const/16 v2, 0x10

    const/16 v3, 0x3e

    invoke-direct {v0, v1, v2, v3}, Lcom/kaspersky/components/urlchecker/UrlCategory;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaspersky/components/urlchecker/UrlCategory;->PHISHING:Lcom/kaspersky/components/urlchecker/UrlCategory;

    .line 36
    new-instance v0, Lcom/kaspersky/components/urlchecker/UrlCategory;

    const-string v1, "MALWARE"

    const/16 v2, 0x11

    const/16 v3, 0x3f

    invoke-direct {v0, v1, v2, v3}, Lcom/kaspersky/components/urlchecker/UrlCategory;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaspersky/components/urlchecker/UrlCategory;->MALWARE:Lcom/kaspersky/components/urlchecker/UrlCategory;

    .line 6
    const/16 v0, 0x12

    new-array v0, v0, [Lcom/kaspersky/components/urlchecker/UrlCategory;

    sget-object v1, Lcom/kaspersky/components/urlchecker/UrlCategory;->PORN:Lcom/kaspersky/components/urlchecker/UrlCategory;

    aput-object v1, v0, v4

    sget-object v1, Lcom/kaspersky/components/urlchecker/UrlCategory;->ILLEGAL_SOFT:Lcom/kaspersky/components/urlchecker/UrlCategory;

    aput-object v1, v0, v5

    sget-object v1, Lcom/kaspersky/components/urlchecker/UrlCategory;->DRUGS:Lcom/kaspersky/components/urlchecker/UrlCategory;

    aput-object v1, v0, v6

    sget-object v1, Lcom/kaspersky/components/urlchecker/UrlCategory;->VIOLENCE:Lcom/kaspersky/components/urlchecker/UrlCategory;

    aput-object v1, v0, v7

    sget-object v1, Lcom/kaspersky/components/urlchecker/UrlCategory;->SWEARING:Lcom/kaspersky/components/urlchecker/UrlCategory;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/kaspersky/components/urlchecker/UrlCategory;->WEAPONS:Lcom/kaspersky/components/urlchecker/UrlCategory;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/kaspersky/components/urlchecker/UrlCategory;->GAMBLING:Lcom/kaspersky/components/urlchecker/UrlCategory;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/kaspersky/components/urlchecker/UrlCategory;->CHAT:Lcom/kaspersky/components/urlchecker/UrlCategory;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/kaspersky/components/urlchecker/UrlCategory;->WEB_MAIL:Lcom/kaspersky/components/urlchecker/UrlCategory;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/kaspersky/components/urlchecker/UrlCategory;->SHOPS:Lcom/kaspersky/components/urlchecker/UrlCategory;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/kaspersky/components/urlchecker/UrlCategory;->SOCIAL_NET:Lcom/kaspersky/components/urlchecker/UrlCategory;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/kaspersky/components/urlchecker/UrlCategory;->JOB_SITE:Lcom/kaspersky/components/urlchecker/UrlCategory;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/kaspersky/components/urlchecker/UrlCategory;->ANON_PROXY:Lcom/kaspersky/components/urlchecker/UrlCategory;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/kaspersky/components/urlchecker/UrlCategory;->CC_PAYMENTS:Lcom/kaspersky/components/urlchecker/UrlCategory;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/kaspersky/components/urlchecker/UrlCategory;->CASUAL_GAMES:Lcom/kaspersky/components/urlchecker/UrlCategory;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/kaspersky/components/urlchecker/UrlCategory;->COUNTERFEIT:Lcom/kaspersky/components/urlchecker/UrlCategory;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/kaspersky/components/urlchecker/UrlCategory;->PHISHING:Lcom/kaspersky/components/urlchecker/UrlCategory;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/kaspersky/components/urlchecker/UrlCategory;->MALWARE:Lcom/kaspersky/components/urlchecker/UrlCategory;

    aput-object v2, v0, v1

    sput-object v0, Lcom/kaspersky/components/urlchecker/UrlCategory;->a:[Lcom/kaspersky/components/urlchecker/UrlCategory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 41
    iput p3, p0, Lcom/kaspersky/components/urlchecker/UrlCategory;->mPower:I

    .line 42
    return-void
.end method

.method public static getCategoriesByMask(J)Ljava/util/List;
    .locals 9

    .prologue
    .line 54
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 55
    invoke-static {}, Lcom/kaspersky/components/urlchecker/UrlCategory;->values()[Lcom/kaspersky/components/urlchecker/UrlCategory;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 56
    invoke-virtual {v4}, Lcom/kaspersky/components/urlchecker/UrlCategory;->getMask()J

    move-result-wide v5

    and-long/2addr v5, p0

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_0

    .line 57
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 60
    :cond_1
    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kaspersky/components/urlchecker/UrlCategory;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/kaspersky/components/urlchecker/UrlCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kaspersky/components/urlchecker/UrlCategory;

    return-object v0
.end method

.method public static values()[Lcom/kaspersky/components/urlchecker/UrlCategory;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/kaspersky/components/urlchecker/UrlCategory;->a:[Lcom/kaspersky/components/urlchecker/UrlCategory;

    invoke-virtual {v0}, [Lcom/kaspersky/components/urlchecker/UrlCategory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kaspersky/components/urlchecker/UrlCategory;

    return-object v0
.end method


# virtual methods
.method public final getMask()J
    .locals 3

    .prologue
    .line 45
    const-wide/16 v0, 0x1

    iget v2, p0, Lcom/kaspersky/components/urlchecker/UrlCategory;->mPower:I

    shl-long/2addr v0, v2

    return-wide v0
.end method

.method final getPower()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/kaspersky/components/urlchecker/UrlCategory;->mPower:I

    return v0
.end method
