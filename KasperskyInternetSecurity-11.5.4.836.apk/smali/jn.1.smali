.class final Ljn;
.super Ljp;
.source "SourceFile"


# static fields
.field private static final e:[B


# instance fields
.field private f:Ljava/util/List;

.field private g:Ljava/util/List;

.field private h:Ljava/util/List;

.field private i:Ljava/util/List;

.field private j:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Ljn;->e:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x50t
        0x4bt
        0x3t
        0x4t
    .end array-data
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    .prologue
    .line 40
    invoke-static {}, Lhb;->a()Lhb;

    move-result-object v0

    invoke-virtual {v0}, Lhb;->b()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljp;-><init>(Ljava/io/File;Ljava/io/File;)V

    .line 41
    return-void
.end method

.method private a(Ljava/io/File;)V
    .locals 7

    .prologue
    .line 223
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_3

    aget-object v4, v2, v1

    .line 225
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 228
    const-string v5, "."

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, ".j"

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 230
    :cond_0
    invoke-static {v4}, Ljn;->b(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 232
    const-string v5, ".j"

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 234
    const-string v5, ".j"

    const-string v6, ".jar"

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 239
    :goto_1
    new-instance v5, Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    invoke-direct {v5, v6, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 240
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 236
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ".jar"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 223
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 245
    :cond_3
    return-void
.end method

.method private static b(Ljava/io/File;)Z
    .locals 3

    .prologue
    .line 249
    sget-object v0, Ljn;->e:[B

    array-length v0, v0

    new-array v0, v0, [B

    .line 250
    const/4 v2, 0x0

    .line 253
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    :try_start_1
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 257
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 260
    sget-object v1, Ljn;->e:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0

    .line 257
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method private g()I
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 211
    invoke-static {}, Lgy;->a()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 212
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".so"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 213
    invoke-virtual {v4, v7, v7}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 211
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 217
    :cond_1
    invoke-super {p0}, Ljp;->d()V

    .line 218
    return v1
.end method


# virtual methods
.method final a()I
    .locals 8

    .prologue
    const/4 v0, 0x2

    .line 45
    iget-object v1, p0, Ljn;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 46
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Ljn;->a:Ljava/io/File;

    const-string v4, "EMUM"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 47
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 48
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 52
    :cond_0
    :try_start_0
    invoke-direct {p0, v2}, Ljn;->a(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    invoke-static {}, Lgy;->a()Ljava/io/File;

    move-result-object v3

    invoke-static {v2, v3}, Lbh;->a(Ljava/io/File;Ljava/io/File;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Ljn;->b:Ljava/util/List;

    .line 59
    new-instance v2, Ljava/io/File;

    const-string v3, "KDBM"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    new-instance v3, Ljava/io/File;

    const-string v4, "KMSH"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    new-instance v4, Ljava/io/File;

    const-string v5, "SMH"

    invoke-direct {v4, v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    new-instance v5, Ljava/io/File;

    const-string v6, "KMSH,SMH"

    invoke-direct {v5, v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    new-instance v6, Ljava/io/File;

    const-string v7, "SMH,KMSH"

    invoke-direct {v6, v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_2

    .line 67
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 70
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_4

    .line 71
    :cond_3
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    .line 74
    :cond_4
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_6

    .line 75
    :cond_5
    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    .line 79
    :cond_6
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_8

    .line 80
    :cond_7
    invoke-virtual {v5}, Ljava/io/File;->mkdir()Z

    .line 83
    :cond_8
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_a

    .line 84
    :cond_9
    invoke-virtual {v6}, Ljava/io/File;->mkdir()Z

    .line 87
    :cond_a
    iget-object v1, p0, Ljn;->c:Ljava/io/File;

    invoke-static {v2, v1}, Lbh;->a(Ljava/io/File;Ljava/io/File;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Ljn;->f:Ljava/util/List;

    .line 88
    iget-object v1, p0, Ljn;->f:Ljava/util/List;

    if-nez v1, :cond_c

    .line 111
    :cond_b
    :goto_0
    return v0

    .line 92
    :cond_c
    iget-object v1, p0, Ljn;->c:Ljava/io/File;

    invoke-static {v3, v1}, Lbh;->a(Ljava/io/File;Ljava/io/File;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Ljn;->g:Ljava/util/List;

    .line 93
    iget-object v1, p0, Ljn;->g:Ljava/util/List;

    if-eqz v1, :cond_b

    .line 97
    iget-object v1, p0, Ljn;->c:Ljava/io/File;

    invoke-static {v4, v1}, Lbh;->a(Ljava/io/File;Ljava/io/File;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Ljn;->h:Ljava/util/List;

    .line 98
    iget-object v1, p0, Ljn;->h:Ljava/util/List;

    if-eqz v1, :cond_b

    .line 102
    iget-object v1, p0, Ljn;->c:Ljava/io/File;

    invoke-static {v5, v1}, Lbh;->a(Ljava/io/File;Ljava/io/File;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Ljn;->i:Ljava/util/List;

    .line 103
    iget-object v1, p0, Ljn;->i:Ljava/util/List;

    if-eqz v1, :cond_b

    .line 107
    iget-object v1, p0, Ljn;->c:Ljava/io/File;

    invoke-static {v6, v1}, Lbh;->a(Ljava/io/File;Ljava/io/File;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Ljn;->j:Ljava/util/List;

    .line 108
    iget-object v1, p0, Ljn;->j:Ljava/util/List;

    if-eqz v1, :cond_b

    .line 111
    const/4 v0, 0x7

    goto :goto_0

    .line 54
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method final b()V
    .locals 2

    .prologue
    .line 116
    iget v0, p0, Ljn;->d:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_5

    .line 118
    iget-object v0, p0, Ljn;->g:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Ljn;->g:Ljava/util/List;

    iget-object v1, p0, Ljn;->c:Ljava/io/File;

    invoke-static {v0, v1}, Lbh;->a(Ljava/util/List;Ljava/io/File;)V

    .line 121
    :cond_0
    iget-object v0, p0, Ljn;->h:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Ljn;->h:Ljava/util/List;

    iget-object v1, p0, Ljn;->c:Ljava/io/File;

    invoke-static {v0, v1}, Lbh;->a(Ljava/util/List;Ljava/io/File;)V

    .line 124
    :cond_1
    iget-object v0, p0, Ljn;->i:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 125
    iget-object v0, p0, Ljn;->i:Ljava/util/List;

    iget-object v1, p0, Ljn;->c:Ljava/io/File;

    invoke-static {v0, v1}, Lbh;->a(Ljava/util/List;Ljava/io/File;)V

    .line 127
    :cond_2
    iget-object v0, p0, Ljn;->j:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 128
    iget-object v0, p0, Ljn;->j:Ljava/util/List;

    iget-object v1, p0, Ljn;->c:Ljava/io/File;

    invoke-static {v0, v1}, Lbh;->a(Ljava/util/List;Ljava/io/File;)V

    .line 131
    :cond_3
    iget-object v0, p0, Ljn;->f:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 132
    iget-object v0, p0, Ljn;->f:Ljava/util/List;

    invoke-static {v0}, Lbh;->a(Ljava/util/List;)V

    .line 153
    :cond_4
    :goto_0
    return-void

    .line 136
    :cond_5
    iget-object v0, p0, Ljn;->g:Ljava/util/List;

    if-eqz v0, :cond_6

    .line 137
    iget-object v0, p0, Ljn;->g:Ljava/util/List;

    invoke-static {v0}, Lbh;->a(Ljava/util/List;)V

    .line 139
    :cond_6
    iget-object v0, p0, Ljn;->h:Ljava/util/List;

    if-eqz v0, :cond_7

    .line 140
    iget-object v0, p0, Ljn;->h:Ljava/util/List;

    invoke-static {v0}, Lbh;->a(Ljava/util/List;)V

    .line 142
    :cond_7
    iget-object v0, p0, Ljn;->i:Ljava/util/List;

    if-eqz v0, :cond_8

    .line 143
    iget-object v0, p0, Ljn;->i:Ljava/util/List;

    invoke-static {v0}, Lbh;->a(Ljava/util/List;)V

    .line 145
    :cond_8
    iget-object v0, p0, Ljn;->j:Ljava/util/List;

    if-eqz v0, :cond_9

    .line 146
    iget-object v0, p0, Ljn;->j:Ljava/util/List;

    invoke-static {v0}, Lbh;->a(Ljava/util/List;)V

    .line 149
    :cond_9
    iget-object v0, p0, Ljn;->f:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 150
    iget-object v0, p0, Ljn;->f:Ljava/util/List;

    iget-object v1, p0, Ljn;->c:Ljava/io/File;

    invoke-static {v0, v1}, Lbh;->a(Ljava/util/List;Ljava/io/File;)V

    goto :goto_0
.end method

.method final c()V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Ljn;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Ljn;->f:Ljava/util/List;

    iget-object v1, p0, Ljn;->c:Ljava/io/File;

    invoke-static {v0, v1}, Lbh;->a(Ljava/util/List;Ljava/io/File;)V

    .line 160
    :cond_0
    iget-object v0, p0, Ljn;->g:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 161
    iget-object v0, p0, Ljn;->g:Ljava/util/List;

    iget-object v1, p0, Ljn;->c:Ljava/io/File;

    invoke-static {v0, v1}, Lbh;->a(Ljava/util/List;Ljava/io/File;)V

    .line 163
    :cond_1
    iget-object v0, p0, Ljn;->h:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 164
    iget-object v0, p0, Ljn;->h:Ljava/util/List;

    iget-object v1, p0, Ljn;->c:Ljava/io/File;

    invoke-static {v0, v1}, Lbh;->a(Ljava/util/List;Ljava/io/File;)V

    .line 166
    :cond_2
    iget-object v0, p0, Ljn;->i:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 167
    iget-object v0, p0, Ljn;->i:Ljava/util/List;

    iget-object v1, p0, Ljn;->c:Ljava/io/File;

    invoke-static {v0, v1}, Lbh;->a(Ljava/util/List;Ljava/io/File;)V

    .line 169
    :cond_3
    iget-object v0, p0, Ljn;->j:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 170
    iget-object v0, p0, Ljn;->j:Ljava/util/List;

    iget-object v1, p0, Ljn;->c:Ljava/io/File;

    invoke-static {v0, v1}, Lbh;->a(Ljava/util/List;Ljava/io/File;)V

    .line 172
    :cond_4
    return-void
.end method

.method final d()V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Ljn;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Ljn;->f:Ljava/util/List;

    invoke-static {v0}, Lbh;->a(Ljava/util/List;)V

    .line 179
    :cond_0
    iget-object v0, p0, Ljn;->g:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 180
    iget-object v0, p0, Ljn;->g:Ljava/util/List;

    invoke-static {v0}, Lbh;->a(Ljava/util/List;)V

    .line 182
    :cond_1
    iget-object v0, p0, Ljn;->h:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 183
    iget-object v0, p0, Ljn;->h:Ljava/util/List;

    invoke-static {v0}, Lbh;->a(Ljava/util/List;)V

    .line 185
    :cond_2
    iget-object v0, p0, Ljn;->i:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 186
    iget-object v0, p0, Ljn;->i:Ljava/util/List;

    invoke-static {v0}, Lbh;->a(Ljava/util/List;)V

    .line 188
    :cond_3
    iget-object v0, p0, Ljn;->j:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 189
    iget-object v0, p0, Ljn;->j:Ljava/util/List;

    invoke-static {v0}, Lbh;->a(Ljava/util/List;)V

    .line 191
    :cond_4
    return-void
.end method

.method final e()I
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Ljn;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    invoke-direct {p0}, Ljn;->g()I

    .line 202
    invoke-static {}, Lhb;->a()Lhb;

    move-result-object v0

    iget-object v1, p0, Ljn;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    invoke-virtual {v0}, Lhb;->c()I

    move-result v0

    return v0
.end method
