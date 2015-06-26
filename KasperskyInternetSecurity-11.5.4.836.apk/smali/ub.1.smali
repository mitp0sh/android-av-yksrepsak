.class public Lub;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:[Ljava/lang/String;


# instance fields
.field private c:Landroid/database/sqlite/SQLiteDatabase;

.field private d:Luc;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 65
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "productId"

    aput-object v1, v0, v4

    const-string v1, "state"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "purchaseTime"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "developerPayload"

    aput-object v2, v0, v1

    sput-object v0, Lub;->a:[Ljava/lang/String;

    .line 73
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "quantity"

    aput-object v1, v0, v4

    sput-object v0, Lub;->b:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Luc;

    invoke-direct {v0, p0, p1}, Luc;-><init>(Lub;Landroid/content/Context;)V

    iput-object v0, p0, Lub;->d:Luc;

    .line 81
    iget-object v0, p0, Lub;->d:Luc;

    invoke-virtual {v0}, Luc;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lub;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 82
    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 5

    .prologue
    .line 126
    if-nez p2, :cond_0

    .line 127
    iget-object v0, p0, Lub;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "purchased"

    const-string v2, "_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 136
    :goto_0
    return-void

    .line 131
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 132
    const-string v1, "_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string v1, "quantity"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 134
    iget-object v1, p0, Lub;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "purchased"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Lcom/kms/licensing/iapurchase/Consts$PurchaseState;JLjava/lang/String;)V
    .locals 4

    .prologue
    .line 106
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 107
    const-string v1, "_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v1, "productId"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v1, "state"

    invoke-virtual {p3}, Lcom/kms/licensing/iapurchase/Consts$PurchaseState;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 110
    const-string v1, "purchaseTime"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 111
    const-string v1, "developerPayload"

    invoke-virtual {v0, v1, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v1, p0, Lub;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "history"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 114
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Lcom/kms/licensing/iapurchase/Consts$PurchaseState;JLjava/lang/String;)I
    .locals 9

    .prologue
    .line 158
    monitor-enter p0

    :try_start_0
    invoke-direct/range {p0 .. p6}, Lub;->b(Ljava/lang/String;Ljava/lang/String;Lcom/kms/licensing/iapurchase/Consts$PurchaseState;JLjava/lang/String;)V

    .line 160
    iget-object v0, p0, Lub;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "history"

    sget-object v2, Lub;->a:[Ljava/lang/String;

    const-string v3, "productId=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 163
    if-nez v1, :cond_1

    .line 164
    const/4 v0, 0x0

    .line 184
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 166
    :cond_1
    const/4 v0, 0x0

    .line 169
    :cond_2
    :goto_1
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 170
    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 171
    invoke-static {v2}, Lcom/kms/licensing/iapurchase/Consts$PurchaseState;->valueOf(I)Lcom/kms/licensing/iapurchase/Consts$PurchaseState;

    move-result-object v2

    .line 172
    sget-object v3, Lcom/kms/licensing/iapurchase/Consts$PurchaseState;->PURCHASED:Lcom/kms/licensing/iapurchase/Consts$PurchaseState;

    if-ne v2, v3, :cond_2

    .line 173
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 178
    :cond_3
    invoke-direct {p0, p2, v0}, Lub;->a(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 180
    if-eqz v1, :cond_0

    .line 181
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 158
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 180
    :catchall_1
    move-exception v0

    if-eqz v1, :cond_4

    .line 181
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lub;->d:Luc;

    invoke-virtual {v0}, Luc;->close()V

    .line 86
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 246
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 247
    const-string v1, "raw_signature"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const-string v1, "raw_data"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const-string v1, "activation_code"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const-string v1, "key_used"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 251
    iget-object v1, p0, Lub;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "licensed_items"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 253
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 256
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 257
    const-string v1, "raw_signature"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    const-string v1, "raw_data"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    const-string v1, "activation_code"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    iget-object v1, p0, Lub;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "licensed_items"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 262
    return-void
.end method

.method public final b()Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 192
    iget-object v0, p0, Lub;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "purchased"

    sget-object v2, Lub;->b:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public final c()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 269
    iget-object v0, p0, Lub;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "licensed_items"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 270
    return-void
.end method

.method public final d()Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 273
    iget-object v0, p0, Lub;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "licensed_items"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "raw_data"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "raw_signature"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
