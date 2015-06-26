.class final Lju;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbf;


# static fields
.field private static final a:Ljava/lang/String;

.field private static i:Ljava/lang/String;

.field private static j:Ljava/lang/String;

.field private static k:Ljava/lang/String;


# instance fields
.field private final b:Ljava/util/concurrent/locks/ReentrantLock;

.field private final c:Ljava/io/File;

.field private final d:Ljava/io/File;

.field private e:Ljq;

.field private f:Ljp;

.field private g:Z

.field private h:Ljava/net/URL;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lju;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lju;->a:Ljava/lang/String;

    .line 49
    const-string v0, "kc_kfp_sdk_m.xms"

    sput-object v0, Lju;->i:Ljava/lang/String;

    .line 50
    const-string v0, "kh_kfp_sdk_m.xms"

    sput-object v0, Lju;->j:Ljava/lang/String;

    .line 51
    const-string v0, "ksncliwin32keys.dat"

    sput-object v0, Lju;->k:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lju;->b:Ljava/util/concurrent/locks/ReentrantLock;

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lju;->g:Z

    .line 54
    invoke-static {}, Lgy;->a()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lju;->c:Ljava/io/File;

    .line 55
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lju;->c:Ljava/io/File;

    const-string v2, "tmp"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lju;->d:Ljava/io/File;

    .line 56
    iget-object v0, p0, Lju;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 57
    return-void
.end method

.method private a()I
    .locals 5

    .prologue
    .line 168
    iget-boolean v0, p0, Lju;->g:Z

    if-nez v0, :cond_0

    .line 169
    const/4 v0, 0x0

    .line 179
    :goto_0
    return v0

    .line 172
    :cond_0
    new-instance v0, Ljo;

    iget-object v1, p0, Lju;->d:Ljava/io/File;

    sget-object v2, Lju;->i:Ljava/lang/String;

    sget-object v3, Lju;->j:Ljava/lang/String;

    sget-object v4, Lju;->k:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Ljo;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-virtual {v0}, Ljp;->f()I

    move-result v0

    goto :goto_0
.end method

.method private static a(Ljava/io/File;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 221
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 222
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v2, v2

    .line 223
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 224
    invoke-static {v1, v3, v2}, LcF;->a(Ljava/io/InputStream;Ljava/io/OutputStream;I)I

    .line 226
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 227
    invoke-static {v1}, Lcom/kavsdk/shared/SdkUtils;->a([B)V

    .line 229
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    const-string v1, "\\$"

    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 230
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 232
    array-length v4, v2

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_2

    aget-object v0, v2, v1

    .line 233
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_1

    .line 234
    const-string v5, "http://"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 237
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "http://"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 239
    :cond_0
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 242
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 243
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    :catch_0
    move-exception v0

    .line 248
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 245
    :cond_3
    :try_start_1
    invoke-static {v3}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 246
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0
.end method

.method private a(Lbg;Ljava/lang/String;Ljq;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 128
    if-nez p3, :cond_0

    .line 129
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Listener can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    iget-object v1, p0, Lju;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v1

    if-nez v1, :cond_1

    .line 140
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Update is already in progress"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :catch_0
    move-exception v0

    .line 136
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Bad url format"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 142
    :cond_1
    iput-object v0, p0, Lju;->h:Ljava/net/URL;

    .line 145
    :try_start_1
    iput-object p3, p0, Lju;->e:Ljq;

    .line 146
    new-instance v1, Lbd;

    invoke-static {}, Lhb;->a()Lhb;

    move-result-object v2

    invoke-virtual {v2}, Lhb;->b()Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Lju;->d:Ljava/io/File;

    invoke-direct {v1, v0, v2, v3}, Lbd;-><init>(Ljava/net/URL;Ljava/io/File;Ljava/io/File;)V

    .line 150
    new-instance v0, Ljv;

    invoke-direct {v0, p0}, Ljv;-><init>(Lju;)V

    invoke-virtual {v1, v0}, Lbd;->a(Lbe;)V

    .line 159
    invoke-virtual {v1, p1, p0}, Lbd;->a(Lbg;Lbf;)V

    .line 160
    const/4 v0, 0x0

    iput-object v0, p0, Lju;->e:Ljq;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 162
    iput-object v4, p0, Lju;->h:Ljava/net/URL;

    .line 163
    iget-object v0, p0, Lju;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 164
    return-void

    .line 162
    :catchall_0
    move-exception v0

    iput-object v4, p0, Lju;->h:Ljava/net/URL;

    .line 163
    iget-object v1, p0, Lju;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 253
    sput-object p0, Lju;->i:Ljava/lang/String;

    .line 254
    sput-object p1, Lju;->j:Ljava/lang/String;

    .line 255
    sput-object p2, Lju;->k:Ljava/lang/String;

    .line 256
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljq;)V
    .locals 3

    .prologue
    .line 79
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lgy;->a()Ljava/io/File;

    move-result-object v1

    const-string v2, "list.ksl"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lju;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    .line 82
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lju;->g:Z

    .line 83
    new-instance v0, Ljt;

    const-string v1, "KSNM;KMSH;SMH;KDBM;EMUM"

    invoke-direct {v0, v1}, Ljt;-><init>(Ljava/lang/String;)V

    .line 84
    new-instance v1, Ljn;

    iget-object v2, p0, Lju;->d:Ljava/io/File;

    invoke-direct {v1, v2}, Ljn;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lju;->f:Ljp;

    .line 85
    invoke-direct {p0, v0, p1, p2}, Lju;->a(Lbg;Ljava/lang/String;Ljq;)V

    .line 86
    return-void
.end method

.method public final a(II)Z
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x1

    .line 185
    if-ne p1, v4, :cond_5

    if-nez p2, :cond_5

    .line 188
    iget-object v0, p0, Lju;->e:Ljq;

    invoke-interface {v0, p1, p2}, Ljq;->a(II)Z

    .line 190
    iget-object v0, p0, Lju;->f:Ljp;

    invoke-virtual {v0}, Ljp;->f()I

    move-result v0

    .line 191
    invoke-direct {p0}, Lju;->a()I

    move-result v1

    .line 193
    if-eqz v0, :cond_0

    if-ne v0, v2, :cond_2

    :cond_0
    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_2

    .line 196
    :cond_1
    iget-object v2, p0, Lju;->d:Ljava/io/File;

    iget-object v3, p0, Lju;->c:Ljava/io/File;

    invoke-static {v2, v3}, Lbh;->a(Ljava/io/File;Ljava/io/File;)Ljava/util/List;

    move-result-object v2

    .line 200
    invoke-static {v2}, Lbh;->a(Ljava/util/List;)V

    .line 205
    :cond_2
    if-eq v1, v4, :cond_3

    const/4 v2, 0x6

    if-ne v1, v2, :cond_4

    :cond_3
    move v0, v1

    .line 212
    :cond_4
    iget-object v1, p0, Lju;->e:Ljq;

    const/4 v2, 0x3

    invoke-interface {v1, v2, v0}, Ljq;->a(II)Z

    .line 213
    iget-object v1, p0, Lju;->e:Ljq;

    const/4 v2, 0x4

    invoke-interface {v1, v2, v0}, Ljq;->a(II)Z

    move-result v0

    .line 216
    :goto_0
    return v0

    :cond_5
    iget-object v0, p0, Lju;->e:Ljq;

    invoke-interface {v0, p1, p2}, Ljq;->a(II)Z

    move-result v0

    goto :goto_0
.end method
