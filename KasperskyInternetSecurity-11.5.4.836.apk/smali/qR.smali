.class public final LqR;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroid/net/Uri;

.field public static final b:Landroid/net/Uri;

.field private static c:LqR;

.field private static e:[Ljava/lang/String;


# instance fields
.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 48
    const-string v0, "content://sms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, LqR;->a:Landroid/net/Uri;

    .line 49
    const-string v0, "content://sms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, LqR;->b:Landroid/net/Uri;

    .line 67
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "thread_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "address"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "person"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "read"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "status"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "body"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "subject"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "protocol"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "reply_path_present"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "service_center"

    aput-object v2, v0, v1

    sput-object v0, LqR;->e:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput v0, p0, LqR;->d:I

    return-void
.end method

.method public static a(Landroid/content/ContentResolver;J)I
    .locals 4

    .prologue
    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "content://sms/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 386
    const/4 v0, 0x0

    .line 389
    :try_start_0
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 393
    :goto_0
    return v0

    .line 390
    :catch_0
    move-exception v1

    .line 391
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/util/Set;Z)Ljava/util/List;
    .locals 13

    .prologue
    .line 158
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 159
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 160
    const/4 v1, 0x0

    .line 162
    :try_start_0
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v11

    .line 163
    const/4 v7, 0x0

    .line 165
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v12

    .line 166
    const/4 v0, 0x0

    move v8, v0

    move-object v6, v1

    move-object v0, v7

    :goto_0
    if-ge v8, v11, :cond_7

    .line 168
    const/16 v1, 0x1f4

    if-le v11, v1, :cond_5

    .line 169
    if-nez v0, :cond_0

    .line 170
    :try_start_1
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 173
    :goto_1
    const/4 v1, 0x0

    :goto_2
    const/16 v2, 0x1f4

    if-ge v1, v2, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 174
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 173
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 172
    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->clear()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 218
    :catch_0
    move-exception v0

    move-object v1, v6

    .line 219
    :goto_3
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 221
    if-eqz v1, :cond_1

    .line 222
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 224
    :cond_1
    :goto_4
    return-object v9

    :cond_2
    move-object v7, v0

    .line 180
    :goto_5
    :try_start_3
    const-string v0, "address"

    invoke-static {v0, v7}, Lcom/kms/kmsshared/Utils;->a(Ljava/lang/String;Ljava/util/Set;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 181
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, LqR;->a:Landroid/net/Uri;

    sget-object v2, LqR;->e:[Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "date ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v1

    .line 184
    if-eqz v1, :cond_9

    .line 185
    :cond_3
    :goto_6
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 186
    const/4 v0, 0x6

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 187
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 188
    invoke-virtual {v10, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 189
    if-nez v0, :cond_4

    .line 190
    invoke-static {v3}, Lcom/kms/kmsshared/Utils;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 191
    invoke-virtual {v10, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    :cond_4
    const/4 v4, 0x3

    if-eq v2, v4, :cond_3

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 195
    new-instance v0, LqT;

    invoke-direct {v0}, LqT;-><init>()V

    .line 199
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, LqT;->a(J)V

    .line 200
    invoke-virtual {v0, v3}, LqT;->a(Ljava/lang/String;)V

    .line 201
    const/4 v3, 0x2

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, LqT;->b(J)V

    .line 202
    const/4 v3, 0x3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, LqT;->c(J)V

    .line 203
    const/4 v3, 0x4

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v0, v3}, LqT;->a(I)V

    .line 204
    const/4 v3, 0x5

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v0, v3}, LqT;->c(I)V

    .line 205
    invoke-virtual {v0, v2}, LqT;->b(I)V

    .line 206
    const/4 v2, 0x7

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, LqT;->b(Ljava/lang/String;)V

    .line 207
    const/16 v2, 0x8

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, LqT;->c(Ljava/lang/String;)V

    .line 208
    const/16 v2, 0x9

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v2}, LqT;->d(I)V

    .line 209
    const/16 v2, 0xa

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v2}, LqT;->e(I)V

    .line 210
    const/16 v2, 0xb

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, LqT;->d(Ljava/lang/String;)V

    .line 211
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 218
    :catch_1
    move-exception v0

    goto/16 :goto_3

    :cond_5
    move-object v7, p1

    .line 177
    goto/16 :goto_5

    .line 213
    :cond_6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 214
    const/4 v0, 0x0

    .line 166
    :goto_7
    add-int/lit16 v1, v8, 0x1f4

    move v8, v1

    move-object v6, v0

    move-object v0, v7

    goto/16 :goto_0

    .line 221
    :cond_7
    if-eqz v6, :cond_1

    .line 222
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_4

    .line 221
    :catchall_0
    move-exception v0

    :goto_8
    if-eqz v1, :cond_8

    .line 222
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v0

    .line 221
    :catchall_1
    move-exception v0

    move-object v1, v6

    goto :goto_8

    :cond_9
    move-object v0, v1

    goto :goto_7
.end method

.method public static a()LqR;
    .locals 1

    .prologue
    .line 312
    sget-object v0, LqR;->c:LqR;

    if-nez v0, :cond_0

    .line 314
    new-instance v0, LqR;

    invoke-direct {v0}, LqR;-><init>()V

    sput-object v0, LqR;->c:LqR;

    .line 316
    :cond_0
    sget-object v0, LqR;->c:LqR;

    return-object v0
.end method

.method private static a(Ljava/io/DataInputStream;Landroid/content/ContentValues;)V
    .locals 3

    .prologue
    .line 92
    invoke-virtual {p1}, Landroid/content/ContentValues;->clear()V

    .line 93
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readLong()J

    .line 95
    const-string v0, "address"

    invoke-static {p0}, Lcom/kms/kmsshared/Utils;->b(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v0, "person"

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 97
    const-string v0, "date"

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 98
    const-string v0, "read"

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 99
    const-string v0, "status"

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 100
    const-string v0, "type"

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 101
    const-string v0, "body"

    invoke-static {p0}, Lcom/kms/kmsshared/Utils;->b(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v0, "subject"

    invoke-static {p0}, Lcom/kms/kmsshared/Utils;->b(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v0, "protocol"

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 104
    const-string v0, "reply_path_present"

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 105
    const-string v0, "service_center"

    invoke-static {p0}, Lcom/kms/kmsshared/Utils;->b(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method private static a(Ljava/io/DataOutputStream;LqT;)V
    .locals 2

    .prologue
    .line 72
    invoke-virtual {p1}, LqT;->a()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 73
    invoke-virtual {p1}, LqT;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/kms/kmsshared/Utils;->a(Ljava/io/DataOutput;Ljava/lang/String;)V

    .line 74
    invoke-virtual {p1}, LqT;->c()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 75
    invoke-virtual {p1}, LqT;->l()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 76
    invoke-virtual {p1}, LqT;->d()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 77
    invoke-virtual {p1}, LqT;->d()I

    move-result v0

    if-nez v0, :cond_0

    .line 79
    invoke-static {}, Lcom/kms/kmsshared/Utils;->c()V

    .line 81
    :cond_0
    invoke-virtual {p1}, LqT;->f()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 82
    invoke-virtual {p1}, LqT;->e()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 83
    invoke-virtual {p1}, LqT;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/kms/kmsshared/Utils;->a(Ljava/io/DataOutput;Ljava/lang/String;)V

    .line 84
    invoke-virtual {p1}, LqT;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/kms/kmsshared/Utils;->a(Ljava/io/DataOutput;Ljava/lang/String;)V

    .line 85
    invoke-virtual {p1}, LqT;->i()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 86
    invoke-virtual {p1}, LqT;->j()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 87
    invoke-virtual {p1}, LqT;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/kms/kmsshared/Utils;->a(Ljava/io/DataOutput;Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/util/Set;)Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 289
    move v2, v0

    :goto_0
    const/4 v1, 0x5

    if-ge v2, v1, :cond_1

    .line 293
    :try_start_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 294
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 296
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "content://sms/conversations/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 300
    :catch_0
    move-exception v1

    .line 302
    const-string v3, "KMS"

    const-string v4, "Error during delete sms"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 304
    invoke-static {v2}, LqZ;->a(I)V

    .line 289
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 298
    :cond_0
    const/4 v0, 0x1

    .line 307
    :cond_1
    return v0
.end method

.method private b(Ljava/io/DataInputStream;Landroid/content/ContentValues;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 110
    invoke-virtual {p2}, Landroid/content/ContentValues;->clear()V

    .line 111
    const-string v0, "date"

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 112
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 113
    if-ne v0, v3, :cond_0

    .line 115
    const-string v1, "read"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 116
    iget v1, p0, LqR;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, LqR;->d:I

    .line 122
    :goto_0
    const-string v1, "type"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 123
    const-string v0, "address"

    invoke-static {p1}, Lcom/kms/kmsshared/Utils;->b(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string v0, "body"

    invoke-static {p1}, Lcom/kms/kmsshared/Utils;->b(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    return-void

    .line 120
    :cond_0
    const-string v1, "read"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method private static b(Ljava/io/RandomAccessFile;JLjava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 360
    invoke-virtual {p0, p1, p2}, Ljava/io/RandomAccessFile;->writeLong(J)V

    .line 361
    invoke-virtual {p0, p5}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 362
    if-nez p3, :cond_0

    .line 364
    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->writeByte(I)V

    .line 371
    :goto_0
    if-nez p4, :cond_1

    .line 373
    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->writeByte(I)V

    .line 382
    :goto_1
    return-void

    .line 368
    :cond_0
    invoke-virtual {p0, v1}, Ljava/io/RandomAccessFile;->writeByte(I)V

    .line 369
    invoke-virtual {p0, p3}, Ljava/io/RandomAccessFile;->writeUTF(Ljava/lang/String;)V

    goto :goto_0

    .line 377
    :cond_1
    invoke-virtual {p0, v1}, Ljava/io/RandomAccessFile;->writeByte(I)V

    .line 378
    invoke-virtual {p0, p4}, Ljava/io/RandomAccessFile;->writeUTF(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/io/FileInputStream;)I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 229
    iput v0, p0, LqR;->d:I

    .line 230
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 231
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, p2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 236
    :try_start_0
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 237
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 254
    :goto_0
    if-ge v0, v3, :cond_0

    .line 256
    :try_start_1
    invoke-static {v2, v1}, LqR;->a(Ljava/io/DataInputStream;Landroid/content/ContentValues;)V

    .line 257
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, LqR;->a:Landroid/net/Uri;

    invoke-virtual {v4, v5, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 254
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 241
    :catch_0
    move-exception v1

    const-string v1, "KMS"

    const-string v3, "CSMSStorageProvider: SMS file is empty, nothing to restore"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    invoke-static {v2}, Lcom/kms/kmsshared/Utils;->a(Ljava/io/InputStream;)Z

    .line 282
    :goto_1
    return v0

    .line 245
    :catch_1
    move-exception v0

    .line 247
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 248
    invoke-static {v2}, Lcom/kms/kmsshared/Utils;->a(Ljava/io/InputStream;)Z

    .line 249
    const/4 v0, -0x1

    goto :goto_1

    .line 264
    :cond_0
    :goto_2
    :try_start_2
    invoke-direct {p0, v2, v1}, LqR;->b(Ljava/io/DataInputStream;Landroid/content/ContentValues;)V

    .line 265
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v3, LqR;->a:Landroid/net/Uri;

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 269
    :catch_2
    move-exception v0

    .line 271
    :try_start_3
    invoke-virtual {v0}, Ljava/io/EOFException;->printStackTrace()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 280
    invoke-static {v2}, Lcom/kms/kmsshared/Utils;->a(Ljava/io/InputStream;)Z

    .line 282
    :goto_3
    iget v0, p0, LqR;->d:I

    goto :goto_1

    .line 274
    :catch_3
    move-exception v0

    .line 276
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 280
    invoke-static {v2}, Lcom/kms/kmsshared/Utils;->a(Ljava/io/InputStream;)Z

    goto :goto_3

    :catchall_0
    move-exception v0

    invoke-static {v2}, Lcom/kms/kmsshared/Utils;->a(Ljava/io/InputStream;)Z

    throw v0
.end method

.method public final a(Ljava/io/RandomAccessFile;JLjava/lang/String;Ljava/lang/String;I)I
    .locals 5

    .prologue
    const/4 v0, 0x0

    const-wide/16 v3, 0x0

    .line 324
    :try_start_0
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 326
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 327
    const-wide/16 v1, 0x0

    invoke-virtual {p1, v1, v2}, Ljava/io/RandomAccessFile;->writeLong(J)V

    .line 328
    const-wide/16 v1, 0x0

    invoke-virtual {p1, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 332
    :cond_0
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readInt()I

    .line 333
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v1

    .line 335
    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 337
    const-wide/16 v1, 0x4

    invoke-virtual {p1, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 338
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    .line 339
    invoke-virtual {p1, v1, v2}, Ljava/io/RandomAccessFile;->writeLong(J)V

    .line 340
    invoke-virtual {p1, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 341
    invoke-static/range {p1 .. p6}, LqR;->b(Ljava/io/RandomAccessFile;JLjava/lang/String;Ljava/lang/String;I)V

    .line 355
    :goto_0
    return v0

    .line 345
    :cond_1
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 346
    invoke-static/range {p1 .. p6}, LqR;->b(Ljava/io/RandomAccessFile;JLjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 349
    :catch_0
    move-exception v0

    .line 351
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 352
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Ljava/io/FileOutputStream;Ljava/util/Set;)Ljava/util/Set;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 133
    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 154
    :cond_0
    :goto_0
    return-object v0

    .line 136
    :cond_1
    const/4 v1, 0x1

    invoke-static {p1, p3, v1}, LqR;->a(Landroid/content/Context;Ljava/util/Set;Z)Ljava/util/List;

    move-result-object v2

    .line 137
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 141
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, p2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 143
    :try_start_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 144
    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 145
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LqT;

    .line 146
    invoke-virtual {v0}, LqT;->a()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 147
    invoke-static {v3, v0}, LqR;->a(Ljava/io/DataOutputStream;LqT;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 149
    :catch_0
    move-exception v0

    .line 150
    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    invoke-static {v3}, Lcom/kms/kmsshared/Utils;->a(Ljava/io/OutputStream;)Z

    :goto_2
    move-object v0, v1

    .line 154
    goto :goto_0

    .line 152
    :cond_2
    invoke-static {v3}, Lcom/kms/kmsshared/Utils;->a(Ljava/io/OutputStream;)Z

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-static {v3}, Lcom/kms/kmsshared/Utils;->a(Ljava/io/OutputStream;)Z

    throw v0
.end method
