.class public final Lsu;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lsu;


# instance fields
.field private b:Lorg/json/JSONObject;

.field private final c:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lsu;

    invoke-direct {v0}, Lsu;-><init>()V

    sput-object v0, Lsu;->a:Lsu;

    return-void
.end method

.method private constructor <init>()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lsu;->b:Lorg/json/JSONObject;

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsu;->c:Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 44
    new-instance v1, Ljava/io/File;

    const-string v2, "prefs.dat"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 45
    new-instance v2, Ljava/io/File;

    const-string v3, "oldprefs.dat"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 47
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v3

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 54
    invoke-static {v1}, Lsu;->a(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v3

    iput-object v3, p0, Lsu;->b:Lorg/json/JSONObject;

    .line 55
    iget-object v3, p0, Lsu;->b:Lorg/json/JSONObject;

    if-nez v3, :cond_0

    .line 59
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 63
    :cond_0
    iget-object v3, p0, Lsu;->b:Lorg/json/JSONObject;

    if-nez v3, :cond_1

    .line 64
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    .line 65
    invoke-static {v2}, Lsu;->a(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v3

    iput-object v3, p0, Lsu;->b:Lorg/json/JSONObject;

    .line 66
    invoke-virtual {v2, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 67
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error renaming "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 68
    const-string v2, "SettingsStorage"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_1
    iget-object v1, p0, Lsu;->b:Lorg/json/JSONObject;

    if-nez v1, :cond_2

    .line 81
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 82
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/shared_prefs"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "prefs.xml"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 87
    invoke-direct {p0}, Lsu;->e()V

    .line 95
    :cond_2
    :goto_0
    return-void

    .line 92
    :cond_3
    invoke-direct {p0}, Lsu;->d()V

    goto :goto_0
.end method

.method private static a(Ljava/io/File;)Lorg/json/JSONObject;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 405
    .line 407
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 408
    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v3

    long-to-int v0, v3

    new-array v0, v0, [B

    .line 409
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 410
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    .line 411
    new-instance v0, Lorg/json/JSONTokener;

    invoke-direct {v0, v3}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 426
    invoke-static {v2}, LcF;->a(Ljava/io/Closeable;)V

    .line 429
    :goto_0
    return-object v0

    .line 426
    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_1
    invoke-static {v0}, LcF;->a(Ljava/io/Closeable;)V

    :goto_2
    move-object v0, v1

    .line 429
    goto :goto_0

    .line 426
    :catch_1
    move-exception v0

    move-object v2, v1

    :goto_3
    invoke-static {v2}, LcF;->a(Ljava/io/Closeable;)V

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v2, v1

    :goto_4
    invoke-static {v2}, LcF;->a(Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_5
    invoke-static {v2}, LcF;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    goto :goto_4

    :catch_4
    move-exception v0

    goto :goto_3

    :catch_5
    move-exception v0

    move-object v0, v2

    goto :goto_1
.end method

.method public static a()Lsu;
    .locals 1

    .prologue
    .line 161
    sget-object v0, Lsu;->a:Lsu;

    return-object v0
.end method

.method public static c()Ljava/io/File;
    .locals 3

    .prologue
    .line 398
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 399
    new-instance v1, Ljava/io/File;

    const-string v2, "prefs.dat"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 400
    return-object v1
.end method

.method private d()V
    .locals 5

    .prologue
    .line 104
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lsu;->b:Lorg/json/JSONObject;

    .line 105
    iget-object v0, p0, Lsu;->b:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 107
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    const-string v1, ""

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 108
    new-instance v3, Ljava/io/File;

    const-string v1, "prefs.dat"

    invoke-direct {v3, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 110
    const/4 v1, 0x0

    .line 112
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    :try_start_1
    invoke-virtual {v0, v2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 121
    invoke-static {v0}, LcF;->a(Ljava/io/Closeable;)V

    .line 122
    :goto_0
    return-void

    .line 121
    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_1
    invoke-static {v0}, LcF;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_2
    invoke-static {v1}, LcF;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private e()V
    .locals 5

    .prologue
    .line 126
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lsu;->b:Lorg/json/JSONObject;

    .line 127
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    const-string v1, "prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 128
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    .line 129
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 131
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 132
    instance-of v4, v1, Ljava/lang/Boolean;

    if-eqz v4, :cond_1

    .line 133
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Lsu;->b(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 136
    :cond_1
    instance-of v4, v1, Ljava/lang/Integer;

    if-eqz v4, :cond_2

    .line 137
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {p0, v0, v1}, Lsu;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 141
    :cond_2
    instance-of v4, v1, Ljava/lang/Long;

    if-eqz v4, :cond_3

    .line 142
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {p0, v0, v1}, Lsu;->b(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    .line 146
    :cond_3
    instance-of v4, v1, Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 147
    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lsu;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 151
    :cond_4
    if-nez v1, :cond_0

    .line 152
    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lsu;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 157
    :cond_5
    invoke-virtual {p0}, Lsu;->b()V

    .line 158
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 4

    .prologue
    .line 182
    .line 184
    :try_start_0
    iget-object v2, p0, Lsu;->c:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 185
    :try_start_1
    iget-object v0, p0, Lsu;->b:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 186
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 197
    :goto_0
    return-object v0

    .line 186
    :catchall_0
    move-exception v0

    move-object v1, p2

    :goto_1
    :try_start_3
    monitor-exit v2

    throw v0
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    .line 194
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 192
    :goto_2
    invoke-virtual {p0, p1, p2}, Lsu;->b(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 194
    :catch_1
    move-exception v0

    move-object v0, p2

    goto :goto_2

    .line 186
    :catchall_1
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 4

    .prologue
    .line 202
    .line 204
    :try_start_0
    iget-object v2, p0, Lsu;->c:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 205
    :try_start_1
    iget-object v0, p0, Lsu;->b:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 206
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 216
    :goto_0
    return-object v0

    .line 206
    :catchall_0
    move-exception v0

    move-object v1, p2

    :goto_1
    :try_start_3
    monitor-exit v2

    throw v0
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    .line 214
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 212
    :goto_2
    invoke-virtual {p0, p1, p2}, Lsu;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 214
    :catch_1
    move-exception v0

    move-object v0, p2

    goto :goto_2

    .line 206
    :catchall_1
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 4

    .prologue
    .line 251
    .line 253
    :try_start_0
    iget-object v2, p0, Lsu;->c:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 254
    :try_start_1
    iget-object v0, p0, Lsu;->b:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 255
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 263
    :goto_0
    return-object v0

    .line 255
    :catchall_0
    move-exception v0

    move-object v1, p2

    :goto_1
    :try_start_3
    monitor-exit v2

    throw v0
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    .line 262
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 260
    :goto_2
    invoke-virtual {p0, p1, p2}, Lsu;->b(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    .line 262
    :catch_1
    move-exception v0

    move-object v0, p2

    goto :goto_2

    .line 255
    :catchall_1
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 220
    .line 222
    :try_start_0
    iget-object v2, p0, Lsu;->c:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 223
    :try_start_1
    iget-object v0, p0, Lsu;->b:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 224
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 232
    :goto_0
    return-object v0

    .line 224
    :catchall_0
    move-exception v0

    move-object v1, p2

    :goto_1
    :try_start_3
    monitor-exit v2

    throw v0
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    .line 231
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 229
    :goto_2
    invoke-virtual {p0, p1, p2}, Lsu;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 231
    :catch_1
    move-exception v0

    move-object v0, p2

    goto :goto_2

    .line 224
    :catchall_1
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;
    .locals 6

    .prologue
    .line 322
    .line 324
    :try_start_0
    iget-object v2, p0, Lsu;->c:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 325
    :try_start_1
    iget-object v0, p0, Lsu;->b:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 326
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lsu;->b:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-direct {v0, v3, v4}, Ljava/util/Date;-><init>(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 327
    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 337
    :goto_1
    return-object v0

    .line 327
    :catchall_0
    move-exception v0

    move-object v1, p2

    :goto_2
    :try_start_3
    monitor-exit v2

    throw v0
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 336
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 332
    :goto_3
    invoke-virtual {p0, p1, p2}, Lsu;->b(Ljava/lang/String;Ljava/util/Date;)V

    goto :goto_1

    .line 334
    :catch_1
    move-exception v0

    move-object v0, p2

    .line 335
    :goto_4
    invoke-virtual {p0, p1, p2}, Lsu;->b(Ljava/lang/String;Ljava/util/Date;)V

    goto :goto_1

    .line 334
    :catch_2
    move-exception v0

    move-object v0, v1

    goto :goto_4

    .line 336
    :catch_3
    move-exception v0

    move-object v0, p2

    goto :goto_3

    .line 327
    :catchall_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_2

    :cond_0
    move-object v0, p2

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 165
    .line 167
    iget-object v1, p0, Lsu;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 168
    :try_start_0
    iget-object v0, p0, Lsu;->b:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    .line 169
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    return v0

    .line 169
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b()V
    .locals 5

    .prologue
    .line 359
    iget-object v1, p0, Lsu;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 360
    :try_start_0
    iget-object v0, p0, Lsu;->b:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 361
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 363
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    const-string v1, ""

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 364
    new-instance v3, Ljava/io/File;

    const-string v1, "oldprefs.dat"

    invoke-direct {v3, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 365
    new-instance v4, Ljava/io/File;

    const-string v1, "prefs.dat"

    invoke-direct {v4, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 367
    monitor-enter p0

    .line 368
    const/4 v1, 0x0

    .line 371
    :try_start_1
    invoke-virtual {v4, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-nez v0, :cond_0

    .line 375
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 393
    :goto_0
    return-void

    .line 361
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 378
    :cond_0
    :try_start_3
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 379
    :try_start_4
    invoke-virtual {v0, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 380
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 381
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 383
    invoke-virtual {v3}, Ljava/io/File;->deleteOnExit()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 393
    monitor-exit p0

    goto :goto_0

    .line 389
    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_1
    :try_start_5
    invoke-static {v0}, LcF;->a(Ljava/io/Closeable;)V

    .line 391
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    .line 393
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 389
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 176
    iget-object v1, p0, Lsu;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 177
    :try_start_0
    iget-object v0, p0, Lsu;->b:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 178
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2

    .prologue
    .line 268
    :try_start_0
    iget-object v1, p0, Lsu;->c:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    :try_start_1
    iget-object v0, p0, Lsu;->b:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 270
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 276
    :goto_0
    return-void

    .line 270
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1

    throw v0
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 275
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 2

    .prologue
    .line 280
    :try_start_0
    iget-object v1, p0, Lsu;->c:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    :try_start_1
    iget-object v0, p0, Lsu;->b:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 282
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 286
    :goto_0
    return-void

    .line 282
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1

    throw v0
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 285
    :catch_0
    move-exception v0

    .line 284
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 2

    .prologue
    .line 311
    :try_start_0
    iget-object v1, p0, Lsu;->c:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    :try_start_1
    iget-object v0, p0, Lsu;->b:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 313
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 319
    :goto_0
    return-void

    .line 313
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1

    throw v0
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 318
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 290
    :try_start_0
    iget-object v1, p0, Lsu;->c:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    :try_start_1
    iget-object v0, p0, Lsu;->b:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 292
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 298
    :goto_0
    return-void

    .line 292
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1

    throw v0
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 297
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;Ljava/util/Date;)V
    .locals 4

    .prologue
    .line 342
    :try_start_0
    iget-object v1, p0, Lsu;->c:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 343
    :try_start_1
    iget-object v0, p0, Lsu;->b:Lorg/json/JSONObject;

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 344
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 350
    :goto_0
    return-void

    .line 344
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1

    throw v0
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 349
    :catch_0
    move-exception v0

    goto :goto_0
.end method
