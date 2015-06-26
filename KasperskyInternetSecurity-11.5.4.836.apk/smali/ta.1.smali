.class public final Lta;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Z


# instance fields
.field private a:LsX;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 73
    :try_start_0
    const-class v1, LsL;

    monitor-enter v1
    :try_end_0
    .catch Lcom/kms/license/legacy/LicenseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :try_start_1
    sget-boolean v0, Lta;->b:Z

    if-nez v0, :cond_0

    .line 75
    invoke-static {p0}, LsL;->a(Landroid/content/Context;)V

    .line 76
    invoke-static {}, LsL;->b()V

    .line 77
    const/4 v0, 0x1

    sput-boolean v0, Lta;->b:Z

    .line 79
    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    :goto_0
    return-void

    .line 79
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1

    throw v0
    :try_end_2
    .catch Lcom/kms/license/legacy/LicenseException; {:try_start_2 .. :try_end_2} :catch_0

    .line 82
    :catch_0
    move-exception v0

    .line 81
    invoke-virtual {v0}, Lcom/kms/license/legacy/LicenseException;->printStackTrace()V

    goto :goto_0
.end method

.method private b()Z
    .locals 2

    .prologue
    .line 87
    new-instance v0, LtG;

    invoke-direct {v0}, LtG;-><init>()V

    .line 88
    invoke-virtual {v0}, LtG;->c()LaD;

    move-result-object v0

    .line 89
    new-instance v1, Ltu;

    invoke-direct {v1, v0}, Ltu;-><init>(LaD;)V

    .line 91
    invoke-virtual {v1}, LsX;->a()Lay;

    move-result-object v0

    invoke-interface {v0}, Lay;->e()Z

    move-result v0

    .line 92
    if-eqz v0, :cond_0

    .line 93
    iput-object v1, p0, Lta;->a:LsX;

    .line 95
    :cond_0
    return v0
.end method

.method private b(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 100
    const/4 v0, 0x0

    .line 101
    sget-boolean v1, Lta;->b:Z

    if-nez v1, :cond_0

    .line 102
    invoke-static {p1}, Lta;->a(Landroid/content/Context;)V

    .line 104
    :cond_0
    const-class v1, LsL;

    monitor-enter v1

    .line 105
    :try_start_0
    invoke-static {}, LsL;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 106
    new-instance v0, Lts;

    invoke-direct {v0}, Lts;-><init>()V

    iput-object v0, p0, Lta;->a:LsX;

    .line 107
    const/4 v0, 0x1

    .line 109
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    return v0

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a()LsX;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lta;->a:LsX;

    return-object v0
.end method

.method public final a(Landroid/content/Context;LsQ;Z)V
    .locals 2

    .prologue
    .line 27
    invoke-static {p1}, Lta;->a(Landroid/content/Context;)V

    .line 28
    invoke-static {}, Lsr;->g()Lsk;

    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lsk;->b()I

    move-result v1

    .line 31
    packed-switch v1, :pswitch_data_0

    .line 65
    :cond_0
    new-instance v0, LtH;

    invoke-direct {v0}, LtH;-><init>()V

    iput-object v0, p0, Lta;->a:LsX;

    .line 69
    :cond_1
    :goto_0
    return-void

    .line 34
    :pswitch_0
    invoke-direct {p0, p1}, Lta;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 36
    new-instance v1, LtH;

    invoke-direct {v1}, LtH;-><init>()V

    iput-object v1, p0, Lta;->a:LsX;

    .line 37
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lsk;->a(I)V

    .line 38
    invoke-virtual {v0}, Lsk;->g_()V

    goto :goto_0

    .line 43
    :pswitch_1
    invoke-direct {p0}, Lta;->b()Z

    goto :goto_0

    .line 47
    :pswitch_2
    new-instance v0, LtV;

    invoke-direct {v0, p1}, LtV;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lta;->a:LsX;

    goto :goto_0

    .line 51
    :pswitch_3
    if-eqz p3, :cond_0

    .line 52
    invoke-direct {p0, p1}, Lta;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 53
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lsk;->a(I)V

    .line 54
    invoke-virtual {v0}, Lsk;->g_()V

    goto :goto_0

    .line 57
    :cond_2
    new-instance v0, LtH;

    invoke-direct {v0}, LtH;-><init>()V

    iput-object v0, p0, Lta;->a:LsX;

    goto :goto_0

    .line 31
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
