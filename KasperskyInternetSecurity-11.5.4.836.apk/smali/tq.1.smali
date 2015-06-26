.class public final Ltq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltd;


# instance fields
.field private a:LsX;

.field private b:Ltc;


# direct methods
.method public constructor <init>(LsX;)V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ltc;

    invoke-direct {v0}, Ltc;-><init>()V

    iput-object v0, p0, Ltq;->b:Ltc;

    .line 18
    iput-object p1, p0, Ltq;->a:LsX;

    .line 19
    return-void
.end method

.method private a(Lsk;)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 102
    invoke-virtual {p1, v0}, Lsk;->a(I)V

    .line 103
    iget-object v1, p0, Ltq;->a:LsX;

    invoke-virtual {v1}, LsX;->c()I

    move-result v1

    .line 104
    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    invoke-virtual {p1, v0}, Lsk;->a(Z)V

    .line 106
    invoke-virtual {p1}, Lsk;->g_()V

    .line 107
    return-void

    .line 104
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()Ltc;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Ltq;->b:Ltc;

    return-object v0
.end method

.method public final a([B)V
    .locals 11

    .prologue
    const/16 v10, 0x11

    const/4 v9, 0x0

    const/4 v3, 0x1

    const/4 v8, 0x0

    .line 25
    array-length v0, p1

    const/16 v1, 0x93

    if-eq v0, v1, :cond_0

    array-length v0, p1

    const/16 v1, 0x94

    if-ne v0, v1, :cond_7

    .line 28
    :cond_0
    :try_start_0
    const-class v1, LsL;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    :try_start_1
    invoke-static {}, LsL;->c()V

    .line 31
    invoke-static {}, LsL;->b()V

    .line 32
    invoke-static {}, LsL;->getNumberOfKeys()I

    move-result v0

    if-le v0, v3, :cond_1

    .line 34
    const/4 v0, 0x0

    invoke-static {v0}, LsL;->a(I)V

    .line 36
    :cond_1
    invoke-static {p1}, LsL;->a([B)V

    .line 37
    invoke-static {}, Lsr;->g()Lsk;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lsk;->b()I

    move-result v2

    if-eq v2, v3, :cond_3

    .line 40
    iget-object v2, p0, Ltq;->a:LsX;

    if-eqz v2, :cond_2

    .line 41
    iget-object v2, p0, Ltq;->a:LsX;

    invoke-virtual {v2}, LsX;->o()V

    .line 48
    :cond_2
    :goto_0
    invoke-direct {p0, v0}, Ltq;->a(Lsk;)V

    .line 50
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    :try_start_2
    iget-object v0, p0, Ltq;->b:Ltc;

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    new-instance v4, Lts;

    invoke-direct {v4}, Lts;-><init>()V

    invoke-virtual {v0, v1, v2, v3, v4}, Ltc;->a(ZILjava/lang/String;LsX;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 99
    :goto_1
    return-void

    .line 44
    :cond_3
    :try_start_3
    invoke-static {}, LsL;->getNumberOfKeys()I

    move-result v2

    if-le v2, v3, :cond_2

    .line 45
    const/4 v2, 0x0

    invoke-static {v2}, LsL;->a(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 50
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1

    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 54
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 55
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 56
    const/4 v0, 0x5

    .line 57
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 58
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 59
    if-ne v2, v10, :cond_4

    .line 60
    const v0, 0xdead

    .line 62
    :cond_4
    const/16 v3, 0xc

    if-ne v2, v3, :cond_6

    .line 64
    :try_start_5
    const-class v3, LsL;

    monitor-enter v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 65
    :try_start_6
    invoke-static {p1}, LsL;->a([B)V

    .line 67
    iget-object v2, p0, Ltq;->a:LsX;

    if-eqz v2, :cond_5

    .line 68
    iget-object v2, p0, Ltq;->a:LsX;

    invoke-virtual {v2}, LsX;->o()V

    .line 70
    :cond_5
    invoke-static {}, Lsr;->g()Lsk;

    move-result-object v2

    .line 71
    invoke-direct {p0, v2}, Ltq;->a(Lsk;)V

    .line 73
    iget-object v2, p0, Ltq;->b:Ltc;

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    new-instance v7, Lts;

    invoke-direct {v7}, Lts;-><init>()V

    invoke-virtual {v2, v4, v5, v6, v7}, Ltc;->a(ZILjava/lang/String;LsX;)V

    .line 76
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    .line 77
    :catchall_1
    move-exception v2

    :try_start_7
    monitor-exit v3

    throw v2
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 79
    :catch_1
    move-exception v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 80
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 81
    if-ne v1, v10, :cond_6

    .line 82
    const v0, 0xdead

    .line 87
    :cond_6
    iget-object v1, p0, Ltq;->b:Ltc;

    invoke-virtual {v1, v8, v0, v9, v9}, Ltc;->a(ZILjava/lang/String;LsX;)V

    goto :goto_1

    .line 90
    :cond_7
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    .line 93
    const/4 v0, 0x0

    const/4 v2, 0x3

    :try_start_8
    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_2

    move-result v0

    .line 97
    :goto_2
    iget-object v2, p0, Ltq;->b:Ltc;

    invoke-virtual {v2, v8, v0, v1, v9}, Ltc;->a(ZILjava/lang/String;LsX;)V

    goto :goto_1

    .line 95
    :catch_2
    move-exception v0

    const/4 v0, -0x1

    goto :goto_2
.end method
