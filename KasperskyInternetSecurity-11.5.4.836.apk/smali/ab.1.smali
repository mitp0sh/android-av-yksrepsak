.class public final Lab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LN;
.implements Lax;


# instance fields
.field private final a:Law;

.field private b:Lae;

.field private final c:Lv;

.field private final d:Lcom/kaspersky/components/ipm/IpmMessageManager;

.field private final e:LV;

.field private final f:I

.field private g:J

.field private final h:Lai;

.field private final i:Laj;

.field private j:LW;

.field private k:LX;


# direct methods
.method public constructor <init>(Law;Lv;Lcom/kaspersky/components/ipm/IpmMessageManager;LV;Lai;ILX;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lab;->a:Law;

    .line 46
    iput-object p2, p0, Lab;->c:Lv;

    .line 47
    iput-object p3, p0, Lab;->d:Lcom/kaspersky/components/ipm/IpmMessageManager;

    .line 48
    iput-object p4, p0, Lab;->e:LV;

    .line 49
    const/16 v0, 0xd

    iput v0, p0, Lab;->f:I

    .line 50
    iget-object v0, p0, Lab;->a:Law;

    invoke-interface {v0, p0}, Law;->a(Lax;)V

    .line 51
    iput-object p5, p0, Lab;->h:Lai;

    .line 52
    new-instance v0, Lak;

    new-instance v1, Lac;

    invoke-direct {v1, p0, v3}, Lac;-><init>(Lab;B)V

    new-instance v2, Lad;

    invoke-direct {v2, p0, v3}, Lad;-><init>(Lab;B)V

    invoke-direct {v0, v1, v2, p4}, Lak;-><init>(Lam;LU;LV;)V

    iput-object v0, p0, Lab;->i:Laj;

    .line 53
    iget-object v0, p0, Lab;->a:Law;

    invoke-interface {v0}, Law;->a()LaC;

    move-result-object v0

    .line 54
    if-eqz v0, :cond_0

    .line 55
    iget-object v1, p0, Lab;->i:Laj;

    invoke-interface {v0}, LaC;->a()Lay;

    move-result-object v0

    invoke-interface {v1, v0}, Laj;->a(Lay;)V

    .line 58
    :cond_0
    iput-object p7, p0, Lab;->k:LX;

    .line 61
    invoke-interface {p4}, LV;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    invoke-interface {p7, p2}, LX;->a(Lv;)LW;

    move-result-object v0

    iput-object v0, p0, Lab;->j:LW;

    .line 63
    iget-object v0, p0, Lab;->j:LW;

    invoke-interface {v0}, LW;->a()V

    .line 65
    :cond_1
    return-void
.end method

.method static synthetic a(Lab;J)J
    .locals 0

    .prologue
    .line 25
    iput-wide p1, p0, Lab;->g:J

    return-wide p1
.end method

.method static synthetic a(Lab;)Lai;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lab;->h:Lai;

    return-object v0
.end method

.method static synthetic b(Lab;)Lcom/kaspersky/components/ipm/IpmMessageManager;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lab;->d:Lcom/kaspersky/components/ipm/IpmMessageManager;

    return-object v0
.end method

.method static synthetic c(Lab;)Lae;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lab;->b:Lae;

    return-object v0
.end method

.method static synthetic d(Lab;)LV;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lab;->e:LV;

    return-object v0
.end method

.method static synthetic e(Lab;)I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lab;->f:I

    return v0
.end method

.method static synthetic f(Lab;)Lv;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lab;->c:Lv;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 1

    .prologue
    .line 74
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lab;->i:Laj;

    invoke-interface {v0}, Laj;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    monitor-exit p0

    return-void

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(J)V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lab;->h:Lai;

    invoke-interface {v0, p1, p2}, Lai;->a(J)V

    .line 70
    iget-object v0, p0, Lab;->d:Lcom/kaspersky/components/ipm/IpmMessageManager;

    invoke-interface {v0, p1, p2}, Lcom/kaspersky/components/ipm/IpmMessageManager;->a(J)V

    .line 71
    return-void
.end method

.method public final declared-synchronized a(Lay;)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 83
    monitor-enter p0

    if-eqz p1, :cond_1

    .line 84
    :try_start_0
    iget-object v0, p0, Lab;->i:Laj;

    invoke-interface {v0, p1}, Laj;->a(Lay;)V

    .line 85
    iget-object v0, p0, Lab;->b:Lae;

    .line 86
    invoke-interface {p1}, Lay;->k()Laz;

    move-result-object v1

    invoke-interface {v1}, Laz;->f()LaD;

    move-result-object v1

    invoke-static {v1}, Lal;->a(LaD;)Lae;

    move-result-object v1

    iput-object v1, p0, Lab;->b:Lae;

    .line 89
    iget-object v1, p0, Lab;->b:Lae;

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    .line 91
    invoke-interface {p1}, Lay;->k()Laz;

    move-result-object v0

    invoke-interface {v0}, Laz;->c()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 93
    iget-object v0, p0, Lab;->k:LX;

    iget-object v1, p0, Lab;->c:Lv;

    invoke-interface {v0, v1}, LX;->a(Lv;)LW;

    move-result-object v0

    iput-object v0, p0, Lab;->j:LW;

    .line 94
    iget-object v0, p0, Lab;->j:LW;

    invoke-interface {v0}, LW;->a()V

    .line 102
    :cond_0
    :goto_0
    iget-object v0, p0, Lab;->i:Laj;

    iget-object v1, p0, Lab;->b:Lae;

    invoke-interface {v0, v1}, Laj;->a(Lae;)V

    .line 103
    iget-object v0, p0, Lab;->i:Laj;

    invoke-interface {v0}, Laj;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    :cond_1
    monitor-exit p0

    return-void

    .line 96
    :cond_2
    :try_start_1
    iget-object v0, p0, Lab;->j:LW;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lay;->k()Laz;

    move-result-object v0

    invoke-interface {v0}, Laz;->c()I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 98
    iget-object v0, p0, Lab;->j:LW;

    invoke-interface {v0}, LW;->b()V

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lab;->j:LW;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 78
    iget-wide v0, p0, Lab;->g:J

    return-wide v0
.end method
