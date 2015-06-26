.class public final LtH;
.super LsX;
.source "SourceFile"


# instance fields
.field private final b:J

.field private final c:LtJ;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 20
    invoke-direct {p0}, LsX;-><init>()V

    .line 33
    new-instance v0, LtJ;

    invoke-direct {v0}, LtJ;-><init>()V

    iput-object v0, p0, LtH;->c:LtJ;

    .line 21
    invoke-static {}, Lsr;->g()Lsk;

    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lsk;->h()J

    move-result-wide v1

    .line 23
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_0

    .line 24
    new-instance v1, Ljava/util/GregorianCalendar;

    new-instance v2, Ljava/util/SimpleTimeZone;

    const/4 v3, 0x0

    const-string v4, "GMT"

    invoke-direct {v2, v3, v4}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    invoke-virtual {v1}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v1

    iput-wide v1, p0, LtH;->b:J

    .line 25
    iget-wide v1, p0, LtH;->b:J

    invoke-virtual {v0, v1, v2}, Lsk;->a(J)V

    .line 26
    invoke-virtual {v0}, Lsk;->g_()V

    .line 30
    :goto_0
    return-void

    .line 28
    :cond_0
    iput-wide v1, p0, LtH;->b:J

    goto :goto_0
.end method


# virtual methods
.method public final a()Lay;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, LtH;->c:LtJ;

    return-object v0
.end method

.method public final a(I)Z
    .locals 1

    .prologue
    .line 69
    sparse-switch p1, :sswitch_data_0

    .line 86
    const/4 v0, 0x1

    .line 89
    :goto_0
    return v0

    .line 79
    :sswitch_0
    const/4 v0, 0x0

    .line 80
    goto :goto_0

    .line 83
    :sswitch_1
    invoke-static {}, Lsr;->f()Lsm;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Lsm;->b()Z

    move-result v0

    goto :goto_0

    .line 69
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x7 -> :sswitch_0
        0xa -> :sswitch_0
        0x12 -> :sswitch_0
        0x13 -> :sswitch_1
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x24 -> :sswitch_0
        0x27 -> :sswitch_0
    .end sparse-switch
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, LtH;->c:LtJ;

    invoke-virtual {v0}, LtJ;->k()Laz;

    move-result-object v0

    invoke-interface {v0}, Laz;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, LtH;->c:LtJ;

    invoke-virtual {v0}, LtJ;->k()Laz;

    move-result-object v0

    invoke-interface {v0}, Laz;->c()I

    move-result v0

    return v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 101
    const v0, 0x7fffffff

    return v0
.end method

.method public final e()J
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, LtH;->c:LtJ;

    invoke-virtual {v0}, LtJ;->k()Laz;

    move-result-object v0

    invoke-interface {v0}, Laz;->e()J

    move-result-wide v0

    return-wide v0
.end method

.method public final f()J
    .locals 2

    .prologue
    .line 111
    iget-wide v0, p0, LtH;->b:J

    return-wide v0
.end method

.method public final g()I
    .locals 1

    .prologue
    .line 116
    const v0, 0x7fffffff

    return v0
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public final i()Z
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public final j()Z
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x0

    return v0
.end method

.method public final k()[Lcom/kaspersky/components/ucp/UcpLicenseInfoItem;
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x0

    return-object v0
.end method

.method public final l()I
    .locals 1

    .prologue
    .line 37
    const/16 v0, 0x9

    return v0
.end method

.method public final m()I
    .locals 1

    .prologue
    .line 42
    const/16 v0, 0x9

    return v0
.end method

.method public final n()I
    .locals 1

    .prologue
    .line 47
    const/16 v0, 0x9

    return v0
.end method

.method public final o()V
    .locals 0

    .prologue
    .line 54
    return-void
.end method
