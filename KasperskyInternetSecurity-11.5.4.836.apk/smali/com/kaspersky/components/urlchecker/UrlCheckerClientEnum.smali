.class public final enum Lcom/kaspersky/components/urlchecker/UrlCheckerClientEnum;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum SmsClient:Lcom/kaspersky/components/urlchecker/UrlCheckerClientEnum;

.field public static final enum WebClient:Lcom/kaspersky/components/urlchecker/UrlCheckerClientEnum;

.field private static final synthetic a:[Lcom/kaspersky/components/urlchecker/UrlCheckerClientEnum;


# instance fields
.field private final mClientId:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 5
    new-instance v0, Lcom/kaspersky/components/urlchecker/UrlCheckerClientEnum;

    const-string v1, "WebClient"

    invoke-direct {v0, v1, v3, v2}, Lcom/kaspersky/components/urlchecker/UrlCheckerClientEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaspersky/components/urlchecker/UrlCheckerClientEnum;->WebClient:Lcom/kaspersky/components/urlchecker/UrlCheckerClientEnum;

    .line 7
    new-instance v0, Lcom/kaspersky/components/urlchecker/UrlCheckerClientEnum;

    const-string v1, "SmsClient"

    invoke-direct {v0, v1, v2, v4}, Lcom/kaspersky/components/urlchecker/UrlCheckerClientEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaspersky/components/urlchecker/UrlCheckerClientEnum;->SmsClient:Lcom/kaspersky/components/urlchecker/UrlCheckerClientEnum;

    .line 3
    new-array v0, v4, [Lcom/kaspersky/components/urlchecker/UrlCheckerClientEnum;

    sget-object v1, Lcom/kaspersky/components/urlchecker/UrlCheckerClientEnum;->WebClient:Lcom/kaspersky/components/urlchecker/UrlCheckerClientEnum;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kaspersky/components/urlchecker/UrlCheckerClientEnum;->SmsClient:Lcom/kaspersky/components/urlchecker/UrlCheckerClientEnum;

    aput-object v1, v0, v2

    sput-object v0, Lcom/kaspersky/components/urlchecker/UrlCheckerClientEnum;->a:[Lcom/kaspersky/components/urlchecker/UrlCheckerClientEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 12
    iput p3, p0, Lcom/kaspersky/components/urlchecker/UrlCheckerClientEnum;->mClientId:I

    .line 13
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kaspersky/components/urlchecker/UrlCheckerClientEnum;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/kaspersky/components/urlchecker/UrlCheckerClientEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kaspersky/components/urlchecker/UrlCheckerClientEnum;

    return-object v0
.end method

.method public static values()[Lcom/kaspersky/components/urlchecker/UrlCheckerClientEnum;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/kaspersky/components/urlchecker/UrlCheckerClientEnum;->a:[Lcom/kaspersky/components/urlchecker/UrlCheckerClientEnum;

    invoke-virtual {v0}, [Lcom/kaspersky/components/urlchecker/UrlCheckerClientEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kaspersky/components/urlchecker/UrlCheckerClientEnum;

    return-object v0
.end method


# virtual methods
.method public final getClientId()I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lcom/kaspersky/components/urlchecker/UrlCheckerClientEnum;->mClientId:I

    return v0
.end method
