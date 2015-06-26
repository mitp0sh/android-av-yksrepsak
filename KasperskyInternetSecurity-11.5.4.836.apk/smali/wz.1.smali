.class public final Lwz;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:I

.field private static b:I

.field private static c:I


# instance fields
.field private d:Ljava/lang/String;

.field private e:Ljava/net/URL;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Ljava/lang/String;

.field private j:Z

.field private k:LwA;

.field private l:Lt;

.field private m:Ljava/lang/String;

.field private n:[Ljava/lang/String;

.field private o:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    sput v0, Lwz;->a:I

    .line 46
    const/4 v0, 0x1

    sput v0, Lwz;->b:I

    .line 47
    const/4 v0, 0x2

    sput v0, Lwz;->c:I

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-static {}, Lsr;->m()Lsy;

    move-result-object v2

    .line 78
    invoke-virtual {v2, v6}, Lsy;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 79
    const/4 v1, 0x6

    invoke-virtual {v2, v1}, Lsy;->e(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 80
    invoke-static {}, Lwz;->f()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lwz;->a(Ljava/lang/String;)V

    .line 82
    invoke-static {}, Lcom/kms/kmsshared/Utils;->s()Ljava/lang/String;

    move-result-object v3

    .line 83
    invoke-static {v3, v0}, Lwz;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_3

    .line 84
    iput-object v0, p0, Lwz;->g:Ljava/lang/String;

    .line 90
    :cond_0
    :goto_0
    invoke-static {v3, v0, v5}, Lwz;->b(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 92
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    const-string v4, ""

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/kms.apk"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 95
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 97
    :cond_1
    const-string v0, ""

    invoke-virtual {v2, v6, v0}, Lsy;->a(ILjava/lang/Object;)Lss;

    .line 98
    invoke-virtual {v2}, Lsy;->g_()V

    .line 100
    :cond_2
    return-void

    .line 86
    :cond_3
    invoke-static {v3, v1}, Lwz;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_0

    .line 87
    iput-object v1, p0, Lwz;->g:Ljava/lang/String;

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;I)I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 214
    .line 217
    if-ltz p1, :cond_0

    const/4 v0, 0x4

    if-lt p1, v0, :cond_4

    .line 248
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v2

    .line 224
    :goto_1
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 228
    const/16 v2, 0x2e

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 230
    if-gtz v2, :cond_2

    .line 232
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 234
    :cond_2
    add-int/lit8 p1, p1, -0x1

    .line 235
    if-gez p1, :cond_1

    .line 236
    if-lez v0, :cond_3

    .line 238
    add-int/lit8 v0, v0, 0x1

    .line 243
    :cond_3
    :try_start_0
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 246
    :catch_0
    move-exception v0

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 273
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 274
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 276
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_5

    move v0, v2

    .line 277
    :goto_2
    const/4 v3, 0x4

    if-ge v0, v3, :cond_4

    .line 278
    invoke-static {p0, v0}, Lwz;->a(Ljava/lang/String;I)I

    move-result v3

    .line 279
    invoke-static {p1, v0}, Lwz;->a(Ljava/lang/String;I)I

    move-result v4

    .line 280
    if-ge v3, v4, :cond_3

    .line 281
    const/4 v1, -0x1

    .line 290
    :cond_0
    :goto_3
    return v1

    :cond_1
    move v0, v2

    .line 273
    goto :goto_0

    :cond_2
    move v0, v2

    .line 274
    goto :goto_1

    .line 283
    :cond_3
    if-gt v3, v4, :cond_0

    .line 277
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    move v1, v2

    .line 287
    goto :goto_3

    .line 290
    :cond_5
    invoke-virtual {v3, v0}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v1

    goto :goto_3
.end method

.method static synthetic a(Lwz;I)I
    .locals 0

    .prologue
    .line 43
    iput p1, p0, Lwz;->o:I

    return p1
.end method

.method static synthetic a(Lwz;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lwz;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lwz;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lwz;->d:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lwz;Ljava/net/URL;)Ljava/net/URL;
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lwz;->e:Ljava/net/URL;

    return-object p1
.end method

.method private a(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v3, 0x2

    const/4 v0, 0x0

    .line 146
    const-string v1, "\\-"

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 147
    if-eqz v1, :cond_0

    array-length v2, v1

    if-ge v2, v3, :cond_1

    .line 161
    :cond_0
    return-void

    .line 151
    :cond_1
    aget-object v2, v1, v0

    iput-object v2, p0, Lwz;->m:Ljava/lang/String;

    .line 152
    const/4 v2, 0x1

    aget-object v1, v1, v2

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lwz;->n:[Ljava/lang/String;

    .line 153
    iget-object v1, p0, Lwz;->n:[Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 157
    :goto_0
    iget-object v1, p0, Lwz;->n:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 159
    iget-object v1, p0, Lwz;->n:[Ljava/lang/String;

    iget-object v2, p0, Lwz;->n:[Ljava/lang/String;

    aget-object v2, v2, v0

    const-string v3, "-r"

    const-string v4, "-"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 157
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1

    .prologue
    .line 43
    invoke-static {p0, p1, p2}, Lwz;->b(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lwz;Z)Z
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lwz;->j:Z

    return v0
.end method

.method static synthetic b(Lwz;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lwz;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lwz;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lwz;->i:Ljava/lang/String;

    return-object p1
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 253
    if-nez p0, :cond_0

    move v0, v1

    .line 269
    :goto_0
    return v0

    .line 261
    :cond_0
    invoke-static {p0, p1}, Lwz;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_3

    .line 262
    if-nez p2, :cond_2

    .line 263
    invoke-static {}, Lsr;->m()Lsy;

    move-result-object v0

    .line 264
    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Lsy;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 265
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v0, p1}, Lwz;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 267
    goto :goto_0

    :cond_3
    move v0, v1

    .line 269
    goto :goto_0
.end method

.method static synthetic b(Lwz;Z)Z
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lwz;->h:Z

    return v0
.end method

.method static synthetic c(Lwz;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lwz;->f:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lwz;)LwA;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lwz;->k:LwA;

    return-object v0
.end method

.method static synthetic d(Lwz;)Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lwz;->j:Z

    return v0
.end method

.method static synthetic e()I
    .locals 1

    .prologue
    .line 43
    sget v0, Lwz;->b:I

    return v0
.end method

.method static synthetic e(Lwz;)Lt;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lwz;->l:Lt;

    return-object v0
.end method

.method private static f()Ljava/lang/String;
    .locals 3

    .prologue
    .line 165
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 166
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 167
    const-string v0, ""

    .line 170
    :try_start_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 173
    :goto_0
    invoke-static {v1}, LcF;->a(Ljava/io/Closeable;)V

    .line 174
    return-object v0

    .line 172
    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic f(Lwz;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lwz;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lwz;)Ljava/net/URL;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lwz;->e:Ljava/net/URL;

    return-object v0
.end method

.method static synthetic h(Lwz;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lwz;->m:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lwz;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lwz;->n:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lwz;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Lt;Z)V
    .locals 2

    .prologue
    .line 196
    iget-object v1, p0, Lwz;->k:LwA;

    monitor-enter v1

    .line 198
    if-eqz p2, :cond_0

    .line 200
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lwz;->o:I

    .line 206
    :cond_0
    iput-object p1, p0, Lwz;->l:Lt;

    .line 207
    iput-boolean p2, p0, Lwz;->j:Z

    .line 208
    iget-object v0, p0, Lwz;->k:LwA;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 209
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Z)V
    .locals 3

    .prologue
    .line 134
    iget v0, p0, Lwz;->o:I

    sget v1, Lwz;->b:I

    if-ne v0, v1, :cond_0

    .line 136
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    const-class v2, Lcom/kms/updater/gui/KMSConfirmUpdateActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 137
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 138
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 139
    const-string v1, "com_kms_confupdateactivity_fromgui"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 140
    sget-object v1, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 142
    :cond_0
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lwz;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 179
    monitor-enter p0

    .line 181
    :try_start_0
    iget-boolean v0, p0, Lwz;->h:Z

    if-eqz v0, :cond_0

    .line 183
    monitor-exit p0

    .line 192
    :goto_0
    return-void

    .line 185
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lwz;->h:Z

    .line 186
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    const/4 v0, 0x0

    iput-boolean v0, p0, Lwz;->j:Z

    .line 188
    iput-object v1, p0, Lwz;->i:Ljava/lang/String;

    .line 189
    iput-object v1, p0, Lwz;->f:Ljava/lang/String;

    .line 190
    iput-object v1, p0, Lwz;->l:Lt;

    .line 191
    new-instance v0, LwA;

    invoke-direct {v0, p0, p1}, LwA;-><init>(Lwz;Z)V

    iput-object v0, p0, Lwz;->k:LwA;

    goto :goto_0

    .line 186
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lwz;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 118
    iget v0, p0, Lwz;->o:I

    sget v1, Lwz;->b:I

    if-ne v0, v1, :cond_0

    .line 120
    sget v0, Lwz;->c:I

    iput v0, p0, Lwz;->o:I

    .line 126
    :cond_0
    return-void
.end method
