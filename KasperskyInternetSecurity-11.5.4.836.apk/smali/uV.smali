.class public final LuV;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements LrE;


# static fields
.field private static i:Ljava/util/Vector;


# instance fields
.field private a:Ljava/util/Set;

.field private b:Landroid/content/Context;

.field private c:Lvl;

.field private d:Ljava/util/Vector;

.field private e:LuU;

.field private f:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field private g:LrF;

.field private h:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 390
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, LuV;->i:Ljava/util/Vector;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, LuV;->a:Ljava/util/Set;

    .line 35
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, LuV;->d:Ljava/util/Vector;

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, LuV;->e:LuU;

    .line 40
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, LuV;->h:Ljava/util/concurrent/locks/ReentrantLock;

    .line 58
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, LuV;->f:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 59
    iput-object p1, p0, LuV;->b:Landroid/content/Context;

    .line 60
    new-instance v0, Lvl;

    iget-object v1, p0, LuV;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lvl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, LuV;->c:Lvl;

    .line 61
    invoke-static {}, Lsr;->f()Lsm;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lsm;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    iget-object v1, p0, LuV;->c:Lvl;

    iget-object v2, p0, LuV;->a:Ljava/util/Set;

    invoke-virtual {v1, v2}, Lvl;->b(Ljava/util/Set;)I

    .line 65
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, LuW;

    invoke-direct {v2, p0, v0}, LuW;-><init>(LuV;Lsm;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 80
    :cond_0
    return-void
.end method

.method static synthetic a(LuV;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, LuV;->h:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method private a(Lsm;)V
    .locals 4

    .prologue
    .line 84
    invoke-static {}, Lcom/kms/privacyprotection/PPItemsStorage;->getInstance()Lcom/kms/privacyprotection/PPItemsStorage;

    move-result-object v0

    .line 85
    invoke-virtual {v0}, Lcom/kms/privacyprotection/PPItemsStorage;->getPhones()Ljava/util/Set;

    move-result-object v0

    .line 86
    invoke-virtual {p1}, Lsm;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 90
    invoke-static {}, LuR;->a()LuR;

    move-result-object v2

    iget-object v3, p0, LuV;->b:Landroid/content/Context;

    invoke-virtual {v2, v3, v0}, LuR;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 91
    iget-object v2, p0, LuV;->c:Lvl;

    invoke-virtual {v2, v0}, Lvl;->f(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 92
    iget-object v2, p0, LuV;->a:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 93
    iget-object v0, p0, LuV;->c:Lvl;

    iget-object v2, p0, LuV;->a:Ljava/util/Set;

    invoke-virtual {v0, v2}, Lvl;->a(Ljava/util/Set;)I

    goto :goto_0

    .line 96
    :cond_0
    return-void
.end method

.method public static a(LuU;)V
    .locals 1

    .prologue
    .line 394
    sget-object v0, LuV;->i:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 395
    return-void
.end method

.method static synthetic a(LuV;Lsm;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1}, LuV;->a(Lsm;)V

    return-void
.end method

.method private b()V
    .locals 6

    .prologue
    .line 193
    iget-object v0, p0, LuV;->c:Lvl;

    invoke-virtual {v0}, Lvl;->d()V

    .line 194
    invoke-static {}, Lsr;->f()Lsm;

    move-result-object v1

    .line 195
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, LuV;->a:Ljava/util/Set;

    .line 196
    invoke-static {}, Lcom/kms/privacyprotection/PPItemsStorage;->getInstance()Lcom/kms/privacyprotection/PPItemsStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kms/privacyprotection/PPItemsStorage;->syncContacts()V

    .line 197
    invoke-virtual {v1}, Lsm;->e()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 199
    iget-object v0, p0, LuV;->e:LuU;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, LuV;->e:LuU;

    .line 202
    :cond_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 203
    invoke-static {}, Lcom/kms/privacyprotection/PPItemsStorage;->getInstance()Lcom/kms/privacyprotection/PPItemsStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kms/privacyprotection/PPItemsStorage;->getContactsIds()Ljava/util/Vector;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 204
    invoke-static {}, Lcom/kms/privacyprotection/PPItemsStorage;->getInstance()Lcom/kms/privacyprotection/PPItemsStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kms/privacyprotection/PPItemsStorage;->getPhones()Ljava/util/Set;

    move-result-object v0

    .line 205
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 207
    invoke-static {}, LuR;->a()LuR;

    move-result-object v4

    iget-object v5, p0, LuV;->b:Landroid/content/Context;

    invoke-virtual {v4, v5, v0}, LuR;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 210
    :cond_1
    iget-object v0, p0, LuV;->c:Lvl;

    invoke-virtual {v0, v2}, Lvl;->e(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, LuV;->a:Ljava/util/Set;

    .line 211
    iget-object v0, p0, LuV;->a:Ljava/util/Set;

    invoke-static {}, Lcom/kms/privacyprotection/PPItemsStorage;->getInstance()Lcom/kms/privacyprotection/PPItemsStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kms/privacyprotection/PPItemsStorage;->getPhones()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 220
    :goto_1
    iget-object v0, p0, LuV;->c:Lvl;

    iget-object v2, p0, LuV;->a:Ljava/util/Set;

    invoke-virtual {v0, v2}, Lvl;->a(Ljava/util/Set;)I

    .line 221
    iget-object v0, p0, LuV;->a:Ljava/util/Set;

    invoke-static {v0}, Lcom/kms/kmsshared/Utils;->a(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, LuV;->a:Ljava/util/Set;

    .line 223
    iget-object v0, p0, LuV;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 225
    invoke-virtual {v1}, Lsm;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 227
    iget-object v0, p0, LuV;->e:LuU;

    if-eqz v0, :cond_2

    .line 228
    iget-object v0, p0, LuV;->e:LuU;

    .line 229
    :cond_2
    iget-object v0, p0, LuV;->c:Lvl;

    iget-object v2, p0, LuV;->a:Ljava/util/Set;

    invoke-virtual {v0, v2}, Lvl;->d(Ljava/util/Set;)I

    .line 232
    :cond_3
    invoke-virtual {v1}, Lsm;->f()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 234
    iget-object v0, p0, LuV;->e:LuU;

    if-eqz v0, :cond_4

    .line 235
    iget-object v0, p0, LuV;->e:LuU;

    .line 236
    :cond_4
    iget-object v0, p0, LuV;->c:Lvl;

    iget-object v1, p0, LuV;->a:Ljava/util/Set;

    invoke-virtual {v0, v1}, Lvl;->c(Ljava/util/Set;)I

    .line 239
    :cond_5
    return-void

    .line 215
    :cond_6
    iget-object v0, p0, LuV;->a:Ljava/util/Set;

    invoke-static {}, LuR;->a()LuR;

    move-result-object v2

    iget-object v3, p0, LuV;->b:Landroid/content/Context;

    invoke-static {}, Lcom/kms/privacyprotection/PPItemsStorage;->getInstance()Lcom/kms/privacyprotection/PPItemsStorage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kms/privacyprotection/PPItemsStorage;->getContactsIds()Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, LuR;->a(Landroid/content/Context;Ljava/util/Vector;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 216
    iget-object v0, p0, LuV;->a:Ljava/util/Set;

    invoke-static {}, Lcom/kms/privacyprotection/PPItemsStorage;->getInstance()Lcom/kms/privacyprotection/PPItemsStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kms/privacyprotection/PPItemsStorage;->getPhones()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method

.method private b(Lsm;)V
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, LuV;->e:LuU;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, LuV;->e:LuU;

    invoke-virtual {p1}, Lsm;->b()Z

    move-result v1

    invoke-interface {v0, v1}, LuU;->a(Z)V

    .line 187
    :cond_0
    invoke-virtual {p1}, Lsm;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/kms/privacyprotection/PrivacyProtectionEventType;->Enabled:Lcom/kms/privacyprotection/PrivacyProtectionEventType;

    .line 188
    :goto_0
    invoke-static {}, LjJ;->b()Lrx;

    move-result-object v1

    invoke-virtual {v0}, Lcom/kms/privacyprotection/PrivacyProtectionEventType;->newEvent()Lvg;

    move-result-object v0

    invoke-interface {v1, v0}, Lrx;->a(Lrw;)V

    .line 189
    return-void

    .line 187
    :cond_1
    sget-object v0, Lcom/kms/privacyprotection/PrivacyProtectionEventType;->Disabled:Lcom/kms/privacyprotection/PrivacyProtectionEventType;

    goto :goto_0
.end method

.method public static b(LuU;)V
    .locals 1

    .prologue
    .line 399
    sget-object v0, LuV;->i:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 400
    return-void
.end method

.method private b(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 290
    iget-object v0, p0, LuV;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 291
    invoke-static {p1}, Lcom/kms/kmsshared/Utils;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 292
    if-eqz v2, :cond_1

    .line 294
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 296
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/kms/kmsshared/Utils;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 297
    const/4 v0, 0x1

    .line 300
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()V
    .locals 4

    .prologue
    .line 243
    invoke-static {}, Lsr;->f()Lsm;

    move-result-object v0

    .line 244
    invoke-virtual {v0}, Lsm;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 246
    iget-object v1, p0, LuV;->e:LuU;

    if-eqz v1, :cond_0

    .line 247
    iget-object v1, p0, LuV;->e:LuU;

    .line 248
    :cond_0
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 249
    iget-object v2, p0, LuV;->c:Lvl;

    invoke-virtual {v2, v1}, Lvl;->a(Ljava/util/Vector;)Ljava/util/Vector;

    move-result-object v2

    iput-object v2, p0, LuV;->d:Ljava/util/Vector;

    .line 250
    invoke-static {}, Lcom/kms/privacyprotection/PPItemsStorage;->getInstance()Lcom/kms/privacyprotection/PPItemsStorage;

    move-result-object v2

    iget-object v3, p0, LuV;->d:Ljava/util/Vector;

    invoke-virtual {v2, v3, v1}, Lcom/kms/privacyprotection/PPItemsStorage;->updateContacts(Ljava/util/Vector;Ljava/util/Vector;)V

    .line 251
    iget-object v1, p0, LuV;->c:Lvl;

    invoke-static {}, Lvl;->c()V

    .line 257
    :cond_1
    iget-object v1, p0, LuV;->d:Ljava/util/Vector;

    if-nez v1, :cond_2

    .line 258
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, LuV;->d:Ljava/util/Vector;

    .line 259
    :cond_2
    invoke-virtual {v0}, Lsm;->h()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lsm;->i()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 261
    :cond_3
    iget-object v1, p0, LuV;->e:LuU;

    if-eqz v1, :cond_4

    .line 262
    iget-object v1, p0, LuV;->e:LuU;

    .line 263
    :cond_4
    iget-object v1, p0, LuV;->c:Lvl;

    invoke-virtual {v1}, Lvl;->b()I

    move-result v1

    .line 264
    if-lez v1, :cond_5

    .line 266
    iget-object v2, p0, LuV;->b:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/kms/kmsshared/Utils;->a(Landroid/content/Context;I)V

    .line 269
    :cond_5
    invoke-virtual {v0}, Lsm;->f()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v0}, Lsm;->g()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 271
    :cond_6
    iget-object v0, p0, LuV;->e:LuU;

    if-eqz v0, :cond_7

    .line 272
    iget-object v0, p0, LuV;->e:LuU;

    .line 273
    :cond_7
    iget-object v0, p0, LuV;->c:Lvl;

    invoke-virtual {v0}, Lvl;->a()I

    move-result v0

    .line 274
    if-lez v0, :cond_8

    .line 276
    iget-object v1, p0, LuV;->b:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/kms/kmsshared/Utils;->b(Landroid/content/Context;I)V

    .line 280
    :cond_8
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 285
    const/4 v0, 0x3

    return v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 111
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, LuV;->a(ZLuU;Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public final a(LrF;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, LuV;->g:LrF;

    .line 44
    return-void
.end method

.method public final a(ZLuU;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 100
    iget-object v0, p0, LuV;->f:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v1, LuX;

    invoke-direct {v1, p0, p1, p2, p3}, LuX;-><init>(LuV;ZLuU;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 102
    invoke-static {}, Lsr;->f()Lsm;

    move-result-object v0

    .line 103
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lsm;->a(ILjava/lang/Object;)Lss;

    .line 104
    invoke-virtual {v0}, Lsm;->g_()V

    .line 106
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 107
    return-void
.end method

.method public final declared-synchronized a(Lcom/kms/kmsshared/cellmon/CellPhoneEvent;)Z
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v2, 0x0

    const/4 v8, 0x1

    .line 305
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, LuV;->h:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    .line 387
    :goto_0
    monitor-exit p0

    return v1

    .line 309
    :cond_0
    :try_start_1
    sget-object v1, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    check-cast v1, Lcom/kms/kmsshared/KMSApplication;

    invoke-virtual {v1}, Lcom/kms/kmsshared/KMSApplication;->u()LsY;

    move-result-object v1

    invoke-interface {v1}, LsY;->a()LaC;

    move-result-object v1

    const/16 v3, 0x13

    invoke-interface {v1, v3}, LaC;->a(I)Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    .line 310
    goto :goto_0

    .line 312
    :cond_1
    invoke-static {}, Lsr;->f()Lsm;

    move-result-object v1

    .line 318
    invoke-virtual {v1}, Lsm;->j()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Lsm;->b()Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    .line 319
    goto :goto_0

    .line 320
    :cond_2
    invoke-virtual {v1}, Lsm;->j()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v1}, Lsm;->b()Z

    move-result v3

    if-nez v3, :cond_3

    move v1, v2

    .line 321
    goto :goto_0

    .line 323
    :cond_3
    iget-object v3, p1, Lcom/kms/kmsshared/cellmon/CellPhoneEvent;->mPhoneNumber:Ljava/lang/String;

    invoke-direct {p0, v3}, LuV;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 325
    instance-of v3, p1, Lcom/kms/kmsshared/cellmon/VoiceEvent;

    if-eqz v3, :cond_7

    .line 327
    check-cast p1, Lcom/kms/kmsshared/cellmon/VoiceEvent;

    .line 328
    invoke-virtual {v1}, Lsm;->i()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v1}, Lsm;->h()Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    .line 330
    goto :goto_0

    .line 332
    :cond_4
    iget v2, p1, Lcom/kms/kmsshared/cellmon/VoiceEvent;->mEventType:I

    if-ne v2, v10, :cond_6

    .line 334
    iget-object v1, p0, LuV;->g:LrF;

    iget-object v2, p1, Lcom/kms/kmsshared/cellmon/VoiceEvent;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, LrF;->a(Ljava/lang/String;)V

    .line 335
    iget-object v1, p0, LuV;->c:Lvl;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iget-object v4, p1, Lcom/kms/kmsshared/cellmon/VoiceEvent;->mPhoneNumber:Ljava/lang/String;

    iget v5, p1, Lcom/kms/kmsshared/cellmon/VoiceEvent;->mCallLogType:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lvl;->a(JLjava/lang/String;I)I

    .line 336
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/kms/kmsshared/cellmon/VoiceEvent;->block(Z)V

    :cond_5
    :goto_1
    move v1, v8

    .line 385
    goto :goto_0

    .line 338
    :cond_6
    iget v2, p1, Lcom/kms/kmsshared/cellmon/VoiceEvent;->mEventType:I

    if-nez v2, :cond_5

    .line 340
    invoke-virtual {v1}, Lsm;->i()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 342
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/kms/kmsshared/cellmon/VoiceEvent;->block(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 305
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 347
    :cond_7
    :try_start_2
    instance-of v3, p1, Lcom/kms/kmsshared/cellmon/SMSEvent;

    if-eqz v3, :cond_5

    .line 349
    move-object v0, p1

    check-cast v0, Lcom/kms/kmsshared/cellmon/SMSEvent;

    move-object v7, v0

    .line 350
    invoke-virtual {v1}, Lsm;->g()Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {v1}, Lsm;->f()Z

    move-result v3

    if-nez v3, :cond_8

    move v1, v2

    .line 352
    goto/16 :goto_0

    .line 355
    :cond_8
    invoke-virtual {v1}, Lsm;->f()Z

    move-result v1

    if-nez v1, :cond_a

    .line 356
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 357
    iget-wide v3, v7, Lcom/kms/kmsshared/cellmon/SMSEvent;->mDate:J

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    const-wide/16 v5, 0x1388

    cmp-long v1, v3, v5

    if-lez v1, :cond_9

    move v1, v8

    .line 358
    :goto_2
    if-eqz v1, :cond_a

    move v1, v2

    .line 359
    goto/16 :goto_0

    :cond_9
    move v1, v2

    .line 357
    goto :goto_2

    .line 363
    :cond_a
    iget v1, v7, Lcom/kms/kmsshared/cellmon/SMSEvent;->mEventType:I

    if-ne v1, v8, :cond_b

    .line 365
    iget-object v1, p0, LuV;->c:Lvl;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iget-object v4, p1, Lcom/kms/kmsshared/cellmon/CellPhoneEvent;->mPhoneNumber:Ljava/lang/String;

    iget-object v5, v7, Lcom/kms/kmsshared/cellmon/SMSEvent;->mSMSBody:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lvl;->a(JLjava/lang/String;Ljava/lang/String;I)I

    .line 366
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/kms/kmsshared/cellmon/CellPhoneEvent;->block(Z)V

    .line 368
    :cond_b
    iget v1, v7, Lcom/kms/kmsshared/cellmon/SMSEvent;->mEventType:I

    if-ne v1, v9, :cond_c

    .line 370
    iget-object v1, p0, LuV;->c:Lvl;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iget-object v4, p1, Lcom/kms/kmsshared/cellmon/CellPhoneEvent;->mPhoneNumber:Ljava/lang/String;

    iget-object v5, v7, Lcom/kms/kmsshared/cellmon/SMSEvent;->mSMSBody:Ljava/lang/String;

    const/4 v6, 0x2

    invoke-virtual/range {v1 .. v6}, Lvl;->a(JLjava/lang/String;Ljava/lang/String;I)I

    .line 371
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/kms/kmsshared/cellmon/CellPhoneEvent;->block(Z)V

    .line 373
    :cond_c
    iget v1, v7, Lcom/kms/kmsshared/cellmon/SMSEvent;->mEventType:I

    if-nez v1, :cond_5

    .line 375
    iget-object v1, p0, LuV;->g:LrF;

    iget-object v2, v7, Lcom/kms/kmsshared/cellmon/SMSEvent;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, LrF;->b(Ljava/lang/String;)V

    .line 376
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v1, v10, :cond_5

    .line 379
    iget-object v1, p0, LuV;->c:Lvl;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iget-object v4, p1, Lcom/kms/kmsshared/cellmon/CellPhoneEvent;->mPhoneNumber:Ljava/lang/String;

    iget-object v5, v7, Lcom/kms/kmsshared/cellmon/SMSEvent;->mSMSBody:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lvl;->a(JLjava/lang/String;Ljava/lang/String;I)I

    .line 380
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/kms/kmsshared/cellmon/CellPhoneEvent;->block(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    :cond_d
    move v1, v2

    .line 387
    goto/16 :goto_0
.end method

.method public final run()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 120
    iget-object v0, p0, LuV;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/kms/kmsshared/Utils;->a(Landroid/content/Context;)V

    .line 121
    iget-object v0, p0, LuV;->h:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 126
    invoke-static {}, Lsr;->f()Lsm;

    move-result-object v3

    .line 129
    iget-object v0, p0, LuV;->f:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LuX;

    .line 130
    if-nez v0, :cond_1

    .line 132
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Lsm;->a(ILjava/lang/Object;)Lss;

    .line 133
    invoke-virtual {v3}, Lsm;->g_()V

    .line 134
    sget-object v0, LuV;->i:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LuU;

    .line 136
    invoke-virtual {v3}, Lsm;->b()Z

    move-result v2

    invoke-interface {v0, v2}, LuU;->a(Z)V

    goto :goto_0

    .line 138
    :cond_0
    iget-object v0, p0, LuV;->b:Landroid/content/Context;

    invoke-static {v0}, LoR;->a(Landroid/content/Context;)Z

    .line 139
    iget-object v0, p0, LuV;->h:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 180
    :goto_1
    return-void

    .line 143
    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lsm;->a(ILjava/lang/Object;)Lss;

    .line 144
    invoke-virtual {v3}, Lsm;->g_()V

    .line 145
    iget-object v4, v0, LuX;->b:LuU;

    iput-object v4, p0, LuV;->e:LuU;

    .line 147
    invoke-virtual {v3}, Lsm;->j()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 149
    invoke-virtual {v3}, Lsm;->b()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-boolean v4, v0, LuX;->a:Z

    if-nez v4, :cond_3

    :cond_2
    invoke-virtual {v3}, Lsm;->b()Z

    move-result v4

    if-nez v4, :cond_4

    iget-boolean v4, v0, LuX;->a:Z

    if-nez v4, :cond_4

    .line 151
    :cond_3
    invoke-direct {p0, v3}, LuV;->b(Lsm;)V

    .line 152
    iget-object v0, p0, LuV;->h:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 153
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_1

    .line 157
    :cond_4
    invoke-virtual {v3}, Lsm;->b()Z

    move-result v4

    if-nez v4, :cond_7

    .line 159
    invoke-static {}, LuN;->a()LuN;

    move-result-object v4

    iget-object v5, p0, LuV;->b:Landroid/content/Context;

    invoke-virtual {v4, v5}, LuN;->a(Landroid/content/Context;)V

    .line 160
    invoke-direct {p0}, LuV;->b()V

    .line 161
    iget-object v4, v0, LuX;->c:Ljava/lang/String;

    if-eqz v4, :cond_5

    .line 163
    iget-object v0, v0, LuX;->c:Ljava/lang/String;

    iget-object v4, p0, LuV;->b:Landroid/content/Context;

    const v5, 0x7f07020f

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v1}, Lcom/kms/kmsshared/Utils;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 171
    :cond_5
    :goto_2
    invoke-virtual {v3}, Lsm;->b()Z

    move-result v0

    if-nez v0, :cond_8

    move v0, v1

    :goto_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Lsm;->a(ILjava/lang/Object;)Lss;

    .line 172
    invoke-virtual {v3}, Lsm;->g_()V

    .line 174
    invoke-direct {p0, v3}, LuV;->b(Lsm;)V

    .line 176
    :cond_6
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Lsm;->a(ILjava/lang/Object;)Lss;

    .line 177
    invoke-virtual {v3}, Lsm;->g_()V

    .line 178
    iget-object v0, p0, LuV;->h:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 179
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_1

    .line 168
    :cond_7
    invoke-direct {p0}, LuV;->c()V

    .line 169
    invoke-static {}, LuN;->a()LuN;

    move-result-object v0

    iget-object v4, p0, LuV;->b:Landroid/content/Context;

    invoke-virtual {v0, v4}, LuN;->b(Landroid/content/Context;)V

    goto :goto_2

    :cond_8
    move v0, v2

    .line 171
    goto :goto_3
.end method
