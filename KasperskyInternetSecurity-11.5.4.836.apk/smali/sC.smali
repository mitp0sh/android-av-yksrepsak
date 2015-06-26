.class public final LsC;
.super LsA;
.source "SourceFile"


# static fields
.field private static final a:[Lcom/kms/kmsshared/utils/Architecture$ARCH_ABI;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 12
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/kms/kmsshared/utils/Architecture$ARCH_ABI;

    const/4 v1, 0x0

    sget-object v2, Lcom/kms/kmsshared/utils/Architecture$ARCH_ABI;->Mips:Lcom/kms/kmsshared/utils/Architecture$ARCH_ABI;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/kms/kmsshared/utils/Architecture$ARCH_ABI;->Power:Lcom/kms/kmsshared/utils/Architecture$ARCH_ABI;

    aput-object v2, v0, v1

    sput-object v0, LsC;->a:[Lcom/kms/kmsshared/utils/Architecture$ARCH_ABI;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 18
    invoke-direct {p0}, LsA;-><init>()V

    .line 19
    iput-object p1, p0, LsC;->b:Landroid/content/Context;

    .line 20
    iget-object v0, p0, LsC;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0704b3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LsC;->c:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public static b()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-static {}, Lcom/kms/kmsshared/utils/Architecture;->a()Lcom/kms/kmsshared/utils/Architecture$ARCH_ABI;

    move-result-object v2

    .line 28
    sget-object v3, LsC;->a:[Lcom/kms/kmsshared/utils/Architecture$ARCH_ABI;

    array-length v4, v3

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v5, v3, v1

    .line 29
    invoke-virtual {v5, v2}, Lcom/kms/kmsshared/utils/Architecture$ARCH_ABI;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 30
    const/4 v0, 0x1

    .line 33
    :cond_0
    return v0

    .line 28
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, LsC;->c:Ljava/lang/String;

    return-object v0
.end method
