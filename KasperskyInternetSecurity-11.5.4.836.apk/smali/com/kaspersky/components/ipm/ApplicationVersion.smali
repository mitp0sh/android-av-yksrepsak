.class public Lcom/kaspersky/components/ipm/ApplicationVersion;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mBuild:I

.field public mCompilation:I

.field public mMajor:I

.field public mMinor:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    invoke-static {p1}, LbC;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 12
    const-string v0, "\\."

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 14
    :try_start_0
    array-length v1, v0

    if-lez v1, :cond_0

    .line 15
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/kaspersky/components/ipm/ApplicationVersion;->mMajor:I

    .line 16
    :cond_0
    array-length v1, v0

    if-le v1, v2, :cond_1

    .line 17
    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/kaspersky/components/ipm/ApplicationVersion;->mMinor:I

    .line 18
    :cond_1
    array-length v1, v0

    if-le v1, v3, :cond_2

    .line 19
    const/4 v1, 0x2

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/kaspersky/components/ipm/ApplicationVersion;->mBuild:I

    .line 20
    :cond_2
    array-length v1, v0

    if-le v1, v4, :cond_3

    .line 21
    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kaspersky/components/ipm/ApplicationVersion;->mCompilation:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    :cond_3
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
