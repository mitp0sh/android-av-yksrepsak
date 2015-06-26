.class public final enum Lcom/kms/kmsshared/KMSLog$Level;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum ASSERT:Lcom/kms/kmsshared/KMSLog$Level;

.field public static final enum DEBUG:Lcom/kms/kmsshared/KMSLog$Level;

.field public static final enum ERROR:Lcom/kms/kmsshared/KMSLog$Level;

.field public static final enum INFO:Lcom/kms/kmsshared/KMSLog$Level;

.field public static final enum VERBOSE:Lcom/kms/kmsshared/KMSLog$Level;

.field public static final enum WARN:Lcom/kms/kmsshared/KMSLog$Level;

.field private static final synthetic a:[Lcom/kms/kmsshared/KMSLog$Level;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    .line 20
    new-instance v0, Lcom/kms/kmsshared/KMSLog$Level;

    const-string v1, "VERBOSE"

    invoke-direct {v0, v1, v7, v3}, Lcom/kms/kmsshared/KMSLog$Level;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kms/kmsshared/KMSLog$Level;->VERBOSE:Lcom/kms/kmsshared/KMSLog$Level;

    .line 21
    new-instance v0, Lcom/kms/kmsshared/KMSLog$Level;

    const-string v1, "DEBUG"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v4}, Lcom/kms/kmsshared/KMSLog$Level;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kms/kmsshared/KMSLog$Level;->DEBUG:Lcom/kms/kmsshared/KMSLog$Level;

    .line 22
    new-instance v0, Lcom/kms/kmsshared/KMSLog$Level;

    const-string v1, "INFO"

    invoke-direct {v0, v1, v3, v5}, Lcom/kms/kmsshared/KMSLog$Level;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kms/kmsshared/KMSLog$Level;->INFO:Lcom/kms/kmsshared/KMSLog$Level;

    .line 23
    new-instance v0, Lcom/kms/kmsshared/KMSLog$Level;

    const-string v1, "WARN"

    invoke-direct {v0, v1, v4, v6}, Lcom/kms/kmsshared/KMSLog$Level;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kms/kmsshared/KMSLog$Level;->WARN:Lcom/kms/kmsshared/KMSLog$Level;

    .line 24
    new-instance v0, Lcom/kms/kmsshared/KMSLog$Level;

    const-string v1, "ERROR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v5, v2}, Lcom/kms/kmsshared/KMSLog$Level;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kms/kmsshared/KMSLog$Level;->ERROR:Lcom/kms/kmsshared/KMSLog$Level;

    .line 25
    new-instance v0, Lcom/kms/kmsshared/KMSLog$Level;

    const-string v1, "ASSERT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v6, v2}, Lcom/kms/kmsshared/KMSLog$Level;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kms/kmsshared/KMSLog$Level;->ASSERT:Lcom/kms/kmsshared/KMSLog$Level;

    .line 19
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/kms/kmsshared/KMSLog$Level;

    sget-object v1, Lcom/kms/kmsshared/KMSLog$Level;->VERBOSE:Lcom/kms/kmsshared/KMSLog$Level;

    aput-object v1, v0, v7

    const/4 v1, 0x1

    sget-object v2, Lcom/kms/kmsshared/KMSLog$Level;->DEBUG:Lcom/kms/kmsshared/KMSLog$Level;

    aput-object v2, v0, v1

    sget-object v1, Lcom/kms/kmsshared/KMSLog$Level;->INFO:Lcom/kms/kmsshared/KMSLog$Level;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kms/kmsshared/KMSLog$Level;->WARN:Lcom/kms/kmsshared/KMSLog$Level;

    aput-object v1, v0, v4

    sget-object v1, Lcom/kms/kmsshared/KMSLog$Level;->ERROR:Lcom/kms/kmsshared/KMSLog$Level;

    aput-object v1, v0, v5

    sget-object v1, Lcom/kms/kmsshared/KMSLog$Level;->ASSERT:Lcom/kms/kmsshared/KMSLog$Level;

    aput-object v1, v0, v6

    sput-object v0, Lcom/kms/kmsshared/KMSLog$Level;->a:[Lcom/kms/kmsshared/KMSLog$Level;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 30
    iput p3, p0, Lcom/kms/kmsshared/KMSLog$Level;->value:I

    .line 31
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kms/kmsshared/KMSLog$Level;
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/kms/kmsshared/KMSLog$Level;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kms/kmsshared/KMSLog$Level;

    return-object v0
.end method

.method public static values()[Lcom/kms/kmsshared/KMSLog$Level;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/kms/kmsshared/KMSLog$Level;->a:[Lcom/kms/kmsshared/KMSLog$Level;

    invoke-virtual {v0}, [Lcom/kms/kmsshared/KMSLog$Level;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kms/kmsshared/KMSLog$Level;

    return-object v0
.end method
