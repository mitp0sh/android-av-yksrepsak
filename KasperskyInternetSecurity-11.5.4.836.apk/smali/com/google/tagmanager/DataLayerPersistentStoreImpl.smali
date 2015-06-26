.class Lcom/google/tagmanager/DataLayerPersistentStoreImpl;
.super Ljava/lang/Object;
.source "DataLayerPersistentStoreImpl.java"

# interfaces
.implements Lcom/google/tagmanager/DataLayer$PersistentStore;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/tagmanager/DataLayerPersistentStoreImpl$KeyAndSerialized;,
        Lcom/google/tagmanager/DataLayerPersistentStoreImpl$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final CREATE_MAPS_TABLE:Ljava/lang/String;

.field private static final DATABASE_NAME:Ljava/lang/String; = "google_tagmanager.db"

.field private static final EXPIRE_FIELD:Ljava/lang/String; = "expires"

.field private static final ID_FIELD:Ljava/lang/String; = "ID"

.field private static final KEY_FIELD:Ljava/lang/String; = "key"

.field private static final MAPS_TABLE:Ljava/lang/String; = "datalayer"

.field private static final MAX_NUM_STORED_ITEMS:I = 0x7d0

.field private static final VALUE_FIELD:Ljava/lang/String; = "value"


# instance fields
.field private mClock:Lcom/google/tagmanager/Clock;

.field private final mContext:Landroid/content/Context;

.field private mDbHelper:Lcom/google/tagmanager/DataLayerPersistentStoreImpl$DatabaseHelper;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private mMaxNumStoredItems:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 40
    const-string v0, "CREATE TABLE IF NOT EXISTS %s ( \'%s\' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, \'%s\' STRING NOT NULL, \'%s\' BLOB NOT NULL, \'%s\' INTEGER NOT NULL);"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "datalayer"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "ID"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "key"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "value"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "expires"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->CREATE_MAPS_TABLE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    new-instance v2, Lcom/google/tagmanager/DataLayerPersistentStoreImpl$1;

    invoke-direct {v2}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl$1;-><init>()V

    const-string v3, "google_tagmanager.db"

    const/16 v4, 0x7d0

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;-><init>(Landroid/content/Context;Lcom/google/tagmanager/Clock;Ljava/lang/String;ILjava/util/concurrent/Executor;)V

    .line 64
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/tagmanager/Clock;Ljava/lang/String;ILjava/util/concurrent/Executor;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "clock"    # Lcom/google/tagmanager/Clock;
    .param p3, "databaseName"    # Ljava/lang/String;
    .param p4, "maxNumStoredItems"    # I
    .param p5, "executor"    # Ljava/util/concurrent/Executor;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->mContext:Landroid/content/Context;

    .line 69
    iput-object p2, p0, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->mClock:Lcom/google/tagmanager/Clock;

    .line 70
    iput p4, p0, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->mMaxNumStoredItems:I

    .line 71
    iput-object p5, p0, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->mExecutor:Ljava/util/concurrent/Executor;

    .line 72
    new-instance v0, Lcom/google/tagmanager/DataLayerPersistentStoreImpl$DatabaseHelper;

    iget-object v1, p0, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p3}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl$DatabaseHelper;-><init>(Lcom/google/tagmanager/DataLayerPersistentStoreImpl;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->mDbHelper:Lcom/google/tagmanager/DataLayerPersistentStoreImpl$DatabaseHelper;

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/google/tagmanager/DataLayerPersistentStoreImpl;Ljava/util/List;J)V
    .locals 0
    .param p0, "x0"    # Lcom/google/tagmanager/DataLayerPersistentStoreImpl;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # J

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->saveSingleThreaded(Ljava/util/List;J)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/tagmanager/DataLayerPersistentStoreImpl;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/google/tagmanager/DataLayerPersistentStoreImpl;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->loadSingleThreaded()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/tagmanager/DataLayerPersistentStoreImpl;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/tagmanager/DataLayerPersistentStoreImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->clearKeysWithPrefixSingleThreaded(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/tagmanager/DataLayerPersistentStoreImpl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/google/tagmanager/DataLayerPersistentStoreImpl;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->CREATE_MAPS_TABLE:Ljava/lang/String;

    return-object v0
.end method

.method private clearKeysWithPrefixSingleThreaded(Ljava/lang/String;)V
    .locals 9
    .param p1, "keyPrefix"    # Ljava/lang/String;

    .prologue
    .line 233
    const-string v3, "Error opening database for clearKeysWithPrefix."

    invoke-direct {p0, v3}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->getWritableDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 234
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_0

    .line 247
    :goto_0
    return-void

    .line 239
    :cond_0
    :try_start_0
    const-string v3, "datalayer"

    const-string v4, "key = ? OR key LIKE ?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 241
    .local v1, "deleted":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cleared "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " items"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/tagmanager/Log;->v(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    invoke-direct {p0}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->closeDatabaseConnection()V

    goto :goto_0

    .line 242
    .end local v1    # "deleted":I
    :catch_0
    move-exception v2

    .line 243
    .local v2, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error deleting entries with key prefix: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 245
    invoke-direct {p0}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->closeDatabaseConnection()V

    goto :goto_0

    .end local v2    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v3

    invoke-direct {p0}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->closeDatabaseConnection()V

    throw v3
.end method

.method private closeDatabaseConnection()V
    .locals 1

    .prologue
    .line 374
    :try_start_0
    iget-object v0, p0, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->mDbHelper:Lcom/google/tagmanager/DataLayerPersistentStoreImpl$DatabaseHelper;

    invoke-virtual {v0}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl$DatabaseHelper;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    :goto_0
    return-void

    .line 375
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private deleteEntries([Ljava/lang/String;)V
    .locals 9
    .param p1, "entryIds"    # [Ljava/lang/String;

    .prologue
    .line 269
    if-eqz p1, :cond_0

    array-length v3, p1

    if-nez v3, :cond_1

    .line 283
    :cond_0
    :goto_0
    return-void

    .line 272
    :cond_1
    const-string v3, "Error opening database for deleteEntries."

    invoke-direct {p0, v3}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->getWritableDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 273
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v0, :cond_0

    .line 276
    const-string v3, "%s in (%s)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "ID"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, ","

    array-length v7, p1

    const-string v8, "?"

    invoke-static {v7, v8}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 279
    .local v2, "whereClause":Ljava/lang/String;
    :try_start_0
    const-string v3, "datalayer"

    invoke-virtual {v0, v3, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 280
    :catch_0
    move-exception v1

    .line 281
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error deleting entries "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private deleteEntriesOlderThan(J)V
    .locals 8
    .param p1, "timeInMillis"    # J

    .prologue
    .line 250
    const-string v3, "Error opening database for deleteOlderThan."

    invoke-direct {p0, v3}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->getWritableDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 251
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_0

    .line 261
    :goto_0
    return-void

    .line 255
    :cond_0
    :try_start_0
    const-string v3, "datalayer"

    const-string v4, "expires <= ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 257
    .local v1, "deleted":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Deleted "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " expired items"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/tagmanager/Log;->v(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 258
    .end local v1    # "deleted":I
    :catch_0
    move-exception v2

    .line 259
    .local v2, "e":Landroid/database/sqlite/SQLiteException;
    const-string v3, "Error deleting old entries."

    invoke-static {v3}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getNumStoredEntries()I
    .locals 7

    .prologue
    .line 330
    const/4 v3, 0x0

    .line 331
    .local v3, "numStoredEntries":I
    const-string v5, "Error opening database for getNumStoredEntries."

    invoke-direct {p0, v5}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->getWritableDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 332
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v1, :cond_0

    move v4, v3

    .line 348
    .end local v3    # "numStoredEntries":I
    .local v4, "numStoredEntries":I
    :goto_0
    return v4

    .line 335
    .end local v4    # "numStoredEntries":I
    .restart local v3    # "numStoredEntries":I
    :cond_0
    const/4 v0, 0x0

    .line 337
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v5, "SELECT COUNT(*) from datalayer"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 338
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 339
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v5

    long-to-int v3, v5

    .line 344
    :cond_1
    if-eqz v0, :cond_2

    .line 345
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    move v4, v3

    .line 348
    .end local v3    # "numStoredEntries":I
    .restart local v4    # "numStoredEntries":I
    goto :goto_0

    .line 341
    .end local v4    # "numStoredEntries":I
    .restart local v3    # "numStoredEntries":I
    :catch_0
    move-exception v2

    .line 342
    .local v2, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v5, "Error getting numStoredEntries"

    invoke-static {v5}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 344
    if-eqz v0, :cond_2

    .line 345
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 344
    .end local v2    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v5

    if-eqz v0, :cond_3

    .line 345
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v5
.end method

.method private getWritableDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 3
    .param p1, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 359
    const/4 v0, 0x0

    .line 361
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    iget-object v2, p0, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->mDbHelper:Lcom/google/tagmanager/DataLayerPersistentStoreImpl$DatabaseHelper;

    invoke-virtual {v2}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v2, v0

    .line 366
    :goto_0
    return-object v2

    .line 362
    :catch_0
    move-exception v1

    .line 363
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    invoke-static {p1}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    .line 364
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private loadSerialized()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/tagmanager/DataLayerPersistentStoreImpl$KeyAndSerialized;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 190
    const-string v1, "Error opening database for loadSerialized."

    invoke-direct {p0, v1}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->getWritableDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 191
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 192
    .local v9, "list":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/DataLayerPersistentStoreImpl$KeyAndSerialized;>;"
    if-nez v0, :cond_0

    .line 205
    :goto_0
    return-object v9

    .line 195
    :cond_0
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "key"

    aput-object v1, v2, v4

    const-string v1, "value"

    aput-object v1, v2, v5

    .line 197
    .local v2, "columns":[Ljava/lang/String;
    const-string v1, "datalayer"

    const-string v7, "ID"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v8, v3

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 199
    .local v10, "results":Landroid/database/Cursor;
    :goto_1
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 200
    new-instance v1, Lcom/google/tagmanager/DataLayerPersistentStoreImpl$KeyAndSerialized;

    const/4 v3, 0x0

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl$KeyAndSerialized;-><init>(Ljava/lang/String;[B)V

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 203
    :catchall_0
    move-exception v1

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private loadSingleThreaded()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/tagmanager/DataLayer$KeyValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->mClock:Lcom/google/tagmanager/Clock;

    invoke-interface {v0}, Lcom/google/tagmanager/Clock;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->deleteEntriesOlderThan(J)V

    .line 106
    invoke-direct {p0}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->loadSerialized()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->unserializeValues(Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 108
    invoke-direct {p0}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->closeDatabaseConnection()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->closeDatabaseConnection()V

    throw v0
.end method

.method private makeRoomForEntries(I)V
    .locals 4
    .param p1, "count"    # I

    .prologue
    .line 224
    invoke-direct {p0}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->getNumStoredEntries()I

    move-result v2

    iget v3, p0, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->mMaxNumStoredItems:I

    sub-int/2addr v2, v3

    add-int v0, v2, p1

    .line 225
    .local v0, "entrysOverLimit":I
    if-lez v0, :cond_0

    .line 226
    invoke-direct {p0, v0}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->peekEntryIds(I)Ljava/util/List;

    move-result-object v1

    .line 227
    .local v1, "entrysToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DataLayer store full, deleting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " entries to make room."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/tagmanager/Log;->i(Ljava/lang/String;)V

    .line 228
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->deleteEntries([Ljava/lang/String;)V

    .line 230
    .end local v1    # "entrysToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method private peekEntryIds(I)Ljava/util/List;
    .locals 14
    .param p1, "maxEntries"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 294
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 295
    .local v11, "entryIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-gtz p1, :cond_1

    .line 296
    const-string v1, "Invalid maxEntries specified. Skipping."

    invoke-static {v1}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    .line 326
    :cond_0
    :goto_0
    return-object v11

    .line 299
    :cond_1
    const-string v1, "Error opening database for peekEntryIds."

    invoke-direct {p0, v1}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->getWritableDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 300
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v0, :cond_0

    .line 304
    const/4 v9, 0x0

    .line 306
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v1, "datalayer"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "ID"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "%s ASC"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, "ID"

    aput-object v13, v8, v12

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 314
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 316
    :cond_2
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 317
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_2

    .line 322
    :cond_3
    if-eqz v9, :cond_0

    .line 323
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 319
    :catch_0
    move-exception v10

    .line 320
    .local v10, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in peekEntries fetching entryIds: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 322
    if-eqz v9, :cond_0

    .line 323
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 322
    .end local v10    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v1

    if-eqz v9, :cond_4

    .line 323
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1
.end method

.method private declared-synchronized saveSingleThreaded(Ljava/util/List;J)V
    .locals 4
    .param p2, "lifetimeInMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/tagmanager/DataLayerPersistentStoreImpl$KeyAndSerialized;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 180
    .local p1, "keysAndValues":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/DataLayerPersistentStoreImpl$KeyAndSerialized;>;"
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->mClock:Lcom/google/tagmanager/Clock;

    invoke-interface {v2}, Lcom/google/tagmanager/Clock;->currentTimeMillis()J

    move-result-wide v0

    .line 181
    .local v0, "now":J
    invoke-direct {p0, v0, v1}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->deleteEntriesOlderThan(J)V

    .line 182
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->makeRoomForEntries(I)V

    .line 183
    add-long v2, v0, p2

    invoke-direct {p0, p1, v2, v3}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->writeEntriesToDatabase(Ljava/util/List;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    :try_start_1
    invoke-direct {p0}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->closeDatabaseConnection()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 187
    monitor-exit p0

    return-void

    .line 185
    .end local v0    # "now":J
    :catchall_0
    move-exception v2

    :try_start_2
    invoke-direct {p0}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->closeDatabaseConnection()V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 180
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private serialize(Ljava/lang/Object;)[B
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 157
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 158
    .local v0, "byteStream":Ljava/io/ByteArrayOutputStream;
    const/4 v2, 0x0

    .line 160
    .local v2, "objectOutput":Ljava/io/ObjectOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    .end local v2    # "objectOutput":Ljava/io/ObjectOutputStream;
    .local v3, "objectOutput":Ljava/io/ObjectOutputStream;
    :try_start_1
    invoke-virtual {v3, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 162
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v4

    .line 167
    if-eqz v3, :cond_0

    .line 168
    :try_start_2
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V

    .line 170
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    :goto_0
    move-object v2, v3

    .line 173
    .end local v3    # "objectOutput":Ljava/io/ObjectOutputStream;
    .restart local v2    # "objectOutput":Ljava/io/ObjectOutputStream;
    :goto_1
    return-object v4

    .line 163
    :catch_0
    move-exception v1

    .line 164
    .local v1, "e":Ljava/io/IOException;
    :goto_2
    const/4 v4, 0x0

    .line 167
    if-eqz v2, :cond_1

    .line 168
    :try_start_3
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V

    .line 170
    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 171
    :catch_1
    move-exception v5

    goto :goto_1

    .line 166
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 167
    :goto_3
    if-eqz v2, :cond_2

    .line 168
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V

    .line 170
    :cond_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 173
    :goto_4
    throw v4

    .line 171
    :catch_2
    move-exception v5

    goto :goto_4

    .line 166
    .end local v2    # "objectOutput":Ljava/io/ObjectOutputStream;
    .restart local v3    # "objectOutput":Ljava/io/ObjectOutputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "objectOutput":Ljava/io/ObjectOutputStream;
    .restart local v2    # "objectOutput":Ljava/io/ObjectOutputStream;
    goto :goto_3

    .line 163
    .end local v2    # "objectOutput":Ljava/io/ObjectOutputStream;
    .restart local v3    # "objectOutput":Ljava/io/ObjectOutputStream;
    :catch_3
    move-exception v1

    move-object v2, v3

    .end local v3    # "objectOutput":Ljava/io/ObjectOutputStream;
    .restart local v2    # "objectOutput":Ljava/io/ObjectOutputStream;
    goto :goto_2

    .line 171
    .end local v2    # "objectOutput":Ljava/io/ObjectOutputStream;
    .restart local v3    # "objectOutput":Ljava/io/ObjectOutputStream;
    :catch_4
    move-exception v5

    goto :goto_0
.end method

.method private serializeValues(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/tagmanager/DataLayer$KeyValue;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/tagmanager/DataLayerPersistentStoreImpl$KeyAndSerialized;",
            ">;"
        }
    .end annotation

    .prologue
    .line 127
    .local p1, "keysAndValues":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/DataLayer$KeyValue;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 128
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/DataLayerPersistentStoreImpl$KeyAndSerialized;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/tagmanager/DataLayer$KeyValue;

    .line 129
    .local v1, "keyAndValue":Lcom/google/tagmanager/DataLayer$KeyValue;
    new-instance v3, Lcom/google/tagmanager/DataLayerPersistentStoreImpl$KeyAndSerialized;

    iget-object v4, v1, Lcom/google/tagmanager/DataLayer$KeyValue;->mKey:Ljava/lang/String;

    iget-object v5, v1, Lcom/google/tagmanager/DataLayer$KeyValue;->mValue:Ljava/lang/Object;

    invoke-direct {p0, v5}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->serialize(Ljava/lang/Object;)[B

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl$KeyAndSerialized;-><init>(Ljava/lang/String;[B)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 131
    .end local v1    # "keyAndValue":Lcom/google/tagmanager/DataLayer$KeyValue;
    :cond_0
    return-object v2
.end method

.method private unserialize([B)Ljava/lang/Object;
    .locals 6
    .param p1, "bytes"    # [B

    .prologue
    const/4 v4, 0x0

    .line 135
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 136
    .local v0, "byteStream":Ljava/io/ByteArrayInputStream;
    const/4 v2, 0x0

    .line 138
    .local v2, "objectInput":Ljava/io/ObjectInputStream;
    :try_start_0
    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-direct {v3, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    .end local v2    # "objectInput":Ljava/io/ObjectInputStream;
    .local v3, "objectInput":Ljava/io/ObjectInputStream;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v4

    .line 146
    if-eqz v3, :cond_0

    .line 147
    :try_start_2
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V

    .line 149
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    :goto_0
    move-object v2, v3

    .line 152
    .end local v3    # "objectInput":Ljava/io/ObjectInputStream;
    .restart local v2    # "objectInput":Ljava/io/ObjectInputStream;
    :goto_1
    return-object v4

    .line 140
    :catch_0
    move-exception v1

    .line 146
    .local v1, "e":Ljava/io/IOException;
    :goto_2
    if-eqz v2, :cond_1

    .line 147
    :try_start_3
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V

    .line 149
    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 150
    :catch_1
    move-exception v5

    goto :goto_1

    .line 142
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 146
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    :goto_3
    if-eqz v2, :cond_2

    .line 147
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V

    .line 149
    :cond_2
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    .line 150
    :catch_3
    move-exception v5

    goto :goto_1

    .line 145
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catchall_0
    move-exception v4

    .line 146
    :goto_4
    if-eqz v2, :cond_3

    .line 147
    :try_start_5
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V

    .line 149
    :cond_3
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 152
    :goto_5
    throw v4

    .line 150
    :catch_4
    move-exception v5

    goto :goto_5

    .line 145
    .end local v2    # "objectInput":Ljava/io/ObjectInputStream;
    .restart local v3    # "objectInput":Ljava/io/ObjectInputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "objectInput":Ljava/io/ObjectInputStream;
    .restart local v2    # "objectInput":Ljava/io/ObjectInputStream;
    goto :goto_4

    .line 142
    .end local v2    # "objectInput":Ljava/io/ObjectInputStream;
    .restart local v3    # "objectInput":Ljava/io/ObjectInputStream;
    :catch_5
    move-exception v1

    move-object v2, v3

    .end local v3    # "objectInput":Ljava/io/ObjectInputStream;
    .restart local v2    # "objectInput":Ljava/io/ObjectInputStream;
    goto :goto_3

    .line 140
    .end local v2    # "objectInput":Ljava/io/ObjectInputStream;
    .restart local v3    # "objectInput":Ljava/io/ObjectInputStream;
    :catch_6
    move-exception v1

    move-object v2, v3

    .end local v3    # "objectInput":Ljava/io/ObjectInputStream;
    .restart local v2    # "objectInput":Ljava/io/ObjectInputStream;
    goto :goto_2

    .line 150
    .end local v2    # "objectInput":Ljava/io/ObjectInputStream;
    .restart local v3    # "objectInput":Ljava/io/ObjectInputStream;
    :catch_7
    move-exception v5

    goto :goto_0
.end method

.method private unserializeValues(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/tagmanager/DataLayerPersistentStoreImpl$KeyAndSerialized;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/tagmanager/DataLayer$KeyValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    .local p1, "serialized":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/DataLayerPersistentStoreImpl$KeyAndSerialized;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 117
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/DataLayer$KeyValue;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/tagmanager/DataLayerPersistentStoreImpl$KeyAndSerialized;

    .line 118
    .local v1, "keyAndSerialized":Lcom/google/tagmanager/DataLayerPersistentStoreImpl$KeyAndSerialized;
    new-instance v3, Lcom/google/tagmanager/DataLayer$KeyValue;

    iget-object v4, v1, Lcom/google/tagmanager/DataLayerPersistentStoreImpl$KeyAndSerialized;->mKey:Ljava/lang/String;

    iget-object v5, v1, Lcom/google/tagmanager/DataLayerPersistentStoreImpl$KeyAndSerialized;->mSerialized:[B

    invoke-direct {p0, v5}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->unserialize([B)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/google/tagmanager/DataLayer$KeyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 120
    .end local v1    # "keyAndSerialized":Lcom/google/tagmanager/DataLayerPersistentStoreImpl$KeyAndSerialized;
    :cond_0
    return-object v2
.end method

.method private writeEntriesToDatabase(Ljava/util/List;J)V
    .locals 6
    .param p2, "expireTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/tagmanager/DataLayerPersistentStoreImpl$KeyAndSerialized;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 209
    .local p1, "keysAndValues":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/DataLayerPersistentStoreImpl$KeyAndSerialized;>;"
    const-string v4, "Error opening database for writeEntryToDatabase."

    invoke-direct {p0, v4}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->getWritableDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 210
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_1

    .line 220
    :cond_0
    return-void

    .line 213
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/tagmanager/DataLayerPersistentStoreImpl$KeyAndSerialized;

    .line 214
    .local v2, "keyAndValue":Lcom/google/tagmanager/DataLayerPersistentStoreImpl$KeyAndSerialized;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 215
    .local v3, "values":Landroid/content/ContentValues;
    const-string v4, "expires"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 216
    const-string v4, "key"

    iget-object v5, v2, Lcom/google/tagmanager/DataLayerPersistentStoreImpl$KeyAndSerialized;->mKey:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    const-string v4, "value"

    iget-object v5, v2, Lcom/google/tagmanager/DataLayerPersistentStoreImpl$KeyAndSerialized;->mSerialized:[B

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 218
    const-string v4, "datalayer"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0
.end method


# virtual methods
.method public clearKeysWithPrefix(Ljava/lang/String;)V
    .locals 2
    .param p1, "keyPrefix"    # Ljava/lang/String;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/tagmanager/DataLayerPersistentStoreImpl$4;

    invoke-direct {v1, p0, p1}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl$4;-><init>(Lcom/google/tagmanager/DataLayerPersistentStoreImpl;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 101
    return-void
.end method

.method public loadSaved(Lcom/google/tagmanager/DataLayer$PersistentStore$Callback;)V
    .locals 2
    .param p1, "callback"    # Lcom/google/tagmanager/DataLayer$PersistentStore$Callback;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/tagmanager/DataLayerPersistentStoreImpl$3;

    invoke-direct {v1, p0, p1}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl$3;-><init>(Lcom/google/tagmanager/DataLayerPersistentStoreImpl;Lcom/google/tagmanager/DataLayer$PersistentStore$Callback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 92
    return-void
.end method

.method public saveKeyValues(Ljava/util/List;J)V
    .locals 3
    .param p2, "lifetimeInMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/tagmanager/DataLayer$KeyValue;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p1, "keysAndValues":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/DataLayer$KeyValue;>;"
    invoke-direct {p0, p1}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->serializeValues(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 78
    .local v0, "serializedKeysAndValues":Ljava/util/List;, "Ljava/util/List<Lcom/google/tagmanager/DataLayerPersistentStoreImpl$KeyAndSerialized;>;"
    iget-object v1, p0, Lcom/google/tagmanager/DataLayerPersistentStoreImpl;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/tagmanager/DataLayerPersistentStoreImpl$2;

    invoke-direct {v2, p0, v0, p2, p3}, Lcom/google/tagmanager/DataLayerPersistentStoreImpl$2;-><init>(Lcom/google/tagmanager/DataLayerPersistentStoreImpl;Ljava/util/List;J)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 83
    return-void
.end method
