.class public final LrF;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqf;


# instance fields
.field private a:Landroid/content/Context;

.field private b:LrJ;

.field private c:LrK;

.field private d:LrI;

.field private e:Ljava/util/Vector;

.field private f:Ljava/util/Vector;

.field private g:Ljava/util/Vector;

.field private h:LrH;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, LrJ;

    invoke-direct {v0, p0}, LrJ;-><init>(LrF;)V

    iput-object v0, p0, LrF;->b:LrJ;

    .line 41
    new-instance v0, LrK;

    invoke-direct {v0, p0}, LrK;-><init>(LrF;)V

    iput-object v0, p0, LrF;->c:LrK;

    .line 42
    new-instance v0, LrI;

    invoke-direct {v0, p0}, LrI;-><init>(LrF;)V

    iput-object v0, p0, LrF;->d:LrI;

    .line 43
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, LrF;->e:Ljava/util/Vector;

    .line 44
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, LrF;->f:Ljava/util/Vector;

    .line 45
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, LrF;->g:Ljava/util/Vector;

    .line 70
    new-instance v0, LrH;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LrH;-><init>(LrF;B)V

    iput-object v0, p0, LrF;->h:LrH;

    .line 51
    iput-object p1, p0, LrF;->a:Landroid/content/Context;

    .line 52
    invoke-static {p0}, Lcom/kms/kmsdaemon/SMSReceiver;->a(Lqf;)V

    .line 53
    return-void
.end method

.method static synthetic a(LrF;)LrJ;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, LrF;->b:LrJ;

    return-object v0
.end method

.method static synthetic b(LrF;)LrI;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, LrF;->d:LrI;

    return-object v0
.end method

.method static synthetic c(LrF;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, LrF;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public final a()Landroid/telephony/ServiceState;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, LrF;->h:LrH;

    invoke-virtual {v0}, LrH;->a()Landroid/telephony/ServiceState;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized a(Lcom/kms/kmsshared/cellmon/CellPhoneEvent;)V
    .locals 3

    .prologue
    .line 518
    monitor-enter p0

    :try_start_0
    instance-of v1, p1, Lcom/kms/kmsshared/cellmon/VoiceEvent;

    if-eqz v1, :cond_0

    .line 519
    move-object v0, p1

    check-cast v0, Lcom/kms/kmsshared/cellmon/VoiceEvent;

    move-object v1, v0

    .line 520
    iget v2, v1, Lcom/kms/kmsshared/cellmon/VoiceEvent;->mEventType:I

    if-nez v2, :cond_0

    .line 521
    iget-object v2, p0, LrF;->f:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 524
    :cond_0
    instance-of v1, p1, Lcom/kms/kmsshared/cellmon/SMSEvent;

    if-eqz v1, :cond_1

    .line 525
    move-object v0, p1

    check-cast v0, Lcom/kms/kmsshared/cellmon/SMSEvent;

    move-object v1, v0

    .line 526
    iget v2, v1, Lcom/kms/kmsshared/cellmon/SMSEvent;->mEventType:I

    if-nez v2, :cond_1

    .line 527
    iget-object v2, p0, LrF;->g:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 530
    :cond_1
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v1, p0, LrF;->e:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v2, v1, :cond_2

    .line 532
    iget-object v1, p0, LrF;->e:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LrE;

    .line 533
    invoke-interface {v1, p1}, LrE;->a(Lcom/kms/kmsshared/cellmon/CellPhoneEvent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_2

    .line 534
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 536
    :cond_2
    monitor-exit p0

    return-void

    .line 518
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final a(Lcom/kms/kmsshared/cellmon/SMSEvent;)V
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, LrF;->g:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 514
    return-void
.end method

.method public final a(Lcom/kms/kmsshared/cellmon/VoiceEvent;)V
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, LrF;->f:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 500
    return-void
.end method

.method public final declared-synchronized a(Ljava/lang/Class;)V
    .locals 3

    .prologue
    .line 565
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LrF;->e:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LrE;

    .line 566
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 567
    iget-object v1, p0, LrF;->e:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 571
    :cond_1
    monitor-exit p0

    return-void

    .line 565
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 489
    invoke-virtual {p0}, LrF;->d()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 490
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kms/kmsshared/cellmon/VoiceEvent;

    .line 491
    iget-object v2, v0, Lcom/kms/kmsshared/cellmon/VoiceEvent;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 492
    iget-object v1, p0, LrF;->f:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 496
    :cond_1
    return-void
.end method

.method public final declared-synchronized a(LrE;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 540
    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, LrE;->a()I

    move-result v3

    move v2, v1

    .line 542
    :goto_0
    iget-object v0, p0, LrF;->e:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 544
    iget-object v0, p0, LrF;->e:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LrE;

    .line 545
    invoke-interface {v0}, LrE;->a()I

    move-result v0

    if-le v3, v0, :cond_1

    .line 547
    iget-object v0, p0, LrF;->e:Ljava/util/Vector;

    invoke-virtual {v0, p1, v2}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 548
    const/4 v0, 0x1

    .line 552
    :goto_1
    if-nez v0, :cond_0

    .line 554
    iget-object v0, p0, LrF;->e:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 556
    :cond_0
    monitor-exit p0

    return-void

    .line 542
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 540
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public final a(LrL;)V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, LrF;->h:LrH;

    invoke-virtual {v0, p1}, LrH;->a(LrL;)V

    .line 63
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 229
    new-instance v1, Lcom/kms/kmsshared/cellmon/SMSEvent;

    invoke-direct {v1}, Lcom/kms/kmsshared/cellmon/SMSEvent;-><init>()V

    .line 230
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/kms/kmsshared/cellmon/SMSEvent;->mDate:J

    .line 231
    iput-object p1, v1, Lcom/kms/kmsshared/cellmon/SMSEvent;->mPhoneNumber:Ljava/lang/String;

    .line 232
    iput v0, v1, Lcom/kms/kmsshared/cellmon/SMSEvent;->mEventType:I

    .line 233
    iput-object p2, v1, Lcom/kms/kmsshared/cellmon/SMSEvent;->mSMSBody:Ljava/lang/String;

    .line 238
    invoke-virtual {p0, v1}, LrF;->a(Lcom/kms/kmsshared/cellmon/CellPhoneEvent;)V

    .line 240
    invoke-virtual {v1}, Lcom/kms/kmsshared/cellmon/SMSEvent;->isBlocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 246
    const/4 v0, 0x1

    .line 249
    :cond_0
    return v0
.end method

.method public final b()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 199
    iget-object v0, p0, LrF;->a:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 200
    iget-object v1, p0, LrF;->h:LrH;

    const/16 v2, 0x21

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 201
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, LrG;

    invoke-direct {v1, p0}, LrG;-><init>(LrF;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 208
    iget-object v0, p0, LrF;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, LqR;->a:Landroid/net/Uri;

    iget-object v2, p0, LrF;->b:LrJ;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 209
    iget-object v0, p0, LrF;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, LqR;->b:Landroid/net/Uri;

    iget-object v2, p0, LrF;->c:LrK;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 210
    iget-object v0, p0, LrF;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, LrF;->d:LrI;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 211
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 503
    invoke-virtual {p0}, LrF;->e()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 504
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kms/kmsshared/cellmon/SMSEvent;

    .line 505
    iget-object v2, v0, Lcom/kms/kmsshared/cellmon/SMSEvent;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 506
    iget-object v1, p0, LrF;->g:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 510
    :cond_1
    return-void
.end method

.method public final b(LrL;)V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, LrF;->h:LrH;

    invoke-virtual {v0, p1}, LrH;->b(LrL;)V

    .line 68
    return-void
.end method

.method public final c()V
    .locals 3

    .prologue
    .line 219
    iget-object v0, p0, LrF;->a:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 220
    iget-object v1, p0, LrF;->h:LrH;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 221
    iget-object v0, p0, LrF;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, LrF;->b:LrJ;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 222
    iget-object v0, p0, LrF;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, LrF;->c:LrK;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 223
    iget-object v0, p0, LrF;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, LrF;->d:LrI;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 224
    return-void
.end method

.method public final d()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, LrF;->f:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, LrF;->g:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
