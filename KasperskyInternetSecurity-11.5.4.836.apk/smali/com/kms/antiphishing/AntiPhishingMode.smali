.class public final enum Lcom/kms/antiphishing/AntiPhishingMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum Disabled:Lcom/kms/antiphishing/AntiPhishingMode;

.field public static final enum Extended:Lcom/kms/antiphishing/AntiPhishingMode;

.field public static final enum Standard:Lcom/kms/antiphishing/AntiPhishingMode;

.field private static final synthetic a:[Lcom/kms/antiphishing/AntiPhishingMode;


# instance fields
.field private final mId:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7
    new-instance v0, Lcom/kms/antiphishing/AntiPhishingMode;

    const-string v1, "Disabled"

    invoke-direct {v0, v1, v2, v2}, Lcom/kms/antiphishing/AntiPhishingMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kms/antiphishing/AntiPhishingMode;->Disabled:Lcom/kms/antiphishing/AntiPhishingMode;

    .line 8
    new-instance v0, Lcom/kms/antiphishing/AntiPhishingMode;

    const-string v1, "Standard"

    invoke-direct {v0, v1, v3, v3}, Lcom/kms/antiphishing/AntiPhishingMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kms/antiphishing/AntiPhishingMode;->Standard:Lcom/kms/antiphishing/AntiPhishingMode;

    .line 9
    new-instance v0, Lcom/kms/antiphishing/AntiPhishingMode;

    const-string v1, "Extended"

    invoke-direct {v0, v1, v4, v4}, Lcom/kms/antiphishing/AntiPhishingMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kms/antiphishing/AntiPhishingMode;->Extended:Lcom/kms/antiphishing/AntiPhishingMode;

    .line 5
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/kms/antiphishing/AntiPhishingMode;

    sget-object v1, Lcom/kms/antiphishing/AntiPhishingMode;->Disabled:Lcom/kms/antiphishing/AntiPhishingMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/kms/antiphishing/AntiPhishingMode;->Standard:Lcom/kms/antiphishing/AntiPhishingMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kms/antiphishing/AntiPhishingMode;->Extended:Lcom/kms/antiphishing/AntiPhishingMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/kms/antiphishing/AntiPhishingMode;->a:[Lcom/kms/antiphishing/AntiPhishingMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 14
    iput p3, p0, Lcom/kms/antiphishing/AntiPhishingMode;->mId:I

    .line 15
    return-void
.end method

.method public static getById(I)Lcom/kms/antiphishing/AntiPhishingMode;
    .locals 5

    .prologue
    .line 22
    invoke-static {}, Lcom/kms/antiphishing/AntiPhishingMode;->values()[Lcom/kms/antiphishing/AntiPhishingMode;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 23
    iget v4, v0, Lcom/kms/antiphishing/AntiPhishingMode;->mId:I

    if-ne v4, p0, :cond_0

    .line 28
    :goto_1
    return-object v0

    .line 22
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 28
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getDefault()Lcom/kms/antiphishing/AntiPhishingMode;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/kms/antiphishing/AntiPhishingMode;->Standard:Lcom/kms/antiphishing/AntiPhishingMode;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kms/antiphishing/AntiPhishingMode;
    .locals 1

    .prologue
    .line 5
    const-class v0, Lcom/kms/antiphishing/AntiPhishingMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kms/antiphishing/AntiPhishingMode;

    return-object v0
.end method

.method public static values()[Lcom/kms/antiphishing/AntiPhishingMode;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/kms/antiphishing/AntiPhishingMode;->a:[Lcom/kms/antiphishing/AntiPhishingMode;

    invoke-virtual {v0}, [Lcom/kms/antiphishing/AntiPhishingMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kms/antiphishing/AntiPhishingMode;

    return-object v0
.end method


# virtual methods
.method public final getId()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/kms/antiphishing/AntiPhishingMode;->mId:I

    return v0
.end method
