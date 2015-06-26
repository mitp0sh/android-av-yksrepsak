.class final LiZ;
.super Landroid/telephony/PhoneStateListener;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/Vector;

.field private b:Ljava/util/Set;

.field private volatile c:Landroid/telephony/ServiceState;

.field private synthetic d:LiY;


# direct methods
.method private constructor <init>(LiY;)V
    .locals 1

    .prologue
    .line 114
    iput-object p1, p0, LiZ;->d:LiY;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 116
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, LiZ;->a:Ljava/util/Vector;

    .line 117
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, LiZ;->b:Ljava/util/Set;

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, LiZ;->c:Landroid/telephony/ServiceState;

    return-void
.end method

.method synthetic constructor <init>(LiY;B)V
    .locals 0

    .prologue
    .line 114
    invoke-direct {p0, p1}, LiZ;-><init>(LiY;)V

    return-void
.end method


# virtual methods
.method public final onCallStateChanged(ILjava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 167
    packed-switch p1, :pswitch_data_0

    .line 231
    :cond_0
    return-void

    .line 175
    :pswitch_0
    new-instance v0, Ljk;

    iget-object v1, p0, LiZ;->d:LiY;

    invoke-static {v1}, LiY;->a(LiY;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Ljk;-><init>(Landroid/content/Context;)V

    .line 176
    iget-object v1, p0, LiZ;->a:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 177
    const/4 v1, 0x1

    iput-boolean v1, v0, Ljk;->d:Z

    .line 182
    :goto_0
    iput v2, v0, Ljk;->c:I

    .line 183
    iput-object p2, v0, Ljk;->b:Ljava/lang/String;

    .line 184
    iget-object v1, v0, Ljk;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 186
    const-string v1, "-2"

    iput-object v1, v0, Ljk;->b:Ljava/lang/String;

    .line 188
    :cond_1
    iget-object v1, p0, LiZ;->a:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 189
    iget-object v1, p0, LiZ;->d:LiY;

    invoke-static {v1, v0}, LiY;->a(LiY;Ljd;)V

    .line 197
    :pswitch_1
    iget-object v0, p0, LiZ;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 199
    iget-object v0, p0, LiZ;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_0

    .line 201
    iget-object v0, p0, LiZ;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljk;

    invoke-virtual {v0}, Ljk;->b()V

    .line 202
    iget-object v0, p0, LiZ;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 199
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    .line 180
    :cond_2
    iput-boolean v2, v0, Ljk;->d:Z

    goto :goto_0

    .line 213
    :pswitch_2
    iget-object v0, p0, LiZ;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 215
    iget-object v0, p0, LiZ;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_2
    if-ltz v1, :cond_0

    .line 217
    iget-object v0, p0, LiZ;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljk;

    invoke-virtual {v0}, Ljk;->b()V

    .line 218
    iget-object v0, p0, LiZ;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 215
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2

    .line 167
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3

    .prologue
    .line 144
    iput-object p1, p0, LiZ;->c:Landroid/telephony/ServiceState;

    .line 149
    iget-object v1, p0, LiZ;->b:Ljava/util/Set;

    monitor-enter v1

    .line 151
    :try_start_0
    iget-object v0, p0, LiZ;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 152
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj;

    .line 155
    invoke-interface {v0}, Ljj;->a()Z

    move-result v0

    .line 156
    if-eqz v0, :cond_0

    .line 158
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 161
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
