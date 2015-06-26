.class final LiL;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljl;


# instance fields
.field private synthetic a:LiK;


# direct methods
.method private constructor <init>(LiK;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, LiL;->a:LiK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(LiK;B)V
    .locals 0

    .prologue
    .line 217
    invoke-direct {p0, p1}, LiL;-><init>(LiK;)V

    return-void
.end method

.method private a(Ljava/io/DataOutputStream;[B)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 246
    const/16 v0, 0x2a

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 247
    if-nez p2, :cond_1

    move v0, v1

    .line 248
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 249
    if-lez v0, :cond_0

    .line 250
    invoke-static {p2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 251
    iget-object v2, p0, LiL;->a:LiK;

    invoke-static {v2}, LiK;->a(LiK;)[B

    move-result-object v2

    invoke-virtual {p1, v2, v1, v0}, Ljava/io/DataOutputStream;->write([BII)V

    .line 253
    :cond_0
    return-void

    .line 247
    :cond_1
    array-length v0, p2

    goto :goto_0
.end method

.method private static a(Ljava/io/DataInputStream;)[B
    .locals 4

    .prologue
    .line 223
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_0

    .line 224
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Data corrupted"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 226
    :cond_0
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 227
    const/4 v0, 0x0

    .line 228
    if-lez v1, :cond_1

    .line 229
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 232
    :try_start_0
    new-array v0, v1, [B

    .line 233
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3, v1}, Ljava/io/DataInputStream;->read([BII)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    if-eq v1, v2, :cond_1

    .line 239
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Data corrupted"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 234
    :catch_0
    move-exception v0

    .line 235
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Bad format"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 242
    :cond_1
    return-object v0
.end method


# virtual methods
.method public final a(Ljava/io/InputStream;)V
    .locals 6

    .prologue
    const/4 v5, 0x4

    .line 257
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 258
    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 259
    iget-object v1, p0, LiL;->a:LiK;

    invoke-static {v1}, LiK;->b(LiK;)LiI;

    move-result-object v1

    invoke-virtual {v1, v0}, LiI;->a(Ljava/io/InputStream;)V

    .line 260
    iget-object v1, p0, LiL;->a:LiK;

    invoke-static {v1}, LiK;->b(LiK;)LiI;

    move-result-object v1

    invoke-virtual {v1}, LiI;->b()I

    move-result v1

    if-nez v1, :cond_0

    .line 261
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->reset()V

    .line 264
    :cond_0
    iget-object v1, p0, LiL;->a:LiK;

    const/4 v2, 0x1

    invoke-static {v1, v2}, LiK;->a(LiK;Z)Z

    .line 265
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 268
    iget-object v0, p0, LiL;->a:LiK;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v2

    invoke-static {v0, v2}, LiK;->b(LiK;Z)Z

    .line 269
    iget-object v0, p0, LiL;->a:LiK;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, LiK;->a(LiK;J)J

    .line 270
    iget-object v0, p0, LiL;->a:LiK;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, LiK;->b(LiK;J)J

    .line 271
    iget-object v0, p0, LiL;->a:LiK;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, LiK;->c(LiK;J)J

    .line 272
    iget-object v0, p0, LiL;->a:LiK;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, LiK;->d(LiK;J)J

    .line 273
    iget-object v0, p0, LiL;->a:LiK;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, LiK;->a(LiK;Ljava/lang/String;)Ljava/lang/String;

    .line 274
    iget-object v0, p0, LiL;->a:LiK;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, LiK;->b(LiK;Ljava/lang/String;)Ljava/lang/String;

    .line 275
    iget-object v0, p0, LiL;->a:LiK;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, LiK;->e(LiK;J)J

    .line 277
    iget-object v0, p0, LiL;->a:LiK;

    invoke-static {v0}, LiK;->b(LiK;)LiI;

    move-result-object v0

    invoke-virtual {v0}, LiI;->a()LiJ;

    move-result-object v0

    .line 280
    invoke-virtual {v0}, LiJ;->a()I

    move-result v2

    if-lt v2, v5, :cond_1

    invoke-virtual {v0}, LiJ;->b()I

    move-result v2

    if-lt v2, v5, :cond_1

    .line 282
    iget-object v2, p0, LiL;->a:LiK;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, LiK;->f(LiK;J)J

    .line 283
    iget-object v2, p0, LiL;->a:LiK;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v3

    invoke-static {v2, v3}, LiK;->c(LiK;Z)Z

    .line 284
    iget-object v2, p0, LiL;->a:LiK;

    invoke-static {v1}, LiL;->a(Ljava/io/DataInputStream;)[B

    move-result-object v3

    invoke-static {v2, v3}, LiK;->a(LiK;[B)[B

    .line 288
    :cond_1
    invoke-virtual {v0}, LiJ;->a()I

    move-result v2

    if-lt v2, v5, :cond_2

    invoke-virtual {v0}, LiJ;->b()I

    move-result v2

    if-ne v2, v5, :cond_2

    invoke-virtual {v0}, LiJ;->c()I

    move-result v0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_2

    .line 290
    iget-object v0, p0, LiL;->a:LiK;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, LiK;->g(LiK;J)J

    .line 292
    :cond_2
    return-void
.end method

.method public final a(Ljava/io/OutputStream;)V
    .locals 4

    .prologue
    .line 296
    iget-object v0, p0, LiL;->a:LiK;

    invoke-static {v0}, LiK;->b(LiK;)LiI;

    move-result-object v0

    invoke-virtual {v0, p1}, LiI;->a(Ljava/io/OutputStream;)V

    .line 297
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 298
    iget-object v0, p0, LiL;->a:LiK;

    invoke-static {v0}, LiK;->c(LiK;)Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 299
    iget-object v0, p0, LiL;->a:LiK;

    invoke-static {v0}, LiK;->d(LiK;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 300
    iget-object v0, p0, LiL;->a:LiK;

    invoke-static {v0}, LiK;->e(LiK;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 301
    iget-object v0, p0, LiL;->a:LiK;

    invoke-static {v0}, LiK;->f(LiK;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 302
    iget-object v0, p0, LiL;->a:LiK;

    invoke-static {v0}, LiK;->g(LiK;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 303
    iget-object v0, p0, LiL;->a:LiK;

    invoke-static {v0}, LiK;->h(LiK;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 304
    iget-object v0, p0, LiL;->a:LiK;

    invoke-static {v0}, LiK;->i(LiK;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    :goto_1
    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 305
    iget-object v0, p0, LiL;->a:LiK;

    invoke-static {v0}, LiK;->j(LiK;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 306
    iget-object v0, p0, LiL;->a:LiK;

    invoke-static {v0}, LiK;->k(LiK;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 307
    iget-object v0, p0, LiL;->a:LiK;

    invoke-static {v0}, LiK;->l(LiK;)Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 308
    iget-object v0, p0, LiL;->a:LiK;

    invoke-static {v0}, LiK;->a(LiK;)[B

    move-result-object v0

    invoke-direct {p0, v1, v0}, LiL;->a(Ljava/io/DataOutputStream;[B)V

    .line 309
    iget-object v0, p0, LiL;->a:LiK;

    invoke-static {v0}, LiK;->m(LiK;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 310
    return-void

    .line 303
    :cond_0
    iget-object v0, p0, LiL;->a:LiK;

    invoke-static {v0}, LiK;->h(LiK;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 304
    :cond_1
    iget-object v0, p0, LiL;->a:LiK;

    invoke-static {v0}, LiK;->i(LiK;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
