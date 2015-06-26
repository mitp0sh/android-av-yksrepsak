.class public final LvK;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:LvI;


# direct methods
.method public constructor <init>(LvI;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, LvK;->a:LvI;

    .line 14
    return-void
.end method

.method private static a(LvH;LvH;)V
    .locals 2

    .prologue
    .line 52
    invoke-virtual {p1}, LvH;->b()Ljava/lang/String;

    move-result-object v0

    .line 53
    invoke-static {v0}, LbC;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 54
    invoke-virtual {p0, v0}, LvH;->b(Ljava/lang/String;)V

    .line 57
    :cond_0
    invoke-virtual {p1}, LvH;->c()Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-static {v0}, LbC;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 59
    invoke-virtual {p0, v0}, LvH;->c(Ljava/lang/String;)V

    .line 62
    :cond_1
    invoke-virtual {p1}, LvH;->a()Ljava/lang/String;

    move-result-object v0

    .line 63
    invoke-static {v0}, LbC;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 64
    invoke-virtual {p0, v0}, LvH;->a(Ljava/lang/String;)V

    .line 67
    :cond_2
    invoke-virtual {p1}, LvH;->d()Ljava/lang/Integer;

    move-result-object v0

    .line 68
    if-eqz v0, :cond_3

    .line 69
    invoke-virtual {p0, v0}, LvH;->a(Ljava/lang/Integer;)V

    .line 72
    :cond_3
    invoke-virtual {p1}, LvH;->e()Ljava/lang/Boolean;

    move-result-object v0

    .line 73
    if-eqz v0, :cond_4

    .line 74
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, LvH;->a(Z)V

    .line 77
    :cond_4
    invoke-virtual {p1}, LvH;->f()Ljava/lang/Boolean;

    move-result-object v0

    .line 78
    if-eqz v0, :cond_5

    .line 79
    invoke-virtual {p0, v0}, LvH;->a(Ljava/lang/Boolean;)V

    .line 81
    :cond_5
    return-void
.end method


# virtual methods
.method public final a()LvH;
    .locals 4

    .prologue
    .line 22
    :try_start_0
    iget-object v0, p0, LvK;->a:LvI;

    const-string v1, "default_settings"

    invoke-interface {v0, v1}, LvI;->a(Ljava/lang/String;)LvH;

    move-result-object v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/kms/services/ppcs/PpcsConfigurationException;

    const-string v1, "Error reading ppcs default settings. Expecting all fields exists!"

    invoke-direct {v0, v1}, Lcom/kms/services/ppcs/PpcsConfigurationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :catch_0
    move-exception v0

    new-instance v0, Lcom/kms/services/ppcs/PpcsConfigurationException;

    const-string v1, "Error reading ppcs settings. Some fields aren\'t number."

    invoke-direct {v0, v1}, Lcom/kms/services/ppcs/PpcsConfigurationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_0
    :try_start_1
    invoke-virtual {v0}, LvH;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 28
    new-instance v1, Lcom/kms/services/ppcs/PpcsConfigurationException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error reading default settings. Some fields are invalid or null!"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, LvH;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/kms/services/ppcs/PpcsConfigurationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 32
    :cond_1
    iget-object v1, p0, LvK;->a:LvI;

    const-string v2, "custom_settings"

    invoke-interface {v1, v2}, LvI;->a(Ljava/lang/String;)LvH;

    move-result-object v1

    .line 33
    if-eqz v1, :cond_2

    .line 35
    invoke-static {v0, v1}, LvK;->a(LvH;LvH;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 41
    :cond_2
    return-object v0
.end method
