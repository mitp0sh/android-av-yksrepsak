.class public Lsr;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Lsr;


# instance fields
.field private b:Ljava/util/Map;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsr;->b:Ljava/util/Map;

    .line 32
    return-void
.end method

.method public static a()Lsr;
    .locals 2

    .prologue
    .line 35
    sget-object v0, Lsr;->a:Lsr;

    if-nez v0, :cond_1

    .line 36
    const-class v1, Lsr;

    monitor-enter v1

    .line 37
    :try_start_0
    sget-object v0, Lsr;->a:Lsr;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lsr;

    invoke-direct {v0}, Lsr;-><init>()V

    sput-object v0, Lsr;->a:Lsr;

    .line 40
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    :cond_1
    sget-object v0, Lsr;->a:Lsr;

    return-object v0

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b()Lsf;
    .locals 2

    .prologue
    .line 111
    invoke-static {}, Lsr;->a()Lsr;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lsr;->a(I)Lss;

    move-result-object v0

    check-cast v0, Lsf;

    return-object v0
.end method

.method private static b(I)Lss;
    .locals 2

    .prologue
    .line 175
    packed-switch p0, :pswitch_data_0

    .line 208
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 177
    :pswitch_0
    new-instance v0, Lsf;

    invoke-direct {v0}, Lsf;-><init>()V

    goto :goto_0

    .line 179
    :pswitch_1
    new-instance v0, Lsc;

    invoke-direct {v0}, Lsc;-><init>()V

    goto :goto_0

    .line 181
    :pswitch_2
    new-instance v0, Lsy;

    invoke-direct {v0}, Lsy;-><init>()V

    goto :goto_0

    .line 183
    :pswitch_3
    new-instance v0, Lse;

    sget-object v1, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lse;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 185
    :pswitch_4
    new-instance v0, Lsm;

    invoke-direct {v0}, Lsm;-><init>()V

    goto :goto_0

    .line 187
    :pswitch_5
    new-instance v0, Lsl;

    invoke-direct {v0}, Lsl;-><init>()V

    goto :goto_0

    .line 189
    :pswitch_6
    new-instance v0, Lsj;

    invoke-direct {v0}, Lsj;-><init>()V

    goto :goto_0

    .line 191
    :pswitch_7
    new-instance v0, Lsh;

    invoke-direct {v0}, Lsh;-><init>()V

    goto :goto_0

    .line 193
    :pswitch_8
    new-instance v0, Lso;

    invoke-direct {v0}, Lso;-><init>()V

    goto :goto_0

    .line 195
    :pswitch_9
    new-instance v0, Lsb;

    invoke-direct {v0}, Lsb;-><init>()V

    goto :goto_0

    .line 197
    :pswitch_a
    new-instance v0, Lsz;

    invoke-direct {v0}, Lsz;-><init>()V

    goto :goto_0

    .line 199
    :pswitch_b
    new-instance v0, Lsd;

    invoke-direct {v0}, Lsd;-><init>()V

    goto :goto_0

    .line 201
    :pswitch_c
    new-instance v0, Lsk;

    invoke-direct {v0}, Lsk;-><init>()V

    goto :goto_0

    .line 203
    :pswitch_d
    new-instance v0, Lsn;

    invoke-direct {v0}, Lsn;-><init>()V

    goto :goto_0

    .line 205
    :pswitch_e
    new-instance v0, Lsx;

    invoke-direct {v0}, Lsx;-><init>()V

    goto :goto_0

    .line 175
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method public static c()Lsb;
    .locals 2

    .prologue
    .line 115
    invoke-static {}, Lsr;->a()Lsr;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lsr;->a(I)Lss;

    move-result-object v0

    check-cast v0, Lsb;

    return-object v0
.end method

.method public static d()Lsc;
    .locals 2

    .prologue
    .line 119
    invoke-static {}, Lsr;->a()Lsr;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lsr;->a(I)Lss;

    move-result-object v0

    check-cast v0, Lsc;

    return-object v0
.end method

.method public static e()Lse;
    .locals 2

    .prologue
    .line 123
    invoke-static {}, Lsr;->a()Lsr;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lsr;->a(I)Lss;

    move-result-object v0

    check-cast v0, Lse;

    return-object v0
.end method

.method public static f()Lsm;
    .locals 2

    .prologue
    .line 127
    invoke-static {}, Lsr;->a()Lsr;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lsr;->a(I)Lss;

    move-result-object v0

    check-cast v0, Lsm;

    return-object v0
.end method

.method public static g()Lsk;
    .locals 2

    .prologue
    .line 131
    invoke-static {}, Lsr;->a()Lsr;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lsr;->a(I)Lss;

    move-result-object v0

    check-cast v0, Lsk;

    return-object v0
.end method

.method public static h()Lsj;
    .locals 2

    .prologue
    .line 135
    invoke-static {}, Lsr;->a()Lsr;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lsr;->a(I)Lss;

    move-result-object v0

    check-cast v0, Lsj;

    return-object v0
.end method

.method public static i()Lsz;
    .locals 2

    .prologue
    .line 139
    invoke-static {}, Lsr;->a()Lsr;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lsr;->a(I)Lss;

    move-result-object v0

    check-cast v0, Lsz;

    return-object v0
.end method

.method public static j()Lsl;
    .locals 2

    .prologue
    .line 143
    invoke-static {}, Lsr;->a()Lsr;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lsr;->a(I)Lss;

    move-result-object v0

    check-cast v0, Lsl;

    return-object v0
.end method

.method public static k()Lsh;
    .locals 2

    .prologue
    .line 147
    invoke-static {}, Lsr;->a()Lsr;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lsr;->a(I)Lss;

    move-result-object v0

    check-cast v0, Lsh;

    return-object v0
.end method

.method public static l()Lsx;
    .locals 2

    .prologue
    .line 151
    invoke-static {}, Lsr;->a()Lsr;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lsr;->a(I)Lss;

    move-result-object v0

    check-cast v0, Lsx;

    return-object v0
.end method

.method public static m()Lsy;
    .locals 2

    .prologue
    .line 155
    invoke-static {}, Lsr;->a()Lsr;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lsr;->a(I)Lss;

    move-result-object v0

    check-cast v0, Lsy;

    return-object v0
.end method

.method public static n()Lso;
    .locals 2

    .prologue
    .line 159
    invoke-static {}, Lsr;->a()Lsr;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lsr;->a(I)Lss;

    move-result-object v0

    check-cast v0, Lso;

    return-object v0
.end method

.method public static o()Lsn;
    .locals 2

    .prologue
    .line 167
    invoke-static {}, Lsr;->a()Lsr;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lsr;->a(I)Lss;

    move-result-object v0

    check-cast v0, Lsn;

    return-object v0
.end method

.method public static p()I
    .locals 1

    .prologue
    .line 171
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final a(I)Lss;
    .locals 3

    .prologue
    .line 46
    iget-object v0, p0, Lsr;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lss;

    .line 47
    if-nez v0, :cond_1

    .line 48
    monitor-enter p0

    .line 49
    if-nez v0, :cond_0

    .line 50
    :try_start_0
    invoke-static {p1}, Lsr;->b(I)Lss;

    move-result-object v0

    .line 51
    iget-object v1, p0, Lsr;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    :cond_1
    return-object v0

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
