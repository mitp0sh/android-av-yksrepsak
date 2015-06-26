.class public final LsE;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:Ljava/lang/String;

.field private static final d:Ljava/lang/String;


# instance fields
.field private final c:Ljava/lang/String;

.field private e:Z

.field private final f:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 29
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "gnustl_shared"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "kl_uuid"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "packed_io"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "dns_client"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "app_services"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "kisa_native"

    aput-object v2, v0, v1

    sput-object v0, LsE;->a:[Ljava/lang/String;

    .line 41
    invoke-static {}, Lcom/kms/kmsshared/utils/Architecture;->a()Lcom/kms/kmsshared/utils/Architecture$ARCH_ABI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kms/kmsshared/utils/Architecture$ARCH_ABI;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, LsE;->b:Ljava/lang/String;

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "lib"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, LsE;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, LsE;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    .line 53
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LbB;->b(Ljava/lang/String;)J

    move-result-wide v0

    .line 55
    new-instance v2, Lcom/kms/kmsshared/utils/KisUserException;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0704bf

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/kms/kmsshared/utils/KisUserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 57
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "native"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LsE;->c:Ljava/lang/String;

    .line 58
    invoke-static {}, Lsr;->h()Lsj;

    move-result-object v0

    invoke-virtual {v0}, Lsj;->z()Z

    move-result v0

    iput-boolean v0, p0, LsE;->e:Z

    .line 59
    iput-object p1, p0, LsE;->f:Landroid/content/Context;

    .line 60
    return-void
.end method

.method private static a(Ljava/io/File;)V
    .locals 7

    .prologue
    .line 162
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 163
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    aget-object v3, v1, v0

    .line 164
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 165
    invoke-static {v3}, LsE;->a(Ljava/io/File;)V

    .line 163
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 167
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_0

    .line 168
    const-string v4, "LoadNativesHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Cannot delete "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 173
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_3

    .line 174
    const-string v0, "LoadNativesHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot delete "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_3
    return-void
.end method

.method private static a(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 239
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 241
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 242
    invoke-static {v1}, LsE;->b(Ljava/io/File;)V

    .line 245
    :cond_0
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {p0, p1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 246
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 249
    :try_start_0
    invoke-static {v1, v2}, LcF;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V

    .line 252
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 253
    return-void

    .line 251
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V

    .line 252
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    throw v0
.end method

.method private b()V
    .locals 7

    .prologue
    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, LsE;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "lib"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 146
    sget-object v2, LsE;->a:[Ljava/lang/String;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 147
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ".so"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 148
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 146
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 150
    :cond_0
    return-void
.end method

.method private static b(Ljava/io/File;)V
    .locals 3

    .prologue
    .line 257
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    .line 258
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can not create dir "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 259
    :cond_0
    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 154
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, LsE;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 155
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    .line 156
    if-eqz v1, :cond_0

    .line 157
    invoke-static {v0}, LsE;->a(Ljava/io/File;)V

    .line 159
    :cond_0
    return-void
.end method

.method private d()V
    .locals 10

    .prologue
    .line 187
    iget-object v0, p0, LsE;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 189
    invoke-static {v0}, LbC;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 191
    new-instance v3, Ljava/util/zip/ZipFile;

    invoke-direct {v3, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 195
    const-wide/16 v1, 0x0

    .line 196
    :try_start_0
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    .line 199
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    sget-object v6, LsE;->d:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 200
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v5

    .line 201
    const-wide/16 v7, -0x1

    cmp-long v0, v5, v7

    if-eqz v0, :cond_5

    .line 202
    add-long v0, v1, v5

    :goto_1
    move-wide v1, v0

    .line 205
    goto :goto_0

    .line 208
    :cond_0
    iget-object v0, p0, LsE;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LbB;->b(Ljava/lang/String;)J

    move-result-wide v4

    .line 209
    cmp-long v0, v4, v1

    if-gez v0, :cond_1

    .line 211
    new-instance v0, Lcom/kms/kmsshared/utils/KisUserException;

    iget-object v6, p0, LsE;->f:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0704bf

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    sub-long/2addr v1, v4

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kms/kmsshared/utils/KisUserException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V

    throw v0

    .line 216
    :cond_1
    :try_start_1
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v1

    :cond_2
    :goto_2
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 217
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    .line 218
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v4, LsE;->d:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 219
    iget-object v2, p0, LsE;->c:Ljava/lang/String;

    invoke-static {v3, v0, v2}, LsE;->a(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 224
    :cond_3
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V

    .line 227
    :cond_4
    return-void

    :cond_5
    move-wide v0, v1

    goto :goto_1
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 231
    iget-boolean v0, p0, LsE;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, LsE;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, LsE;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "lib"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, LsE;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 82
    if-eqz p1, :cond_0

    .line 84
    invoke-static {}, Lsr;->h()Lsj;

    move-result-object v0

    .line 86
    iget-boolean v2, p0, LsE;->e:Z

    if-eqz v2, :cond_1

    .line 88
    invoke-virtual {v0}, Lsj;->y()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 89
    invoke-direct {p0}, LsE;->c()V

    .line 91
    const-class v2, Lsj;

    monitor-enter v2

    .line 92
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v0, v3}, Lsj;->l(Z)V

    .line 93
    invoke-virtual {v0}, Lsj;->g_()V

    .line 94
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    :cond_0
    :goto_0
    iget-boolean v0, p0, LsE;->e:Z

    if-eqz v0, :cond_3

    .line 114
    :try_start_1
    sget-object v2, LsE;->a:[Ljava/lang/String;

    array-length v3, v2

    move v0, v1

    :goto_1
    if-ge v0, v3, :cond_2

    aget-object v4, v2, v0

    .line 115
    invoke-static {v4}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0

    .line 114
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 101
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, LsE;->e:Z

    .line 102
    const-class v2, Lsj;

    monitor-enter v2

    .line 103
    :try_start_2
    iget-boolean v3, p0, LsE;->e:Z

    invoke-virtual {v0, v3}, Lsj;->m(Z)V

    .line 104
    invoke-virtual {v0}, Lsj;->g_()V

    .line 105
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 106
    invoke-direct {p0}, LsE;->c()V

    goto :goto_0

    .line 105
    :catchall_1
    move-exception v0

    monitor-exit v2

    throw v0

    .line 117
    :catch_0
    move-exception v0

    .line 118
    const-string v2, "LoadNativesHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error. Cannot load libs from default locations. "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :try_start_3
    invoke-direct {p0}, LsE;->d()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 128
    iput-boolean v1, p0, LsE;->e:Z

    .line 130
    invoke-direct {p0}, LsE;->b()V

    .line 132
    invoke-static {}, Lsr;->h()Lsj;

    move-result-object v0

    .line 133
    const-class v1, Lsj;

    monitor-enter v1

    .line 134
    :try_start_4
    iget-boolean v2, p0, LsE;->e:Z

    invoke-virtual {v0, v2}, Lsj;->m(Z)V

    .line 135
    invoke-virtual {v0}, Lsj;->g_()V

    .line 136
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 141
    :cond_2
    :goto_2
    return-void

    .line 122
    :catch_1
    move-exception v0

    .line 123
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 125
    new-instance v1, Lcom/kms/kmsshared/utils/KisUserException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/kms/kmsshared/utils/KisUserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 136
    :catchall_2
    move-exception v0

    monitor-exit v1

    throw v0

    .line 137
    :cond_3
    invoke-direct {p0}, LsE;->b()V

    goto :goto_2
.end method
