.class final LrH;
.super Landroid/telephony/PhoneStateListener;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/Vector;

.field private b:Ljava/util/Set;

.field private volatile c:Landroid/telephony/ServiceState;

.field private synthetic d:LrF;


# direct methods
.method private constructor <init>(LrF;)V
    .locals 1

    .prologue
    .line 72
    iput-object p1, p0, LrH;->d:LrF;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 74
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, LrH;->a:Ljava/util/Vector;

    .line 75
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, LrH;->b:Ljava/util/Set;

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, LrH;->c:Landroid/telephony/ServiceState;

    return-void
.end method

.method synthetic constructor <init>(LrF;B)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0, p1}, LrH;-><init>(LrF;)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/telephony/ServiceState;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, LrH;->c:Landroid/telephony/ServiceState;

    return-object v0
.end method

.method public final a(LrL;)V
    .locals 2

    .prologue
    .line 85
    iget-object v1, p0, LrH;->b:Ljava/util/Set;

    monitor-enter v1

    .line 87
    :try_start_0
    iget-object v0, p0, LrH;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 88
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b(LrL;)V
    .locals 2

    .prologue
    .line 93
    iget-object v1, p0, LrH;->b:Ljava/util/Set;

    monitor-enter v1

    .line 95
    :try_start_0
    iget-object v0, p0, LrH;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 96
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final onCallStateChanged(ILjava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 125
    packed-switch p1, :pswitch_data_0

    .line 189
    :cond_0
    return-void

    .line 133
    :pswitch_0
    new-instance v0, Lcom/kms/kmsshared/cellmon/VoiceEvent;

    invoke-direct {v0}, Lcom/kms/kmsshared/cellmon/VoiceEvent;-><init>()V

    .line 134
    iget-object v1, p0, LrH;->a:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 135
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/kms/kmsshared/cellmon/VoiceEvent;->mSaveRingerMode:Z

    .line 140
    :goto_0
    iput v2, v0, Lcom/kms/kmsshared/cellmon/VoiceEvent;->mEventType:I

    .line 141
    iput-object p2, v0, Lcom/kms/kmsshared/cellmon/VoiceEvent;->mPhoneNumber:Ljava/lang/String;

    .line 142
    iget-object v1, v0, Lcom/kms/kmsshared/cellmon/VoiceEvent;->mPhoneNumber:Ljava/lang/String;

    invoke-static {v1}, Lra;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 144
    const-string v1, "-2"

    iput-object v1, v0, Lcom/kms/kmsshared/cellmon/VoiceEvent;->mPhoneNumber:Ljava/lang/String;

    .line 146
    :cond_1
    iget-object v1, p0, LrH;->a:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 147
    iget-object v1, p0, LrH;->d:LrF;

    invoke-virtual {v1, v0}, LrF;->a(Lcom/kms/kmsshared/cellmon/CellPhoneEvent;)V

    .line 155
    :pswitch_1
    iget-object v0, p0, LrH;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 157
    iget-object v0, p0, LrH;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_0

    .line 159
    iget-object v0, p0, LrH;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kms/kmsshared/cellmon/VoiceEvent;

    invoke-virtual {v0}, Lcom/kms/kmsshared/cellmon/VoiceEvent;->free()V

    .line 160
    iget-object v0, p0, LrH;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 157
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    .line 138
    :cond_2
    iput-boolean v2, v0, Lcom/kms/kmsshared/cellmon/VoiceEvent;->mSaveRingerMode:Z

    goto :goto_0

    .line 171
    :pswitch_2
    iget-object v0, p0, LrH;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 173
    iget-object v0, p0, LrH;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_2
    if-ltz v1, :cond_0

    .line 175
    iget-object v0, p0, LrH;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kms/kmsshared/cellmon/VoiceEvent;

    invoke-virtual {v0}, Lcom/kms/kmsshared/cellmon/VoiceEvent;->free()V

    .line 176
    iget-object v0, p0, LrH;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 173
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2

    .line 125
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
    .line 102
    iput-object p1, p0, LrH;->c:Landroid/telephony/ServiceState;

    .line 107
    iget-object v1, p0, LrH;->b:Ljava/util/Set;

    monitor-enter v1

    .line 109
    :try_start_0
    iget-object v0, p0, LrH;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 110
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LrL;

    .line 113
    invoke-interface {v0, p1}, LrL;->a(Landroid/telephony/ServiceState;)Z

    move-result v0

    .line 114
    if-eqz v0, :cond_0

    .line 116
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 119
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
