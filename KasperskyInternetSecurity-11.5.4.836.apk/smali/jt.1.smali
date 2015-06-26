.class final Ljt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbg;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Ljt;->a:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Ljt;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    const-string v0, "KISM 11.5.4.836"

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 3

    .prologue
    .line 40
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 43
    const-string v1, "Arm"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    const-string v0, "Arm"

    .line 51
    :goto_0
    return-object v0

    .line 45
    :cond_0
    const-string v1, "86"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 46
    const-string v0, "i386"

    goto :goto_0

    .line 47
    :cond_1
    const-string v1, "Mips"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 48
    const-string v0, "Mips"

    goto :goto_0

    .line 50
    :cond_2
    const-string v0, "KAVSDK"

    const-string v1, "Unknown architecture"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    const-string v0, "Android"

    return-object v0
.end method
