.class public final enum Lcom/kms/kmsshared/utils/Architecture$ARCH_ABI;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum Arm:Lcom/kms/kmsshared/utils/Architecture$ARCH_ABI;

.field public static final enum Armv7:Lcom/kms/kmsshared/utils/Architecture$ARCH_ABI;

.field public static final enum Mips:Lcom/kms/kmsshared/utils/Architecture$ARCH_ABI;

.field public static final enum Power:Lcom/kms/kmsshared/utils/Architecture$ARCH_ABI;

.field public static final enum X86:Lcom/kms/kmsshared/utils/Architecture$ARCH_ABI;

.field private static final synthetic a:[Lcom/kms/kmsshared/utils/Architecture$ARCH_ABI;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 15
    new-instance v0, Lcom/kms/kmsshared/utils/Architecture$ARCH_ABI;

    const-string v1, "Arm"

    const-string v2, "armeabi"

    invoke-direct {v0, v1, v3, v2}, Lcom/kms/kmsshared/utils/Architecture$ARCH_ABI;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kms/kmsshared/utils/Architecture$ARCH_ABI;->Arm:Lcom/kms/kmsshared/utils/Architecture$ARCH_ABI;

    .line 16
    new-instance v0, Lcom/kms/kmsshared/utils/Architecture$ARCH_ABI;

    const-string v1, "Armv7"

    const-string v2, "armeabi-v7a"

    invoke-direct {v0, v1, v4, v2}, Lcom/kms/kmsshared/utils/Architecture$ARCH_ABI;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kms/kmsshared/utils/Architecture$ARCH_ABI;->Armv7:Lcom/kms/kmsshared/utils/Architecture$ARCH_ABI;

    .line 17
    new-instance v0, Lcom/kms/kmsshared/utils/Architecture$ARCH_ABI;

    const-string v1, "X86"

    const-string v2, "x86"

    invoke-direct {v0, v1, v5, v2}, Lcom/kms/kmsshared/utils/Architecture$ARCH_ABI;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kms/kmsshared/utils/Architecture$ARCH_ABI;->X86:Lcom/kms/kmsshared/utils/Architecture$ARCH_ABI;

    .line 18
    new-instance v0, Lcom/kms/kmsshared/utils/Architecture$ARCH_ABI;

    const-string v1, "Mips"

    const-string v2, "mips"

    invoke-direct {v0, v1, v6, v2}, Lcom/kms/kmsshared/utils/Architecture$ARCH_ABI;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kms/kmsshared/utils/Architecture$ARCH_ABI;->Mips:Lcom/kms/kmsshared/utils/Architecture$ARCH_ABI;

    .line 19
    new-instance v0, Lcom/kms/kmsshared/utils/Architecture$ARCH_ABI;

    const-string v1, "Power"

    const-string v2, "power"

    invoke-direct {v0, v1, v7, v2}, Lcom/kms/kmsshared/utils/Architecture$ARCH_ABI;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kms/kmsshared/utils/Architecture$ARCH_ABI;->Power:Lcom/kms/kmsshared/utils/Architecture$ARCH_ABI;

    .line 14
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/kms/kmsshared/utils/Architecture$ARCH_ABI;

    sget-object v1, Lcom/kms/kmsshared/utils/Architecture$ARCH_ABI;->Arm:Lcom/kms/kmsshared/utils/Architecture$ARCH_ABI;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kms/kmsshared/utils/Architecture$ARCH_ABI;->Armv7:Lcom/kms/kmsshared/utils/Architecture$ARCH_ABI;

    aput-object v1, v0, v4

    sget-object v1, Lcom/kms/kmsshared/utils/Architecture$ARCH_ABI;->X86:Lcom/kms/kmsshared/utils/Architecture$ARCH_ABI;

    aput-object v1, v0, v5

    sget-object v1, Lcom/kms/kmsshared/utils/Architecture$ARCH_ABI;->Mips:Lcom/kms/kmsshared/utils/Architecture$ARCH_ABI;

    aput-object v1, v0, v6

    sget-object v1, Lcom/kms/kmsshared/utils/Architecture$ARCH_ABI;->Power:Lcom/kms/kmsshared/utils/Architecture$ARCH_ABI;

    aput-object v1, v0, v7

    sput-object v0, Lcom/kms/kmsshared/utils/Architecture$ARCH_ABI;->a:[Lcom/kms/kmsshared/utils/Architecture$ARCH_ABI;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 24
    iput-object p3, p0, Lcom/kms/kmsshared/utils/Architecture$ARCH_ABI;->name:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kms/kmsshared/utils/Architecture$ARCH_ABI;
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/kms/kmsshared/utils/Architecture$ARCH_ABI;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kms/kmsshared/utils/Architecture$ARCH_ABI;

    return-object v0
.end method

.method public static values()[Lcom/kms/kmsshared/utils/Architecture$ARCH_ABI;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/kms/kmsshared/utils/Architecture$ARCH_ABI;->a:[Lcom/kms/kmsshared/utils/Architecture$ARCH_ABI;

    invoke-virtual {v0}, [Lcom/kms/kmsshared/utils/Architecture$ARCH_ABI;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kms/kmsshared/utils/Architecture$ARCH_ABI;

    return-object v0
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/kms/kmsshared/utils/Architecture$ARCH_ABI;->name:Ljava/lang/String;

    return-object v0
.end method
