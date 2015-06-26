.class public Lcom/google/tagmanager/DataLayer;
.super Ljava/lang/Object;
.source "DataLayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/tagmanager/DataLayer$PersistentStore;,
        Lcom/google/tagmanager/DataLayer$KeyValue;,
        Lcom/google/tagmanager/DataLayer$Listener;
    }
.end annotation


# static fields
.field static final LIFETIME_KEY:Ljava/lang/String; = "gtm.lifetime"

.field static final LIFETIME_KEY_COMPONENTS:[Ljava/lang/String;

.field private static final LIFETIME_PATTERN:Ljava/util/regex/Pattern;

.field static final MAX_QUEUE_DEPTH:I = 0x1f4

.field public static final OBJECT_NOT_PRESENT:Ljava/lang/Object;


# instance fields
.field private final mListeners:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lcom/google/tagmanager/DataLayer$Listener;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mModel:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mPersistentStore:Lcom/google/tagmanager/DataLayer$PersistentStore;

.field private final mPersistentStoreLoaded:Ljava/util/concurrent/CountDownLatch;

.field private final mPushLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final mUpdateQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 161
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/tagmanager/DataLayer;->OBJECT_NOT_PRESENT:Ljava/lang/Object;

    .line 168
    const-string v0, "gtm.lifetime"

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/tagmanager/DataLayer;->LIFETIME_KEY_COMPONENTS:[Ljava/lang/String;

    .line 170
    const-string v0, "(\\d+)\\s*([smhd]?)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/tagmanager/DataLayer;->LIFETIME_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>()V
    .locals 1
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    .line 191
    new-instance v0, Lcom/google/tagmanager/DataLayer$1;

    invoke-direct {v0}, Lcom/google/tagmanager/DataLayer$1;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/tagmanager/DataLayer;-><init>(Lcom/google/tagmanager/DataLayer$PersistentStore;)V

    .line 204
    return-void
.end method

.method constructor <init>(Lcom/google/tagmanager/DataLayer$PersistentStore;)V
    .locals 2
    .param p1, "persistentStore"    # Lcom/google/tagmanager/DataLayer$PersistentStore;

    .prologue
    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    iput-object p1, p0, Lcom/google/tagmanager/DataLayer;->mPersistentStore:Lcom/google/tagmanager/DataLayer$PersistentStore;

    .line 211
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/tagmanager/DataLayer;->mListeners:Ljava/util/concurrent/ConcurrentHashMap;

    .line 212
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/tagmanager/DataLayer;->mModel:Ljava/util/Map;

    .line 213
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/google/tagmanager/DataLayer;->mPushLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 214
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/tagmanager/DataLayer;->mUpdateQueue:Ljava/util/LinkedList;

    .line 215
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/tagmanager/DataLayer;->mPersistentStoreLoaded:Ljava/util/concurrent/CountDownLatch;

    .line 216
    invoke-direct {p0}, Lcom/google/tagmanager/DataLayer;->loadSavedMaps()V

    .line 217
    return-void
.end method

.method static synthetic access$000(Lcom/google/tagmanager/DataLayer;Ljava/util/Map;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/tagmanager/DataLayer;
    .param p1, "x1"    # Ljava/util/Map;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/google/tagmanager/DataLayer;->pushWithoutWaitingForSaved(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/tagmanager/DataLayer;)Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .param p0, "x0"    # Lcom/google/tagmanager/DataLayer;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/tagmanager/DataLayer;->mPersistentStoreLoaded:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method private flattenMap(Ljava/util/Map;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/tagmanager/DataLayer$KeyValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 342
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 343
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/DataLayer$KeyValue;>;"
    const-string v1, ""

    invoke-direct {p0, p1, v1, v0}, Lcom/google/tagmanager/DataLayer;->flattenMapHelper(Ljava/util/Map;Ljava/lang/String;Ljava/util/Collection;)V

    .line 344
    return-object v0
.end method

.method private flattenMapHelper(Ljava/util/Map;Ljava/lang/String;Ljava/util/Collection;)V
    .locals 6
    .param p2, "keyPrefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/tagmanager/DataLayer$KeyValue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 349
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    .local p3, "accum":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/tagmanager/DataLayer$KeyValue;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 350
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    const-string v4, ""

    :goto_1
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 351
    .local v1, "fullKey":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/util/Map;

    if-eqz v4, :cond_2

    .line 353
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 354
    .local v3, "subMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-direct {p0, v3, v1, p3}, Lcom/google/tagmanager/DataLayer;->flattenMapHelper(Ljava/util/Map;Ljava/lang/String;Ljava/util/Collection;)V

    goto :goto_0

    .line 350
    .end local v1    # "fullKey":Ljava/lang/String;
    .end local v3    # "subMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_1
    const-string v4, "."

    goto :goto_1

    .line 356
    .restart local v1    # "fullKey":Ljava/lang/String;
    :cond_2
    const-string v4, "gtm.lifetime"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 357
    new-instance v4, Lcom/google/tagmanager/DataLayer$KeyValue;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Lcom/google/tagmanager/DataLayer$KeyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 361
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v1    # "fullKey":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private getLifetimeObject(Ljava/util/Map;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 316
    .local p1, "update":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    move-object v2, p1

    .line 317
    .local v2, "current":Ljava/util/Map;
    sget-object v0, Lcom/google/tagmanager/DataLayer;->LIFETIME_KEY_COMPONENTS:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .end local v2    # "current":Ljava/util/Map;
    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v1, v0, v4

    .line 318
    .local v1, "component":Ljava/lang/String;
    instance-of v6, v2, Ljava/util/Map;

    if-nez v6, :cond_1

    .line 319
    const/4 v2, 0x0

    .line 325
    .end local v1    # "component":Ljava/lang/String;
    :cond_0
    return-object v2

    .restart local v1    # "component":Ljava/lang/String;
    :cond_1
    move-object v3, v2

    .line 322
    check-cast v3, Ljava/util/Map;

    .line 323
    .local v3, "currentAsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 317
    .local v2, "current":Ljava/lang/Object;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private getLifetimeValue(Ljava/util/Map;)Ljava/lang/Long;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Long;"
        }
    .end annotation

    .prologue
    .line 305
    .local p1, "update":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-direct {p0, p1}, Lcom/google/tagmanager/DataLayer;->getLifetimeObject(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    .line 306
    .local v0, "lifetimeObject":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 307
    const/4 v1, 0x0

    .line 309
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/tagmanager/DataLayer;->parseLifetime(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0
.end method

.method public static varargs listOf([Ljava/lang/Object;)Ljava/util/List;
    .locals 3
    .param p0, "objects"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 488
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 489
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 490
    aget-object v2, p0, v0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 489
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 492
    :cond_0
    return-object v1
.end method

.method private loadSavedMaps()V
    .locals 2

    .prologue
    .line 281
    iget-object v0, p0, Lcom/google/tagmanager/DataLayer;->mPersistentStore:Lcom/google/tagmanager/DataLayer$PersistentStore;

    new-instance v1, Lcom/google/tagmanager/DataLayer$2;

    invoke-direct {v1, p0}, Lcom/google/tagmanager/DataLayer$2;-><init>(Lcom/google/tagmanager/DataLayer;)V

    invoke-interface {v0, v1}, Lcom/google/tagmanager/DataLayer$PersistentStore;->loadSaved(Lcom/google/tagmanager/DataLayer$PersistentStore$Callback;)V

    .line 289
    return-void
.end method

.method public static varargs mapOf([Ljava/lang/Object;)Ljava/util/Map;
    .locals 4
    .param p0, "objects"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 468
    array-length v2, p0

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    .line 469
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "expected even number of key-value pairs"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 471
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 472
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 473
    aget-object v2, p0, v0

    add-int/lit8 v3, v0, 0x1

    aget-object v3, p0, v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 475
    :cond_1
    return-object v1
.end method

.method private notifyListeners(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 510
    .local p1, "update":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    iget-object v2, p0, Lcom/google/tagmanager/DataLayer;->mListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/tagmanager/DataLayer$Listener;

    .line 511
    .local v1, "listener":Lcom/google/tagmanager/DataLayer$Listener;
    invoke-interface {v1, p1}, Lcom/google/tagmanager/DataLayer$Listener;->changed(Ljava/util/Map;)V

    goto :goto_0

    .line 513
    .end local v1    # "listener":Lcom/google/tagmanager/DataLayer$Listener;
    :cond_0
    return-void
.end method

.method static parseLifetime(Ljava/lang/String;)Ljava/lang/Long;
    .locals 12
    .param p0, "lifetimeString"    # Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v5, 0x0

    const-wide/16 v10, 0x3e8

    const-wide/16 v8, 0x3c

    .line 366
    sget-object v6, Lcom/google/tagmanager/DataLayer;->LIFETIME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v6, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 367
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-nez v6, :cond_0

    .line 368
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unknown _lifetime: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/tagmanager/Log;->i(Ljava/lang/String;)V

    .line 399
    :goto_0
    return-object v5

    .line 371
    :cond_0
    const-wide/16 v2, 0x0

    .line 373
    .local v2, "number":J
    const/4 v6, 0x1

    :try_start_0
    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 377
    :goto_1
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-gtz v6, :cond_1

    .line 378
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "non-positive _lifetime: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/tagmanager/Log;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 374
    :catch_0
    move-exception v0

    .line 375
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "illegal number in _lifetime value: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    goto :goto_1

    .line 382
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    const/4 v6, 0x2

    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 384
    .local v4, "unitString":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_2

    .line 386
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    goto :goto_0

    .line 388
    :cond_2
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    sparse-switch v6, :sswitch_data_0

    .line 398
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unknown units in _lifetime: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 390
    :sswitch_0
    mul-long v5, v2, v10

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    goto :goto_0

    .line 392
    :sswitch_1
    mul-long v5, v2, v10

    mul-long/2addr v5, v8

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    goto :goto_0

    .line 394
    :sswitch_2
    mul-long v5, v2, v10

    mul-long/2addr v5, v8

    mul-long/2addr v5, v8

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    goto/16 :goto_0

    .line 396
    :sswitch_3
    mul-long v5, v2, v10

    mul-long/2addr v5, v8

    mul-long/2addr v5, v8

    const-wide/16 v7, 0x18

    mul-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    goto/16 :goto_0

    .line 388
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_3
        0x68 -> :sswitch_2
        0x6d -> :sswitch_1
        0x73 -> :sswitch_0
    .end sparse-switch
.end method

.method private processQueuedUpdates()V
    .locals 4

    .prologue
    .line 406
    const/4 v0, 0x0

    .line 407
    .local v0, "numUpdatesProcessed":I
    :cond_0
    iget-object v2, p0, Lcom/google/tagmanager/DataLayer;->mUpdateQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .local v1, "update":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    if-eqz v1, :cond_1

    .line 408
    invoke-direct {p0, v1}, Lcom/google/tagmanager/DataLayer;->processUpdate(Ljava/util/Map;)V

    .line 409
    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x1f4

    if-le v0, v2, :cond_0

    .line 410
    iget-object v2, p0, Lcom/google/tagmanager/DataLayer;->mUpdateQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 411
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Seems like an infinite loop of pushing to the data layer"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 414
    :cond_1
    return-void
.end method

.method private processUpdate(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 418
    .local p1, "update":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    iget-object v3, p0, Lcom/google/tagmanager/DataLayer;->mModel:Ljava/util/Map;

    monitor-enter v3

    .line 419
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 420
    .local v1, "key":Ljava/lang/Object;
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/tagmanager/DataLayer;->expandKeyValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    iget-object v4, p0, Lcom/google/tagmanager/DataLayer;->mModel:Ljava/util/Map;

    invoke-virtual {p0, v2, v4}, Lcom/google/tagmanager/DataLayer;->mergeMap(Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_0

    .line 422
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "key":Ljava/lang/Object;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 423
    invoke-direct {p0, p1}, Lcom/google/tagmanager/DataLayer;->notifyListeners(Ljava/util/Map;)V

    .line 424
    return-void
.end method

.method private pushWithoutWaitingForSaved(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 263
    .local p1, "update":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/google/tagmanager/DataLayer;->mPushLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 267
    :try_start_0
    iget-object v0, p0, Lcom/google/tagmanager/DataLayer;->mUpdateQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 268
    iget-object v0, p0, Lcom/google/tagmanager/DataLayer;->mPushLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->getHoldCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 272
    invoke-direct {p0}, Lcom/google/tagmanager/DataLayer;->processQueuedUpdates()V

    .line 274
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/tagmanager/DataLayer;->savePersistentlyIfNeeded(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    iget-object v0, p0, Lcom/google/tagmanager/DataLayer;->mPushLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 278
    return-void

    .line 276
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/tagmanager/DataLayer;->mPushLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private savePersistentlyIfNeeded(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 292
    .local p1, "update":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-direct {p0, p1}, Lcom/google/tagmanager/DataLayer;->getLifetimeValue(Ljava/util/Map;)Ljava/lang/Long;

    move-result-object v1

    .line 293
    .local v1, "lifetime":Ljava/lang/Long;
    if-nez v1, :cond_0

    .line 299
    :goto_0
    return-void

    .line 296
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/tagmanager/DataLayer;->flattenMap(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    .line 297
    .local v0, "flattenedMap":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/DataLayer$KeyValue;>;"
    const-string v2, "gtm.lifetime"

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 298
    iget-object v2, p0, Lcom/google/tagmanager/DataLayer;->mPersistentStore:Lcom/google/tagmanager/DataLayer$PersistentStore;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-interface {v2, v0, v3, v4}, Lcom/google/tagmanager/DataLayer$PersistentStore;->saveKeyValues(Ljava/util/List;J)V

    goto :goto_0
.end method


# virtual methods
.method clearPersistentKeysWithPrefix(Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 330
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/tagmanager/DataLayer;->push(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 332
    iget-object v0, p0, Lcom/google/tagmanager/DataLayer;->mPersistentStore:Lcom/google/tagmanager/DataLayer$PersistentStore;

    invoke-interface {v0, p1}, Lcom/google/tagmanager/DataLayer$PersistentStore;->clearKeysWithPrefix(Ljava/lang/String;)V

    .line 333
    return-void
.end method

.method expandKeyValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;
    .locals 7
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 532
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 533
    .local v2, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    move-object v4, v2

    .line 535
    .local v4, "target":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "\\."

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 536
    .local v3, "split":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    if-ge v0, v5, :cond_0

    .line 537
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 538
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Object;Ljava/lang/Object;>;"
    aget-object v5, v3, v0

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    move-object v4, v1

    .line 536
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 541
    .end local v1    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_0
    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v3, v5

    invoke-interface {v4, v5, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    return-object v2
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 12
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 436
    iget-object v10, p0, Lcom/google/tagmanager/DataLayer;->mModel:Ljava/util/Map;

    monitor-enter v10

    .line 437
    :try_start_0
    iget-object v7, p0, Lcom/google/tagmanager/DataLayer;->mModel:Ljava/util/Map;

    .line 438
    .local v7, "target":Ljava/util/Map;
    const-string v11, "\\."

    invoke-virtual {p1, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 439
    .local v6, "split":[Ljava/lang/String;
    move-object v1, v6

    .local v1, "arr$":[Ljava/lang/String;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .end local v7    # "target":Ljava/util/Map;
    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v5, v1, v2

    .line 440
    .local v5, "s":Ljava/lang/String;
    instance-of v11, v7, Ljava/util/Map;

    if-nez v11, :cond_0

    .line 441
    monitor-exit v10

    move-object v7, v9

    .line 451
    .end local v5    # "s":Ljava/lang/String;
    :goto_1
    return-object v7

    .line 444
    .restart local v5    # "s":Ljava/lang/String;
    :cond_0
    move-object v0, v7

    check-cast v0, Ljava/util/Map;

    move-object v4, v0

    .line 445
    .local v4, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 446
    .local v8, "value":Ljava/lang/Object;
    if-nez v8, :cond_1

    .line 447
    monitor-exit v10

    move-object v7, v9

    goto :goto_1

    .line 449
    :cond_1
    move-object v7, v8

    .line 439
    .local v7, "target":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 451
    .end local v4    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v5    # "s":Ljava/lang/String;
    .end local v7    # "target":Ljava/lang/Object;
    .end local v8    # "value":Ljava/lang/Object;
    :cond_2
    monitor-exit v10

    goto :goto_1

    .line 452
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v6    # "split":[Ljava/lang/String;
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9
.end method

.method mergeList(Ljava/util/List;Ljava/util/List;)V
    .locals 8
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 591
    .local p1, "from":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .local p2, "to":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_0

    .line 592
    const/4 v6, 0x0

    invoke-interface {p2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 594
    :cond_0
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_6

    .line 595
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 596
    .local v0, "fromValue":Ljava/lang/Object;
    instance-of v6, v0, Ljava/util/List;

    if-eqz v6, :cond_3

    .line 597
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Ljava/util/List;

    if-nez v6, :cond_1

    .line 598
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2, v1, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move-object v2, v0

    .line 601
    check-cast v2, Ljava/util/List;

    .line 603
    .local v2, "mergeFrom":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 604
    .local v4, "mergeTo":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p0, v2, v4}, Lcom/google/tagmanager/DataLayer;->mergeList(Ljava/util/List;Ljava/util/List;)V

    .line 594
    .end local v2    # "mergeFrom":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v4    # "mergeTo":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 605
    :cond_3
    instance-of v6, v0, Ljava/util/Map;

    if-eqz v6, :cond_5

    .line 606
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Ljava/util/Map;

    if-nez v6, :cond_4

    .line 607
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p2, v1, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_4
    move-object v3, v0

    .line 610
    check-cast v3, Ljava/util/Map;

    .line 612
    .local v3, "mergeFrom":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 613
    .local v5, "mergeTo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-virtual {p0, v3, v5}, Lcom/google/tagmanager/DataLayer;->mergeMap(Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_2

    .line 614
    .end local v3    # "mergeFrom":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v5    # "mergeTo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_5
    sget-object v6, Lcom/google/tagmanager/DataLayer;->OBJECT_NOT_PRESENT:Ljava/lang/Object;

    if-eq v0, v6, :cond_2

    .line 615
    invoke-interface {p2, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 618
    .end local v0    # "fromValue":Ljava/lang/Object;
    :cond_6
    return-void
.end method

.method mergeMap(Ljava/util/Map;Ljava/util/Map;)V
    .locals 8
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 555
    .local p1, "from":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    .local p2, "to":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 556
    .local v2, "key":Ljava/lang/Object;
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 557
    .local v0, "fromValue":Ljava/lang/Object;
    instance-of v7, v0, Ljava/util/List;

    if-eqz v7, :cond_1

    .line 558
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Ljava/util/List;

    if-nez v7, :cond_0

    .line 559
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    move-object v3, v0

    .line 562
    check-cast v3, Ljava/util/List;

    .line 564
    .local v3, "mergeFrom":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 565
    .local v5, "mergeTo":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p0, v3, v5}, Lcom/google/tagmanager/DataLayer;->mergeList(Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    .line 566
    .end local v3    # "mergeFrom":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v5    # "mergeTo":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_1
    instance-of v7, v0, Ljava/util/Map;

    if-eqz v7, :cond_3

    .line 567
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Ljava/util/Map;

    if-nez v7, :cond_2

    .line 568
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p2, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    move-object v4, v0

    .line 571
    check-cast v4, Ljava/util/Map;

    .line 573
    .local v4, "mergeFrom":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 574
    .local v6, "mergeTo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-virtual {p0, v4, v6}, Lcom/google/tagmanager/DataLayer;->mergeMap(Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_0

    .line 576
    .end local v4    # "mergeFrom":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v6    # "mergeTo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_3
    invoke-interface {p2, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 579
    .end local v0    # "fromValue":Ljava/lang/Object;
    .end local v2    # "key":Ljava/lang/Object;
    :cond_4
    return-void
.end method

.method public push(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 224
    invoke-virtual {p0, p1, p2}, Lcom/google/tagmanager/DataLayer;->expandKeyValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 225
    .local v0, "expanded":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-virtual {p0, v0}, Lcom/google/tagmanager/DataLayer;->push(Ljava/util/Map;)V

    .line 226
    return-void
.end method

.method public push(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 251
    .local p1, "update":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    :try_start_0
    iget-object v1, p0, Lcom/google/tagmanager/DataLayer;->mPersistentStoreLoaded:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    :goto_0
    invoke-direct {p0, p1}, Lcom/google/tagmanager/DataLayer;->pushWithoutWaitingForSaved(Ljava/util/Map;)V

    .line 260
    return-void

    .line 252
    :catch_0
    move-exception v0

    .line 253
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "DataLayer.push: unexpected InterruptedException"

    invoke-static {v1}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method registerListener(Lcom/google/tagmanager/DataLayer$Listener;)V
    .locals 2
    .param p1, "listener"    # Lcom/google/tagmanager/DataLayer$Listener;

    .prologue
    .line 499
    iget-object v0, p0, Lcom/google/tagmanager/DataLayer;->mListeners:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    return-void
.end method

.method unregisterListener(Lcom/google/tagmanager/DataLayer$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/tagmanager/DataLayer$Listener;

    .prologue
    .line 506
    iget-object v0, p0, Lcom/google/tagmanager/DataLayer;->mListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    return-void
.end method
