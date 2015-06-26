.class public final LkN;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbk;
.implements LkM;


# instance fields
.field private final a:Ljava/lang/Object;

.field private b:Lbi;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LkN;->a:Ljava/lang/Object;

    return-void
.end method

.method private b(Lcom/kms/antiphishing/AntiPhishingMode;)V
    .locals 2

    .prologue
    .line 61
    invoke-virtual {p0}, LkN;->d()Lcom/kms/antiphishing/AntiPhishingMode;

    move-result-object v0

    .line 62
    if-eq p1, v0, :cond_0

    .line 63
    invoke-static {}, Lsr;->k()Lsh;

    move-result-object v1

    .line 64
    invoke-virtual {v0}, Lcom/kms/antiphishing/AntiPhishingMode;->getId()I

    move-result v0

    invoke-virtual {v1, v0}, Lsh;->c(I)V

    .line 65
    invoke-virtual {v1}, Lsh;->g_()V

    .line 66
    invoke-static {}, Lsr;->c()Lsb;

    move-result-object v0

    .line 67
    invoke-virtual {p1}, Lcom/kms/antiphishing/AntiPhishingMode;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lsb;->a(I)V

    .line 68
    invoke-virtual {v0}, Lsb;->g_()V

    .line 70
    sget-object v0, Lcom/kms/antiphishing/AntiPhishingMode;->Disabled:Lcom/kms/antiphishing/AntiPhishingMode;

    if-ne p1, v0, :cond_1

    .line 71
    invoke-virtual {p0}, LkN;->f()V

    .line 76
    :goto_0
    invoke-static {p1}, Lcom/google/android/apps/analytics/easytracking/GA;->a(Lcom/kms/antiphishing/AntiPhishingMode;)V

    .line 79
    :cond_0
    return-void

    .line 73
    :cond_1
    invoke-virtual {p0}, LkN;->e()V

    goto :goto_0
.end method

.method private g()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 116
    invoke-direct {p0}, LkN;->h()V

    .line 117
    invoke-static {}, LjJ;->i()LkM;

    move-result-object v0

    invoke-interface {v0}, LkM;->d()Lcom/kms/antiphishing/AntiPhishingMode;

    move-result-object v0

    .line 119
    sget-object v2, Lcom/kms/antiphishing/AntiPhishingMode;->Standard:Lcom/kms/antiphishing/AntiPhishingMode;

    if-ne v0, v2, :cond_0

    move v0, v1

    .line 125
    :goto_0
    new-instance v2, Lbi;

    invoke-static {}, LjJ;->a()Landroid/app/Application;

    move-result-object v3

    invoke-direct {v2, v3, p0, v0}, Lbi;-><init>(Landroid/content/Context;Lbk;I)V

    iput-object v2, p0, LkN;->b:Lbi;

    .line 126
    iget-object v0, p0, LkN;->b:Lbi;

    sget-object v2, Lcom/kaspersky/components/urlchecker/UrlCategory;->PHISHING:Lcom/kaspersky/components/urlchecker/UrlCategory;

    invoke-virtual {v2}, Lcom/kaspersky/components/urlchecker/UrlCategory;->getMask()J

    move-result-wide v2

    sget-object v4, Lcom/kaspersky/components/urlchecker/UrlCategory;->MALWARE:Lcom/kaspersky/components/urlchecker/UrlCategory;

    invoke-virtual {v4}, Lcom/kaspersky/components/urlchecker/UrlCategory;->getMask()J

    move-result-wide v4

    or-long/2addr v2, v4

    sget-object v4, Lcom/kaspersky/components/urlchecker/UrlCategory;->COUNTERFEIT:Lcom/kaspersky/components/urlchecker/UrlCategory;

    invoke-virtual {v4}, Lcom/kaspersky/components/urlchecker/UrlCategory;->getMask()J

    move-result-wide v4

    or-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lbi;->a(J)V

    .line 130
    iget-object v0, p0, LkN;->b:Lbi;

    invoke-virtual {v0, v1}, Lbi;->a(Z)V

    .line 131
    return-void

    .line 122
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private h()V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, LkN;->b:Lbi;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, LkN;->b:Lbi;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbi;->a(Z)V

    .line 136
    iget-object v0, p0, LkN;->b:Lbi;

    invoke-virtual {v0}, Lbi;->b()V

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, LkN;->b:Lbi;

    .line 139
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/kaspersky/components/urlchecker/UrlInfo;)Ljava/io/InputStream;
    .locals 13

    .prologue
    const-wide/16 v10, 0x0

    const/4 v0, 0x0

    const/4 v9, -0x1

    .line 144
    invoke-static {}, LjJ;->a()Landroid/app/Application;

    move-result-object v3

    .line 146
    invoke-static {p1, p2}, LrZ;->a(Ljava/lang/String;Lcom/kaspersky/components/urlchecker/UrlInfo;)V

    .line 148
    const v2, 0x7f0600b7

    .line 149
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0701f1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 150
    const/4 v1, 0x0

    .line 153
    iget-wide v5, p2, Lcom/kaspersky/components/urlchecker/UrlInfo;->mCategories:J

    sget-object v7, Lcom/kaspersky/components/urlchecker/UrlCategory;->COUNTERFEIT:Lcom/kaspersky/components/urlchecker/UrlCategory;

    invoke-virtual {v7}, Lcom/kaspersky/components/urlchecker/UrlCategory;->getMask()J

    move-result-wide v7

    and-long/2addr v5, v7

    cmp-long v5, v5, v10

    if-eqz v5, :cond_0

    iget-wide v5, p2, Lcom/kaspersky/components/urlchecker/UrlInfo;->mCategories:J

    sget-object v7, Lcom/kaspersky/components/urlchecker/UrlCategory;->PHISHING:Lcom/kaspersky/components/urlchecker/UrlCategory;

    invoke-virtual {v7}, Lcom/kaspersky/components/urlchecker/UrlCategory;->getMask()J

    move-result-wide v7

    and-long/2addr v5, v7

    cmp-long v5, v5, v10

    if-nez v5, :cond_0

    iget-wide v5, p2, Lcom/kaspersky/components/urlchecker/UrlInfo;->mCategories:J

    sget-object v7, Lcom/kaspersky/components/urlchecker/UrlCategory;->MALWARE:Lcom/kaspersky/components/urlchecker/UrlCategory;

    invoke-virtual {v7}, Lcom/kaspersky/components/urlchecker/UrlCategory;->getMask()J

    move-result-wide v7

    and-long/2addr v5, v7

    cmp-long v5, v5, v10

    if-nez v5, :cond_0

    .line 157
    const/4 v1, 0x1

    .line 158
    const-string v2, "JA"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 159
    const v2, 0x7f0600b8

    .line 165
    :cond_0
    if-nez v1, :cond_1

    .line 166
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->h()V

    .line 169
    :cond_1
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 171
    new-instance v5, Ljava/io/File;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v3, "permission_denied.png"

    invoke-direct {v5, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 173
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    .line 175
    const v1, 0x7f060015

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    .line 179
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    :try_start_1
    invoke-static {v3, v1}, LcF;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 181
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "chmod 644 "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Process;->waitFor()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_e
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 189
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 202
    :cond_2
    :goto_0
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7

    .line 210
    :cond_3
    :goto_1
    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 217
    :try_start_4
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_c
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 218
    :try_start_5
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_d
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 221
    :goto_2
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 223
    const-string v6, "${BLOCK_PAGE_TITLE}"

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-eq v6, v9, :cond_8

    .line 225
    const-string v6, "${BLOCK_PAGE_TITLE}"

    const v7, 0x7f07002e

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 252
    :cond_4
    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_2

    .line 257
    :catch_0
    move-exception v0

    move-object v12, v3

    move-object v3, v2

    move-object v2, v12

    .line 259
    :goto_4
    :try_start_7
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 263
    if-eqz v3, :cond_5

    .line 267
    :try_start_8
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_9

    .line 274
    :cond_5
    :goto_5
    if-eqz v2, :cond_11

    .line 278
    :try_start_9
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    move-object v0, v1

    .line 285
    :cond_6
    :goto_6
    return-object v0

    .line 189
    :catch_1
    move-exception v1

    move-object v1, v0

    :goto_7
    if-eqz v1, :cond_2

    .line 193
    :try_start_a
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_0

    .line 197
    :catch_2
    move-exception v1

    goto :goto_0

    .line 189
    :catchall_0
    move-exception v1

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    :goto_8
    if-eqz v1, :cond_7

    .line 193
    :try_start_b
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    .line 197
    :cond_7
    :goto_9
    throw v0

    .line 227
    :cond_8
    :try_start_c
    const-string v6, "${BLOCK_PAGE_HEADER}"

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-eq v6, v9, :cond_9

    .line 229
    const-string v6, "${BLOCK_PAGE_HEADER}"

    const v7, 0x7f0700c3

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 231
    :cond_9
    const-string v6, "${COUNTERFEIT_BLOCK_PAGE_HEADER}"

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-eq v6, v9, :cond_a

    .line 233
    const-string v6, "${COUNTERFEIT_BLOCK_PAGE_HEADER}"

    const v7, 0x7f0700c4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 235
    :cond_a
    const-string v6, "${BLOCK_PAGE_TEXT}"

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-eq v6, v9, :cond_b

    .line 237
    const v6, 0x7f0706af

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 238
    const-string v7, "${BLOCK_PAGE_TEXT}"

    invoke-virtual {v0, v7, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 240
    :cond_b
    const-string v6, "${COUNTERFEIT_BLOCK_PAGE_TEXT}"

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-eq v6, v9, :cond_c

    .line 242
    const-string v6, "${COUNTERFEIT_BLOCK_PAGE_TEXT}"

    const v7, 0x7f0700c5

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 244
    :cond_c
    const-string v6, "${BLOCK_PAGE_URL}"

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-eq v6, v9, :cond_d

    .line 246
    const-string v6, "${BLOCK_PAGE_URL}"

    invoke-virtual {v0, v6, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 248
    :cond_d
    const-string v6, "${ICON_FILE}"

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-eq v6, v9, :cond_4

    .line 250
    const-string v6, "${ICON_FILE}"

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 255
    :cond_e
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 263
    :try_start_d
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8

    .line 274
    :goto_a
    :try_start_e
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_3

    goto/16 :goto_6

    .line 282
    :catch_3
    move-exception v1

    goto/16 :goto_6

    :catch_4
    move-exception v0

    move-object v0, v1

    goto/16 :goto_6

    .line 263
    :catchall_1
    move-exception v1

    move-object v3, v0

    move-object v2, v0

    move-object v0, v1

    :goto_b
    if-eqz v2, :cond_f

    .line 267
    :try_start_f
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_a

    .line 274
    :cond_f
    :goto_c
    if-eqz v3, :cond_10

    .line 278
    :try_start_10
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_b

    .line 282
    :cond_10
    :goto_d
    throw v0

    .line 197
    :catch_5
    move-exception v1

    goto/16 :goto_0

    :catch_6
    move-exception v1

    goto/16 :goto_9

    :catch_7
    move-exception v1

    goto/16 :goto_1

    :catch_8
    move-exception v1

    goto :goto_a

    :catch_9
    move-exception v0

    goto/16 :goto_5

    :catch_a
    move-exception v1

    goto :goto_c

    :catch_b
    move-exception v1

    goto :goto_d

    .line 263
    :catchall_2
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_b

    :catchall_3
    move-exception v0

    goto :goto_b

    :catchall_4
    move-exception v0

    move-object v12, v2

    move-object v2, v3

    move-object v3, v12

    goto :goto_b

    .line 257
    :catch_c
    move-exception v2

    move-object v3, v0

    move-object v12, v0

    move-object v0, v2

    move-object v2, v12

    goto/16 :goto_4

    :catch_d
    move-exception v2

    move-object v12, v2

    move-object v2, v3

    move-object v3, v0

    move-object v0, v12

    goto/16 :goto_4

    .line 189
    :catchall_5
    move-exception v0

    goto/16 :goto_8

    :catch_e
    move-exception v6

    goto/16 :goto_7

    :cond_11
    move-object v0, v1

    goto/16 :goto_6
.end method

.method public final a(Lcom/kms/antiphishing/AntiPhishingMode;)V
    .locals 2

    .prologue
    .line 84
    iget-object v1, p0, LkN;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 85
    :try_start_0
    invoke-direct {p0, p1}, LkN;->b(Lcom/kms/antiphishing/AntiPhishingMode;)V

    .line 87
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a()Z
    .locals 2

    .prologue
    .line 40
    invoke-static {}, Lsr;->c()Lsb;

    move-result-object v0

    invoke-virtual {v0}, Lsb;->a()I

    move-result v0

    invoke-static {v0}, Lcom/kms/antiphishing/AntiPhishingMode;->getById(I)Lcom/kms/antiphishing/AntiPhishingMode;

    move-result-object v0

    sget-object v1, Lcom/kms/antiphishing/AntiPhishingMode;->Disabled:Lcom/kms/antiphishing/AntiPhishingMode;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Z
    .locals 2

    .prologue
    .line 45
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->G()Lgo;

    move-result-object v0

    .line 46
    iget v0, v0, Lgo;->e:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 51
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->G()Lgo;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Lgo;->a()Z

    move-result v0

    return v0
.end method

.method public final d()Lcom/kms/antiphishing/AntiPhishingMode;
    .locals 1

    .prologue
    .line 57
    invoke-static {}, Lsr;->c()Lsb;

    move-result-object v0

    invoke-virtual {v0}, Lsb;->a()I

    move-result v0

    invoke-static {v0}, Lcom/kms/antiphishing/AntiPhishingMode;->getById(I)Lcom/kms/antiphishing/AntiPhishingMode;

    move-result-object v0

    return-object v0
.end method

.method public final e()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 93
    invoke-virtual {p0}, LkN;->d()Lcom/kms/antiphishing/AntiPhishingMode;

    move-result-object v0

    .line 94
    sget-object v1, Lcom/kms/antiphishing/AntiPhishingMode;->Extended:Lcom/kms/antiphishing/AntiPhishingMode;

    if-eq v0, v1, :cond_0

    .line 95
    invoke-static {}, LjJ;->a()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/kaspersky/components/webfilter/ProxySettings;->a(Landroid/content/Context;Z)Lcom/kaspersky/components/webfilter/ProxySettings;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/kaspersky/components/webfilter/ProxySettings;->a(Z)V

    .line 103
    :cond_0
    sget-object v1, Lcom/kms/antiphishing/AntiPhishingMode;->Disabled:Lcom/kms/antiphishing/AntiPhishingMode;

    if-eq v0, v1, :cond_1

    .line 104
    invoke-direct {p0}, LkN;->g()V

    .line 105
    invoke-static {}, LjJ;->b()Lrx;

    move-result-object v0

    sget-object v1, Lcom/kms/antiphishing/AntiPhishingBusEventType;->AntiPhishingModeChanged:Lcom/kms/antiphishing/AntiPhishingBusEventType;

    invoke-virtual {v1}, Lcom/kms/antiphishing/AntiPhishingBusEventType;->newEvent()LkJ;

    move-result-object v1

    invoke-interface {v0, v1}, Lrx;->a(Lrw;)V

    .line 107
    :cond_1
    return-void
.end method

.method public final f()V
    .locals 2

    .prologue
    .line 111
    invoke-direct {p0}, LkN;->h()V

    .line 112
    invoke-static {}, LjJ;->b()Lrx;

    move-result-object v0

    sget-object v1, Lcom/kms/antiphishing/AntiPhishingBusEventType;->AntiPhishingModeChanged:Lcom/kms/antiphishing/AntiPhishingBusEventType;

    invoke-virtual {v1}, Lcom/kms/antiphishing/AntiPhishingBusEventType;->newEvent()LkJ;

    move-result-object v1

    invoke-interface {v0, v1}, Lrx;->a(Lrw;)V

    .line 113
    return-void
.end method
