.class public Lqm;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lqm;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/io/FileInputStream;)I
    .locals 13

    .prologue
    const/4 v2, 0x3

    const/4 v11, 0x1

    const/4 v0, 0x0

    .line 223
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 224
    new-instance v6, Ljava/io/DataInputStream;

    invoke-direct {v6, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 231
    :try_start_0
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    .line 236
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readLong()J
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move v3, v0

    move v4, v0

    .line 256
    :goto_0
    if-ge v3, v7, :cond_0

    .line 258
    :try_start_1
    invoke-virtual {v5}, Landroid/content/ContentValues;->clear()V

    .line 259
    const-string v1, "name"

    invoke-static {v6}, Lcom/kms/kmsshared/Utils;->b(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v1, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    const-string v1, "numberlabel"

    invoke-static {v6}, Lcom/kms/kmsshared/Utils;->b(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v1, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    const-string v1, "numbertype"

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v1, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 262
    const-string v1, "date"

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v1, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 263
    const-string v1, "type"

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v1, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 264
    const-string v1, "duration"

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v1, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 265
    const-string v1, "new"

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v1, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 266
    const-string v1, "number"

    invoke-static {v6}, Lcom/kms/kmsshared/Utils;->b(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v1, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 269
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v8, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v8, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 276
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 256
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    .line 238
    :catch_0
    move-exception v1

    .line 244
    invoke-static {v6}, Lcom/kms/kmsshared/Utils;->a(Ljava/io/InputStream;)Z

    .line 332
    :goto_2
    return v0

    .line 247
    :catch_1
    move-exception v0

    .line 249
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 250
    invoke-static {v6}, Lcom/kms/kmsshared/Utils;->a(Ljava/io/InputStream;)Z

    .line 251
    const/4 v0, -0x1

    goto :goto_2

    .line 271
    :catch_2
    move-exception v1

    .line 273
    :try_start_3
    const-string v8, "KMS"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Failed to restore call log for number: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "number"

    invoke-virtual {v5, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 319
    :catch_3
    move-exception v1

    .line 321
    :goto_3
    :try_start_4
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 325
    invoke-static {v6}, Lcom/kms/kmsshared/Utils;->a(Ljava/io/InputStream;)Z

    .line 332
    :goto_4
    add-int/2addr v0, v4

    goto :goto_2

    .line 286
    :cond_0
    :goto_5
    :try_start_5
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v7

    .line 287
    invoke-static {v6}, Lcom/kms/kmsshared/Utils;->b(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v3

    .line 288
    invoke-virtual {v5}, Landroid/content/ContentValues;->clear()V

    .line 289
    const-string v1, "date"

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 290
    const-string v1, "duration"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 291
    const-string v1, "new"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 292
    const-string v1, "number"

    invoke-virtual {v5, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I
    :try_end_5
    .catch Ljava/io/EOFException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v1

    .line 294
    if-eq v1, v11, :cond_1

    if-ne v1, v2, :cond_2

    .line 297
    :cond_1
    add-int/lit8 v1, v0, 0x1

    move v0, v2

    .line 299
    :goto_6
    :try_start_6
    const-string v7, "type"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 300
    const-string v0, "name"

    invoke-static {}, LuR;->a()LuR;

    move-result-object v7

    invoke-virtual {v7, p0, v3}, LuR;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/EOFException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 303
    :try_start_7
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v7, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v7, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/io/EOFException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move v0, v1

    .line 309
    goto :goto_5

    .line 305
    :catch_4
    move-exception v0

    .line 307
    :try_start_8
    const-string v7, "KMS"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Failed to restore call log for number: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catch Ljava/io/EOFException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move v0, v1

    .line 310
    goto :goto_5

    .line 312
    :catch_5
    move-exception v1

    .line 325
    :goto_7
    invoke-static {v6}, Lcom/kms/kmsshared/Utils;->a(Ljava/io/InputStream;)Z

    goto :goto_4

    :catchall_0
    move-exception v0

    invoke-static {v6}, Lcom/kms/kmsshared/Utils;->a(Ljava/io/InputStream;)Z

    throw v0

    .line 319
    :catch_6
    move-exception v0

    move-object v12, v0

    move v0, v1

    move-object v1, v12

    goto/16 :goto_3

    .line 312
    :catch_7
    move-exception v0

    move v0, v1

    goto :goto_7

    :cond_2
    move v12, v1

    move v1, v0

    move v0, v12

    goto :goto_6
.end method

.method public static declared-synchronized a()Lqm;
    .locals 3

    .prologue
    .line 368
    const-class v1, Lqm;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lqm;->a:Lqm;

    if-nez v0, :cond_0

    .line 370
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 371
    const/4 v2, 0x5

    if-ge v0, v2, :cond_1

    .line 373
    new-instance v0, Lqm;

    invoke-direct {v0}, Lqm;-><init>()V

    sput-object v0, Lqm;->a:Lqm;

    .line 380
    :cond_0
    :goto_0
    sget-object v0, Lqm;->a:Lqm;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 377
    :cond_1
    :try_start_1
    new-instance v0, Lqn;

    invoke-direct {v0}, Lqn;-><init>()V

    sput-object v0, Lqm;->a:Lqm;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 368
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected static a(Landroid/content/Context;Ljava/util/Set;I)Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 342
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    .line 363
    :goto_0
    return v0

    :cond_1
    move v3, v2

    .line 345
    :goto_1
    if-ge v3, p2, :cond_3

    .line 347
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 350
    :goto_2
    :try_start_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 352
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v0, "_id = "

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v0, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 356
    :catch_0
    move-exception v0

    .line 358
    const-string v4, "KMS"

    const-string v5, "Error during call logs delete"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 360
    invoke-static {v3}, LqZ;->a(I)V

    .line 345
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_2
    move v0, v1

    .line 354
    goto :goto_0

    :cond_3
    move v0, v2

    .line 363
    goto :goto_0
.end method

.method private static b(Landroid/content/Context;Ljava/util/Set;)Ljava/util/List;
    .locals 13

    .prologue
    .line 86
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 87
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 88
    const/4 v1, 0x0

    .line 91
    :try_start_0
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v11

    .line 92
    const/4 v7, 0x0

    .line 93
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v12

    .line 94
    const/4 v0, 0x0

    move v8, v0

    move-object v6, v1

    move-object v0, v7

    :goto_0
    if-ge v8, v11, :cond_7

    .line 96
    const/16 v1, 0x1f4

    if-le v11, v1, :cond_5

    .line 97
    if-nez v0, :cond_0

    .line 98
    :try_start_1
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 102
    :goto_1
    const/4 v1, 0x0

    :goto_2
    const/16 v2, 0x1f4

    if-ge v1, v2, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 103
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 102
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 100
    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->clear()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto :goto_1

    .line 152
    :catch_0
    move-exception v0

    move-object v1, v6

    .line 153
    :goto_3
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 155
    if-eqz v1, :cond_1

    .line 156
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 158
    :cond_1
    :goto_4
    return-object v9

    :cond_2
    move-object v7, v0

    .line 109
    :goto_5
    :try_start_3
    const-string v0, "number"

    invoke-static {v0, v7}, Lcom/kms/kmsshared/Utils;->a(Ljava/lang/String;Ljava/util/Set;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 110
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "name"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "numberlabel"

    aput-object v5, v2, v4

    const/4 v4, 0x3

    const-string v5, "numbertype"

    aput-object v5, v2, v4

    const/4 v4, 0x4

    const-string v5, "date"

    aput-object v5, v2, v4

    const/4 v4, 0x5

    const-string v5, "type"

    aput-object v5, v2, v4

    const/4 v4, 0x6

    const-string v5, "duration"

    aput-object v5, v2, v4

    const/4 v4, 0x7

    const-string v5, "new"

    aput-object v5, v2, v4

    const/16 v4, 0x8

    const-string v5, "number"

    aput-object v5, v2, v4

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "date DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v1

    .line 123
    if-eqz v1, :cond_9

    .line 124
    :cond_3
    :goto_6
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 125
    const/16 v0, 0x8

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 127
    invoke-virtual {v10, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 128
    if-nez v0, :cond_4

    .line 129
    invoke-static {v2}, Lcom/kms/kmsshared/Utils;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 130
    invoke-virtual {v10, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    :cond_4
    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 134
    new-instance v0, Lqo;

    invoke-direct {v0}, Lqo;-><init>()V

    .line 137
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lqo;->a(J)V

    .line 138
    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lqo;->a(Ljava/lang/String;)V

    .line 139
    const/4 v3, 0x2

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lqo;->b(Ljava/lang/String;)V

    .line 140
    const/4 v3, 0x3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lqo;->a(I)V

    .line 141
    const/4 v3, 0x4

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lqo;->b(J)V

    .line 142
    const/4 v3, 0x5

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lqo;->b(I)V

    .line 143
    const/4 v3, 0x6

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lqo;->c(J)V

    .line 144
    const/4 v3, 0x7

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lqo;->c(I)V

    .line 145
    invoke-virtual {v0, v2}, Lqo;->c(Ljava/lang/String;)V

    .line 146
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 152
    :catch_1
    move-exception v0

    goto/16 :goto_3

    :cond_5
    move-object v7, p1

    .line 106
    goto/16 :goto_5

    .line 148
    :cond_6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 149
    const/4 v0, 0x0

    .line 94
    :goto_7
    add-int/lit16 v1, v8, 0x1f4

    move v8, v1

    move-object v6, v0

    move-object v0, v7

    goto/16 :goto_0

    .line 155
    :cond_7
    if-eqz v6, :cond_1

    .line 156
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_4

    .line 155
    :catchall_0
    move-exception v0

    move-object v6, v1

    :goto_8
    if-eqz v6, :cond_8

    .line 156
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v0

    .line 155
    :catchall_1
    move-exception v0

    move-object v6, v1

    goto :goto_8

    :catchall_2
    move-exception v0

    goto :goto_8

    :cond_9
    move-object v0, v1

    goto :goto_7
.end method

.method private static b(Ljava/io/RandomAccessFile;JLjava/lang/String;I)V
    .locals 1

    .prologue
    .line 163
    invoke-virtual {p0, p1, p2}, Ljava/io/RandomAccessFile;->writeLong(J)V

    .line 164
    if-nez p3, :cond_0

    .line 166
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->writeByte(I)V

    .line 174
    :goto_0
    return-void

    .line 170
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->writeByte(I)V

    .line 171
    invoke-virtual {p0, p3}, Ljava/io/RandomAccessFile;->writeUTF(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p0, p4}, Ljava/io/RandomAccessFile;->writeInt(I)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/io/RandomAccessFile;JLjava/lang/String;I)I
    .locals 5

    .prologue
    const/4 v0, 0x0

    const-wide/16 v3, 0x0

    .line 181
    :try_start_0
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 183
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 184
    const-wide/16 v1, 0x0

    invoke-virtual {p1, v1, v2}, Ljava/io/RandomAccessFile;->writeLong(J)V

    .line 185
    const-wide/16 v1, 0x0

    invoke-virtual {p1, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 189
    :cond_0
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readInt()I

    .line 190
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v1

    .line 192
    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 194
    const-wide/16 v1, 0x4

    invoke-virtual {p1, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 195
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    .line 196
    invoke-virtual {p1, v1, v2}, Ljava/io/RandomAccessFile;->writeLong(J)V

    .line 197
    invoke-virtual {p1, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 198
    invoke-static {p1, p2, p3, p4, p5}, Lqm;->b(Ljava/io/RandomAccessFile;JLjava/lang/String;I)V

    .line 213
    :goto_0
    return v0

    .line 202
    :cond_1
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 203
    invoke-static {p1, p2, p3, p4, p5}, Lqm;->b(Ljava/io/RandomAccessFile;JLjava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 206
    :catch_0
    move-exception v0

    .line 208
    const-string v1, "KMS"

    const-string v2, "Error appending call logs"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 210
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Ljava/io/FileOutputStream;Ljava/util/Set;)Ljava/util/Set;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 43
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 44
    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 82
    :cond_0
    :goto_0
    return-object v0

    .line 49
    :cond_1
    invoke-static {p1, p3}, Lqm;->b(Landroid/content/Context;Ljava/util/Set;)Ljava/util/List;

    move-result-object v2

    .line 50
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 53
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, p2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 58
    :try_start_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 59
    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 61
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqo;

    .line 62
    invoke-virtual {v0}, Lqo;->a()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 63
    invoke-virtual {v0}, Lqo;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/kms/kmsshared/Utils;->a(Ljava/io/DataOutput;Ljava/lang/String;)V

    .line 64
    invoke-virtual {v0}, Lqo;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/kms/kmsshared/Utils;->a(Ljava/io/DataOutput;Ljava/lang/String;)V

    .line 65
    invoke-virtual {v0}, Lqo;->d()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 66
    invoke-virtual {v0}, Lqo;->e()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 67
    invoke-virtual {v0}, Lqo;->f()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 68
    invoke-virtual {v0}, Lqo;->g()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 69
    invoke-virtual {v0}, Lqo;->h()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 70
    invoke-virtual {v0}, Lqo;->i()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/kms/kmsshared/Utils;->a(Ljava/io/DataOutput;Ljava/lang/String;)V

    .line 71
    invoke-virtual {v0}, Lqo;->f()I

    move-result v0

    .line 72
    const/4 v4, 0x3

    if-ne v0, v4, :cond_2

    .line 74
    invoke-static {}, Lcom/kms/kmsshared/Utils;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 77
    :catch_0
    move-exception v0

    .line 78
    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    invoke-static {v3}, Lcom/kms/kmsshared/Utils;->a(Ljava/io/OutputStream;)Z

    :goto_2
    move-object v0, v1

    .line 82
    goto/16 :goto_0

    .line 80
    :cond_3
    invoke-static {v3}, Lcom/kms/kmsshared/Utils;->a(Ljava/io/OutputStream;)Z

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-static {v3}, Lcom/kms/kmsshared/Utils;->a(Ljava/io/OutputStream;)Z

    throw v0
.end method

.method public a(Landroid/content/Context;Ljava/util/Set;)Z
    .locals 1

    .prologue
    .line 337
    const/4 v0, 0x5

    invoke-static {p1, p2, v0}, Lqm;->a(Landroid/content/Context;Ljava/util/Set;I)Z

    move-result v0

    return v0
.end method
