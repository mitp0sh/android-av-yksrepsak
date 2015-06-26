.class public final Lcom/kms/kmsshared/utils/Architecture;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()Lcom/kms/kmsshared/utils/Architecture$ARCH_ABI;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-static {v0}, Lcom/kms/kmsshared/utils/Architecture;->a(Ljava/lang/String;)Lcom/kms/kmsshared/utils/Architecture$ARCH_ABI;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Lcom/kms/kmsshared/utils/Architecture$ARCH_ABI;
    .locals 3

    .prologue
    .line 39
    const-string v0, "armv[56].*|armeabi|armeabi-v[56].*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    sget-object v0, Lcom/kms/kmsshared/utils/Architecture$ARCH_ABI;->Arm:Lcom/kms/kmsshared/utils/Architecture$ARCH_ABI;

    .line 51
    :goto_0
    return-object v0

    .line 41
    :cond_0
    const-string v0, "armv7|armeabi-v7.*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 42
    sget-object v0, Lcom/kms/kmsshared/utils/Architecture$ARCH_ABI;->Armv7:Lcom/kms/kmsshared/utils/Architecture$ARCH_ABI;

    goto :goto_0

    .line 43
    :cond_1
    const-string v0, "x86|i\\d86"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 44
    sget-object v0, Lcom/kms/kmsshared/utils/Architecture$ARCH_ABI;->X86:Lcom/kms/kmsshared/utils/Architecture$ARCH_ABI;

    goto :goto_0

    .line 45
    :cond_2
    const-string v0, "mips"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 46
    sget-object v0, Lcom/kms/kmsshared/utils/Architecture$ARCH_ABI;->Mips:Lcom/kms/kmsshared/utils/Architecture$ARCH_ABI;

    goto :goto_0

    .line 47
    :cond_3
    const-string v0, "power"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 48
    sget-object v0, Lcom/kms/kmsshared/utils/Architecture$ARCH_ABI;->Power:Lcom/kms/kmsshared/utils/Architecture$ARCH_ABI;

    goto :goto_0

    .line 50
    :cond_4
    const-string v0, "KMS"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown architecture: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    const/4 v0, 0x0

    goto :goto_0
.end method
