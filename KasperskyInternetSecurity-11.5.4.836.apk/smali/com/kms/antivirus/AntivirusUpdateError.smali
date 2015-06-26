.class public final enum Lcom/kms/antivirus/AntivirusUpdateError;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum NoInternet:Lcom/kms/antivirus/AntivirusUpdateError;

.field private static final synthetic a:[Lcom/kms/antivirus/AntivirusUpdateError;


# instance fields
.field private final mErrorCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 7
    new-instance v0, Lcom/kms/antivirus/AntivirusUpdateError;

    const-string v1, "NoInternet"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v3, v2}, Lcom/kms/antivirus/AntivirusUpdateError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kms/antivirus/AntivirusUpdateError;->NoInternet:Lcom/kms/antivirus/AntivirusUpdateError;

    .line 5
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/kms/antivirus/AntivirusUpdateError;

    sget-object v1, Lcom/kms/antivirus/AntivirusUpdateError;->NoInternet:Lcom/kms/antivirus/AntivirusUpdateError;

    aput-object v1, v0, v3

    sput-object v0, Lcom/kms/antivirus/AntivirusUpdateError;->a:[Lcom/kms/antivirus/AntivirusUpdateError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 12
    const/4 v0, 0x5

    iput v0, p0, Lcom/kms/antivirus/AntivirusUpdateError;->mErrorCode:I

    .line 13
    return-void
.end method

.method public static getByErrorCode(I)Lcom/kms/antivirus/AntivirusUpdateError;
    .locals 5

    .prologue
    .line 17
    invoke-static {}, Lcom/kms/antivirus/AntivirusUpdateError;->values()[Lcom/kms/antivirus/AntivirusUpdateError;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 18
    iget v4, v0, Lcom/kms/antivirus/AntivirusUpdateError;->mErrorCode:I

    if-ne v4, p0, :cond_0

    .line 23
    :goto_1
    return-object v0

    .line 17
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 23
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kms/antivirus/AntivirusUpdateError;
    .locals 1

    .prologue
    .line 5
    const-class v0, Lcom/kms/antivirus/AntivirusUpdateError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kms/antivirus/AntivirusUpdateError;

    return-object v0
.end method

.method public static values()[Lcom/kms/antivirus/AntivirusUpdateError;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/kms/antivirus/AntivirusUpdateError;->a:[Lcom/kms/antivirus/AntivirusUpdateError;

    invoke-virtual {v0}, [Lcom/kms/antivirus/AntivirusUpdateError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kms/antivirus/AntivirusUpdateError;

    return-object v0
.end method
