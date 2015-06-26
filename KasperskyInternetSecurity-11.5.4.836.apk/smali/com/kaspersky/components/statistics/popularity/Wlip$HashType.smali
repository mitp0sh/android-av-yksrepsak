.class final enum Lcom/kaspersky/components/statistics/popularity/Wlip$HashType;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum Combined:Lcom/kaspersky/components/statistics/popularity/Wlip$HashType;

.field public static final enum Empty:Lcom/kaspersky/components/statistics/popularity/Wlip$HashType;

.field public static final enum Md5:Lcom/kaspersky/components/statistics/popularity/Wlip$HashType;

.field public static final enum Sha1:Lcom/kaspersky/components/statistics/popularity/Wlip$HashType;

.field public static final enum Sha256:Lcom/kaspersky/components/statistics/popularity/Wlip$HashType;

.field public static final enum Sha384:Lcom/kaspersky/components/statistics/popularity/Wlip$HashType;

.field public static final enum Sha512:Lcom/kaspersky/components/statistics/popularity/Wlip$HashType;

.field private static final synthetic a:[Lcom/kaspersky/components/statistics/popularity/Wlip$HashType;


# instance fields
.field private mHashAlg:Ljava/lang/String;

.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 130
    new-instance v0, Lcom/kaspersky/components/statistics/popularity/Wlip$HashType;

    const-string v1, "Empty"

    const-string v2, ""

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/kaspersky/components/statistics/popularity/Wlip$HashType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/kaspersky/components/statistics/popularity/Wlip$HashType;->Empty:Lcom/kaspersky/components/statistics/popularity/Wlip$HashType;

    .line 131
    new-instance v0, Lcom/kaspersky/components/statistics/popularity/Wlip$HashType;

    const-string v1, "Sha1"

    const-string v2, "SHA-1"

    invoke-direct {v0, v1, v6, v6, v2}, Lcom/kaspersky/components/statistics/popularity/Wlip$HashType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/kaspersky/components/statistics/popularity/Wlip$HashType;->Sha1:Lcom/kaspersky/components/statistics/popularity/Wlip$HashType;

    .line 132
    new-instance v0, Lcom/kaspersky/components/statistics/popularity/Wlip$HashType;

    const-string v1, "Sha256"

    const-string v2, "SHA-256"

    invoke-direct {v0, v1, v7, v7, v2}, Lcom/kaspersky/components/statistics/popularity/Wlip$HashType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/kaspersky/components/statistics/popularity/Wlip$HashType;->Sha256:Lcom/kaspersky/components/statistics/popularity/Wlip$HashType;

    .line 133
    new-instance v0, Lcom/kaspersky/components/statistics/popularity/Wlip$HashType;

    const-string v1, "Sha384"

    const-string v2, "SHA-384"

    invoke-direct {v0, v1, v8, v8, v2}, Lcom/kaspersky/components/statistics/popularity/Wlip$HashType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/kaspersky/components/statistics/popularity/Wlip$HashType;->Sha384:Lcom/kaspersky/components/statistics/popularity/Wlip$HashType;

    .line 134
    new-instance v0, Lcom/kaspersky/components/statistics/popularity/Wlip$HashType;

    const-string v1, "Sha512"

    const-string v2, "SHA-512"

    invoke-direct {v0, v1, v9, v9, v2}, Lcom/kaspersky/components/statistics/popularity/Wlip$HashType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/kaspersky/components/statistics/popularity/Wlip$HashType;->Sha512:Lcom/kaspersky/components/statistics/popularity/Wlip$HashType;

    .line 135
    new-instance v0, Lcom/kaspersky/components/statistics/popularity/Wlip$HashType;

    const-string v1, "Md5"

    const/4 v2, 0x5

    const/4 v3, 0x5

    const-string v4, "MD5"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kaspersky/components/statistics/popularity/Wlip$HashType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/kaspersky/components/statistics/popularity/Wlip$HashType;->Md5:Lcom/kaspersky/components/statistics/popularity/Wlip$HashType;

    .line 136
    new-instance v0, Lcom/kaspersky/components/statistics/popularity/Wlip$HashType;

    const-string v1, "Combined"

    const/4 v2, 0x6

    const v3, 0xffff

    const-string v4, ""

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kaspersky/components/statistics/popularity/Wlip$HashType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/kaspersky/components/statistics/popularity/Wlip$HashType;->Combined:Lcom/kaspersky/components/statistics/popularity/Wlip$HashType;

    .line 129
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/kaspersky/components/statistics/popularity/Wlip$HashType;

    sget-object v1, Lcom/kaspersky/components/statistics/popularity/Wlip$HashType;->Empty:Lcom/kaspersky/components/statistics/popularity/Wlip$HashType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/kaspersky/components/statistics/popularity/Wlip$HashType;->Sha1:Lcom/kaspersky/components/statistics/popularity/Wlip$HashType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/kaspersky/components/statistics/popularity/Wlip$HashType;->Sha256:Lcom/kaspersky/components/statistics/popularity/Wlip$HashType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/kaspersky/components/statistics/popularity/Wlip$HashType;->Sha384:Lcom/kaspersky/components/statistics/popularity/Wlip$HashType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/kaspersky/components/statistics/popularity/Wlip$HashType;->Sha512:Lcom/kaspersky/components/statistics/popularity/Wlip$HashType;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/kaspersky/components/statistics/popularity/Wlip$HashType;->Md5:Lcom/kaspersky/components/statistics/popularity/Wlip$HashType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/kaspersky/components/statistics/popularity/Wlip$HashType;->Combined:Lcom/kaspersky/components/statistics/popularity/Wlip$HashType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/kaspersky/components/statistics/popularity/Wlip$HashType;->a:[Lcom/kaspersky/components/statistics/popularity/Wlip$HashType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0

    .prologue
    .line 141
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 142
    iput p3, p0, Lcom/kaspersky/components/statistics/popularity/Wlip$HashType;->mValue:I

    .line 143
    iput-object p4, p0, Lcom/kaspersky/components/statistics/popularity/Wlip$HashType;->mHashAlg:Ljava/lang/String;

    .line 144
    return-void
.end method

.method static synthetic access$000(Lcom/kaspersky/components/statistics/popularity/Wlip$HashType;)I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcom/kaspersky/components/statistics/popularity/Wlip$HashType;->mValue:I

    return v0
.end method

.method static synthetic access$100(Lcom/kaspersky/components/statistics/popularity/Wlip$HashType;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/kaspersky/components/statistics/popularity/Wlip$HashType;->mHashAlg:Ljava/lang/String;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kaspersky/components/statistics/popularity/Wlip$HashType;
    .locals 1

    .prologue
    .line 129
    const-class v0, Lcom/kaspersky/components/statistics/popularity/Wlip$HashType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kaspersky/components/statistics/popularity/Wlip$HashType;

    return-object v0
.end method

.method public static values()[Lcom/kaspersky/components/statistics/popularity/Wlip$HashType;
    .locals 1

    .prologue
    .line 129
    sget-object v0, Lcom/kaspersky/components/statistics/popularity/Wlip$HashType;->a:[Lcom/kaspersky/components/statistics/popularity/Wlip$HashType;

    invoke-virtual {v0}, [Lcom/kaspersky/components/statistics/popularity/Wlip$HashType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kaspersky/components/statistics/popularity/Wlip$HashType;

    return-object v0
.end method
