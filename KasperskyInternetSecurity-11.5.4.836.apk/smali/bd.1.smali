.class public final Lbd;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[B


# instance fields
.field private final b:Ljava/net/URL;

.field private final c:Z

.field private final d:Ljava/io/File;

.field private final e:Ljava/io/File;

.field private f:Lbf;

.field private g:Lbe;

.field private h:I

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lbd;->a:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x7ft
        0x45t
        0x4ct
        0x46t
    .end array-data
.end method

.method public constructor <init>(Ljava/net/URL;Ljava/io/File;Ljava/io/File;)V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    if-nez p1, :cond_0

    .line 67
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 69
    :cond_0
    iput-object p1, p0, Lbd;->b:Ljava/net/URL;

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbd;->c:Z

    .line 71
    invoke-static {p2}, Lbd;->a(Ljava/io/File;)V

    .line 72
    iput-object p2, p0, Lbd;->d:Ljava/io/File;

    .line 73
    invoke-static {p3}, Lbd;->b(Ljava/io/File;)V

    .line 74
    iput-object p3, p0, Lbd;->e:Ljava/io/File;

    .line 75
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;J[B)Ljava/io/File;
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 280
    sget-object v0, Lbd;->a:[B

    invoke-static {p5, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 284
    const-string v1, "lib"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 286
    const-string v1, "lib"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    :cond_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    const-string v1, ".so"

    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 293
    const-string v1, ".so"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 299
    :cond_2
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lbd;->e:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 300
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_4

    .line 302
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 304
    :cond_4
    invoke-static {v0, p2, p3, p4, v3}, Lbr;->a(Ljava/io/File;Ljava/lang/String;JZ)Ljava/io/File;

    move-result-object v0

    .line 305
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_5

    .line 306
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Can not create file \'%s\'"

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 308
    :cond_5
    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/io/File;
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 245
    .line 251
    :try_start_0
    invoke-virtual {p3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 252
    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentLength()I

    move-result v1

    int-to-long v3, v1

    .line 253
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 259
    :try_start_1
    sget-object v0, Lbd;->a:[B

    array-length v0, v0

    new-array v5, v0, [B

    .line 260
    invoke-virtual {v6, v5}, Ljava/io/InputStream;->read([B)I

    move-result v8

    .line 261
    const-string v0, ".avc"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    const-string v2, "kms90.avc"

    :goto_0
    move-object v0, p0

    move-object v1, p1

    .line 264
    invoke-direct/range {v0 .. v5}, Lbd;->a(Ljava/lang/String;Ljava/lang/String;J[B)Ljava/io/File;

    move-result-object v0

    .line 265
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 266
    const/4 v2, 0x0

    :try_start_2
    invoke-virtual {v1, v5, v2, v8}, Ljava/io/FileOutputStream;->write([BII)V

    .line 267
    invoke-static {v6, v1}, LcF;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 273
    invoke-static {v1}, LcF;->a(Ljava/io/Closeable;)V

    .line 274
    invoke-static {v6}, LcF;->a(Ljava/io/Closeable;)V

    return-object v0

    .line 254
    :catch_0
    move-exception v0

    .line 255
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 256
    new-instance v0, Ljava/net/ConnectException;

    invoke-direct {v0}, Ljava/net/ConnectException;-><init>()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 273
    :catchall_0
    move-exception v0

    move-object v1, v7

    :goto_1
    invoke-static {v7}, LcF;->a(Ljava/io/Closeable;)V

    .line 274
    invoke-static {v1}, LcF;->a(Ljava/io/Closeable;)V

    throw v0

    .line 273
    :catchall_1
    move-exception v0

    move-object v1, v6

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object v7, v1

    move-object v1, v6

    goto :goto_1

    :cond_0
    move-object v2, p2

    goto :goto_0
.end method

.method private a(II)V
    .locals 1

    .prologue
    .line 106
    iput p1, p0, Lbd;->h:I

    .line 107
    iput p2, p0, Lbd;->i:I

    .line 108
    iget-object v0, p0, Lbd;->f:Lbf;

    invoke-interface {v0, p1, p2}, Lbf;->a(II)Z

    .line 109
    return-void
.end method

.method private static a(Ljava/io/File;)V
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 88
    :cond_0
    return-void
.end method

.method private a()Z
    .locals 3

    .prologue
    .line 357
    iget-object v0, p0, Lbd;->f:Lbf;

    const/4 v1, -0x1

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Lbf;->a(II)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/util/Date;Ljava/util/Date;)Z
    .locals 1

    .prologue
    .line 118
    invoke-virtual {p2, p1}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/io/File;)V
    .locals 1

    .prologue
    .line 92
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    .line 95
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 99
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_1

    .line 100
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 102
    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Lbe;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lbd;->g:Lbe;

    .line 79
    return-void
.end method

.method public final a(Lbg;Lbf;)V
    .locals 10

    .prologue
    const/4 v2, 0x1

    const/4 v9, 0x2

    const/4 v6, 0x0

    const/4 v8, 0x4

    .line 123
    iput-object p2, p0, Lbd;->f:Lbf;

    .line 127
    const/4 v4, 0x0

    .line 128
    const/4 v1, 0x0

    .line 132
    const/4 v0, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-direct {p0, v0, v3}, Lbd;->a(II)V

    .line 134
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lbd;->d:Ljava/io/File;

    const-string v5, "index"

    invoke-direct {v0, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Ly;->a(Ljava/io/File;)Ljava/io/Serializable;

    move-result-object v0

    .line 136
    instance-of v3, v0, Lcom/kaspersky/components/updater/Index;

    if-eqz v3, :cond_0

    .line 137
    check-cast v0, Lcom/kaspersky/components/updater/Index;
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object v1, v0

    .line 140
    :cond_0
    if-nez v1, :cond_e

    .line 141
    :try_start_1
    new-instance v3, Lcom/kaspersky/components/updater/Index;

    invoke-direct {v3}, Lcom/kaspersky/components/updater/Index;-><init>()V
    :try_end_1
    .catch Ljava/net/ConnectException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 143
    :goto_0
    :try_start_2
    new-instance v5, Lcom/kaspersky/components/updater/Index;

    iget-object v0, p0, Lbd;->b:Ljava/net/URL;

    invoke-direct {v5, v0, p1}, Lcom/kaspersky/components/updater/Index;-><init>(Ljava/net/URL;Lbg;)V
    :try_end_2
    .catch Ljava/net/ConnectException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 144
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_3
    invoke-direct {p0, v0, v1}, Lbd;->a(II)V

    .line 146
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 147
    const/4 v1, 0x5

    const/4 v4, 0x2

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->add(II)V

    .line 148
    invoke-virtual {v5}, Lcom/kaspersky/components/updater/Index;->getDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 150
    const/4 v0, 0x4

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lbd;->a(II)V
    :try_end_3
    .catch Ljava/net/ConnectException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 210
    :try_start_4
    invoke-virtual {v5}, Lcom/kaspersky/components/updater/Index;->close()V

    .line 213
    if-eqz v3, :cond_1

    .line 214
    invoke-virtual {v3}, Lcom/kaspersky/components/updater/Index;->close()V
    :try_end_4
    .catch Lcom/kaspersky/components/utils/NotEnoughDiskSpaceException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/kaspersky/components/updater/IndexParserException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/security/SignatureException; {:try_start_4 .. :try_end_4} :catch_4

    .line 241
    :cond_1
    :goto_1
    return-void

    .line 155
    :cond_2
    :try_start_5
    invoke-virtual {v5}, Lcom/kaspersky/components/updater/Index;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v6

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kaspersky/components/updater/Index$Entry;

    .line 157
    invoke-direct {p0}, Lbd;->a()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 159
    const/4 v0, 0x4

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lbd;->a(II)V
    :try_end_5
    .catch Ljava/net/ConnectException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 210
    :try_start_6
    invoke-virtual {v5}, Lcom/kaspersky/components/updater/Index;->close()V

    .line 213
    if-eqz v3, :cond_1

    .line 214
    invoke-virtual {v3}, Lcom/kaspersky/components/updater/Index;->close()V
    :try_end_6
    .catch Lcom/kaspersky/components/utils/NotEnoughDiskSpaceException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lcom/kaspersky/components/updater/IndexParserException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/security/SignatureException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_1

    .line 217
    :catch_0
    move-exception v0

    .line 219
    invoke-virtual {v0}, Lcom/kaspersky/components/utils/NotEnoughDiskSpaceException;->printStackTrace()V

    .line 220
    const/16 v0, 0x8

    invoke-direct {p0, v8, v0}, Lbd;->a(II)V

    goto :goto_1

    .line 164
    :cond_3
    :try_start_7
    invoke-virtual {v0}, Lcom/kaspersky/components/updater/Index$Entry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/kaspersky/components/updater/Index;->get(Ljava/lang/String;)Lcom/kaspersky/components/updater/Index$Entry;

    move-result-object v6

    invoke-virtual {v6}, Lcom/kaspersky/components/updater/Index$Entry;->getDate()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v0}, Lcom/kaspersky/components/updater/Index$Entry;->getDate()Ljava/util/Date;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lbd;->a(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v0}, Lcom/kaspersky/components/updater/Index$Entry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/kaspersky/components/updater/Index;->findHash(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/kaspersky/components/updater/Index;->containsHash([B)Z

    move-result v6

    if-nez v6, :cond_d

    .line 167
    :cond_4
    invoke-virtual {v0}, Lcom/kaspersky/components/updater/Index$Entry;->getComponent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/kaspersky/components/updater/Index$Entry;->getName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lbd;->b:Ljava/net/URL;

    invoke-virtual {v0, v7}, Lcom/kaspersky/components/updater/Index$Entry;->getUrl(Ljava/net/URL;)Ljava/net/URL;

    move-result-object v7

    invoke-direct {p0, v1, v6, v7}, Lbd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/io/File;

    move-result-object v1

    .line 168
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_7
    .catch Ljava/net/ConnectException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 171
    :try_start_8
    invoke-virtual {v0}, Lcom/kaspersky/components/updater/Index$Entry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1, v6}, Lcom/kaspersky/components/updater/Index;->verifyAndRemember(Ljava/lang/String;Ljava/io/InputStream;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 172
    new-instance v1, Ljava/security/SignatureException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "File "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lbd;->b:Ljava/net/URL;

    invoke-virtual {v0, v4}, Lcom/kaspersky/components/updater/Index$Entry;->getUrl(Ljava/net/URL;)Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " has invalid signature"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 176
    :catchall_0
    move-exception v0

    :try_start_9
    invoke-static {v6}, LcF;->a(Ljava/io/Closeable;)V

    throw v0
    :try_end_9
    .catch Ljava/net/ConnectException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 203
    :catch_1
    move-exception v0

    move-object v1, v3

    move-object v2, v5

    .line 204
    :goto_3
    :try_start_a
    invoke-virtual {v0}, Ljava/net/ConnectException;->printStackTrace()V

    .line 205
    const/4 v0, 0x4

    const/4 v3, 0x5

    invoke-direct {p0, v0, v3}, Lbd;->a(II)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 210
    if-eqz v2, :cond_5

    .line 211
    :try_start_b
    invoke-virtual {v2}, Lcom/kaspersky/components/updater/Index;->close()V

    .line 213
    :cond_5
    if-eqz v1, :cond_1

    .line 214
    invoke-virtual {v1}, Lcom/kaspersky/components/updater/Index;->close()V
    :try_end_b
    .catch Lcom/kaspersky/components/utils/NotEnoughDiskSpaceException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2
    .catch Lcom/kaspersky/components/updater/IndexParserException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/security/SignatureException; {:try_start_b .. :try_end_b} :catch_4

    goto/16 :goto_1

    .line 223
    :catch_2
    move-exception v0

    .line 225
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 226
    invoke-direct {p0, v8, v9}, Lbd;->a(II)V

    goto/16 :goto_1

    .line 176
    :cond_6
    :try_start_c
    invoke-static {v6}, LcF;->a(Ljava/io/Closeable;)V

    move v0, v2

    :goto_4
    move v1, v0

    .line 180
    goto/16 :goto_2

    .line 182
    :cond_7
    if-eqz v1, :cond_c

    .line 183
    const-wide/16 v0, 0x0

    .line 184
    iget-object v2, p0, Lbd;->g:Lbe;

    if-eqz v2, :cond_8

    .line 185
    iget-object v0, p0, Lbd;->g:Lbe;

    invoke-interface {v0}, Lbe;->a()J

    move-result-wide v0

    .line 187
    :cond_8
    invoke-virtual {v5, v0, v1}, Lcom/kaspersky/components/updater/Index;->setMobileThreatsCount(J)V

    .line 188
    invoke-virtual {v5, v3}, Lcom/kaspersky/components/updater/Index;->mergeHash(Lcom/kaspersky/components/updater/Index;)V

    .line 189
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lbd;->e:Ljava/io/File;

    const-string v2, "index"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0, v5}, Ly;->a(Ljava/io/File;Ljava/io/Serializable;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 191
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lbd;->a(II)V
    :try_end_c
    .catch Ljava/net/ConnectException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 210
    :goto_5
    :try_start_d
    invoke-virtual {v5}, Lcom/kaspersky/components/updater/Index;->close()V

    .line 213
    if-eqz v3, :cond_1

    .line 214
    invoke-virtual {v3}, Lcom/kaspersky/components/updater/Index;->close()V
    :try_end_d
    .catch Lcom/kaspersky/components/utils/NotEnoughDiskSpaceException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2
    .catch Lcom/kaspersky/components/updater/IndexParserException; {:try_start_d .. :try_end_d} :catch_3
    .catch Ljava/security/SignatureException; {:try_start_d .. :try_end_d} :catch_4

    goto/16 :goto_1

    .line 229
    :catch_3
    move-exception v0

    .line 231
    invoke-virtual {v0}, Lcom/kaspersky/components/updater/IndexParserException;->printStackTrace()V

    .line 232
    invoke-direct {p0, v8, v9}, Lbd;->a(II)V

    goto/16 :goto_1

    .line 196
    :cond_9
    const/4 v0, 0x4

    const/4 v1, 0x2

    :try_start_e
    invoke-direct {p0, v0, v1}, Lbd;->a(II)V
    :try_end_e
    .catch Ljava/net/ConnectException; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto :goto_5

    .line 210
    :catchall_1
    move-exception v0

    :goto_6
    if-eqz v5, :cond_a

    .line 211
    :try_start_f
    invoke-virtual {v5}, Lcom/kaspersky/components/updater/Index;->close()V

    .line 213
    :cond_a
    if-eqz v3, :cond_b

    .line 214
    invoke-virtual {v3}, Lcom/kaspersky/components/updater/Index;->close()V

    :cond_b
    throw v0
    :try_end_f
    .catch Lcom/kaspersky/components/utils/NotEnoughDiskSpaceException; {:try_start_f .. :try_end_f} :catch_0
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_2
    .catch Lcom/kaspersky/components/updater/IndexParserException; {:try_start_f .. :try_end_f} :catch_3
    .catch Ljava/security/SignatureException; {:try_start_f .. :try_end_f} :catch_4

    .line 235
    :catch_4
    move-exception v0

    .line 237
    invoke-virtual {v0}, Ljava/security/SignatureException;->printStackTrace()V

    .line 238
    const/4 v0, 0x6

    invoke-direct {p0, v8, v0}, Lbd;->a(II)V

    goto/16 :goto_1

    .line 200
    :cond_c
    const/4 v0, 0x4

    const/4 v1, 0x1

    :try_start_10
    invoke-direct {p0, v0, v1}, Lbd;->a(II)V
    :try_end_10
    .catch Ljava/net/ConnectException; {:try_start_10 .. :try_end_10} :catch_1
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    goto :goto_5

    .line 210
    :catchall_2
    move-exception v0

    move-object v3, v1

    move-object v5, v4

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object v3, v1

    move-object v5, v4

    goto :goto_6

    :catchall_4
    move-exception v0

    move-object v5, v4

    goto :goto_6

    :catchall_5
    move-exception v0

    move-object v3, v1

    move-object v5, v2

    goto :goto_6

    .line 203
    :catch_5
    move-exception v0

    move-object v2, v4

    goto/16 :goto_3

    :catch_6
    move-exception v0

    move-object v1, v3

    move-object v2, v4

    goto/16 :goto_3

    :cond_d
    move v0, v1

    goto :goto_4

    :cond_e
    move-object v3, v1

    goto/16 :goto_0
.end method
