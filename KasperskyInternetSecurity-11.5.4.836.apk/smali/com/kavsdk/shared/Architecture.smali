.class public final Lcom/kavsdk/shared/Architecture;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()Lcom/kavsdk/shared/Architecture$ARCH_ABI;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-static {v0}, Lcom/kavsdk/shared/Architecture;->a(Ljava/lang/String;)Lcom/kavsdk/shared/Architecture$ARCH_ABI;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Lcom/kavsdk/shared/Architecture$ARCH_ABI;
    .locals 1

    .prologue
    .line 37
    const-string v0, "armv5|armeabi"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    sget-object v0, Lcom/kavsdk/shared/Architecture$ARCH_ABI;->Arm:Lcom/kavsdk/shared/Architecture$ARCH_ABI;

    .line 51
    :goto_0
    return-object v0

    .line 39
    :cond_0
    const-string v0, "armv7|armeabi-v7.*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    sget-object v0, Lcom/kavsdk/shared/Architecture$ARCH_ABI;->Armv7:Lcom/kavsdk/shared/Architecture$ARCH_ABI;

    goto :goto_0

    .line 41
    :cond_1
    const-string v0, "x86|i\\d86"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 42
    sget-object v0, Lcom/kavsdk/shared/Architecture$ARCH_ABI;->X86:Lcom/kavsdk/shared/Architecture$ARCH_ABI;

    goto :goto_0

    .line 43
    :cond_2
    const-string v0, "mips"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 44
    sget-object v0, Lcom/kavsdk/shared/Architecture$ARCH_ABI;->Mips:Lcom/kavsdk/shared/Architecture$ARCH_ABI;

    goto :goto_0

    .line 45
    :cond_3
    const-string v0, "power"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 46
    sget-object v0, Lcom/kavsdk/shared/Architecture$ARCH_ABI;->Power:Lcom/kavsdk/shared/Architecture$ARCH_ABI;

    goto :goto_0

    .line 51
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method
