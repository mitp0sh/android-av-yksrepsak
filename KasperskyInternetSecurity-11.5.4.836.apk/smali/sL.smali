.class public LsL;
.super Lcom/kms/license/legacy/License;
.source "SourceFile"


# static fields
.field private static a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static b:Z

.field private static c:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static d:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static f:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static g:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 61
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, LsL;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 62
    sput-boolean v2, LsL;->b:Z

    .line 63
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, LsL;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 64
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, LsL;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 66
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, LsL;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 74
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, LsL;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 80
    const/4 v0, 0x0

    sput-object v0, LsL;->g:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/kms/license/legacy/License;-><init>()V

    return-void
.end method

.method public static a()I
    .locals 11

    .prologue
    const-wide/32 v9, 0x5265c00

    const-wide/16 v7, 0x3e8

    .line 95
    invoke-static {}, LsL;->getLicenseValidityDaysLeft()I

    move-result v1

    .line 100
    new-instance v2, Ljava/util/GregorianCalendar;

    invoke-direct {v2}, Ljava/util/GregorianCalendar;-><init>()V

    .line 101
    new-instance v3, Ljava/util/GregorianCalendar;

    invoke-direct {v3}, Ljava/util/GregorianCalendar;-><init>()V

    .line 102
    new-instance v4, Ljava/util/GregorianCalendar;

    invoke-direct {v4}, Ljava/util/GregorianCalendar;-><init>()V

    .line 104
    :try_start_0
    invoke-static {}, LsL;->getLicenseExpireDate()J

    move-result-wide v5

    mul-long/2addr v5, v7

    invoke-virtual {v3, v5, v6}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 105
    invoke-static {}, LsL;->getLicenseInstallDate()J

    move-result-wide v5

    mul-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V
    :try_end_0
    .catch Lcom/kms/license/legacy/LicenseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :goto_0
    invoke-virtual {v3}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-virtual {v2}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v7

    cmp-long v0, v5, v7

    if-gez v0, :cond_1

    .line 112
    const/4 v0, 0x0

    .line 141
    :cond_0
    :goto_1
    return v0

    .line 106
    :catch_0
    move-exception v0

    .line 107
    invoke-virtual {v0}, Lcom/kms/license/legacy/LicenseException;->printStackTrace()V

    goto :goto_0

    .line 119
    :cond_1
    invoke-virtual {v3}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-virtual {v2}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v7

    sub-long/2addr v5, v7

    .line 120
    rem-long v7, v5, v9

    long-to-int v3, v7

    .line 121
    div-long/2addr v5, v9

    long-to-int v0, v5

    .line 122
    if-eqz v3, :cond_2

    .line 123
    add-int/lit8 v0, v0, 0x1

    .line 125
    :cond_2
    invoke-virtual {v4}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-virtual {v2}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v7

    cmp-long v3, v5, v7

    if-gtz v3, :cond_4

    .line 127
    if-lt v0, v1, :cond_0

    :cond_3
    move v0, v1

    goto :goto_1

    .line 130
    :cond_4
    invoke-virtual {v4}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-virtual {v2}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v5

    cmp-long v2, v3, v5

    if-lez v2, :cond_3

    .line 132
    if-le v0, v1, :cond_3

    goto :goto_1
.end method

.method public static a(I)V
    .locals 1

    .prologue
    .line 232
    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, LsL;->removeLicense(I)V

    .line 235
    invoke-static {}, LsL;->getNumberOfKeys()I

    move-result v0

    if-nez v0, :cond_0

    .line 236
    const/4 v0, 0x0

    sput-boolean v0, LsL;->b:Z
    :try_end_0
    .catch Lcom/kms/license/legacy/LicenseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    :cond_0
    return-void

    .line 238
    :catch_0
    move-exception v0

    .line 239
    invoke-virtual {v0}, Lcom/kms/license/legacy/LicenseException;->printStackTrace()V

    .line 240
    throw v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 83
    sput-object p0, LsL;->g:Landroid/content/Context;

    .line 85
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    invoke-static {v0}, LsL;->b(Landroid/content/Context;)V

    .line 86
    return-void
.end method

.method public static a([B)V
    .locals 2

    .prologue
    .line 176
    invoke-static {p0}, LsL;->b([B)Z

    .line 178
    sget-object v0, LsL;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 179
    invoke-static {}, LsL;->g()V

    .line 181
    return-void
.end method

.method public static b()V
    .locals 2

    .prologue
    .line 210
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, LsL;->init(J)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 213
    new-instance v0, Ljava/lang/OutOfMemoryError;

    invoke-direct {v0}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw v0

    .line 215
    :cond_0
    invoke-static {}, LsL;->i()Z

    move-result v0

    sput-boolean v0, LsL;->b:Z

    .line 216
    sget-object v0, LsL;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 217
    sget-boolean v0, LsL;->b:Z

    invoke-static {}, LsL;->g()V

    .line 218
    return-void
.end method

.method public static b(I)Z
    .locals 1

    .prologue
    .line 297
    sget-object v0, LsL;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 298
    const/4 v0, 0x0

    .line 300
    :goto_0
    return v0

    :cond_0
    sget-object v0, LsL;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-static {p0, v0}, LsN;->a(II)Z

    move-result v0

    goto :goto_0
.end method

.method private static b([B)Z
    .locals 1

    .prologue
    .line 186
    array-length v0, p0

    invoke-static {p0, v0}, LsL;->replaceLicenseFromBuffer([BI)V

    .line 187
    invoke-static {}, LsL;->i()Z

    move-result v0

    sput-boolean v0, LsL;->b:Z

    .line 188
    const/4 v0, 0x1

    return v0
.end method

.method private static c(I)I
    .locals 1

    .prologue
    const/4 v0, 0x2

    .line 162
    packed-switch p0, :pswitch_data_0

    .line 170
    :goto_0
    :pswitch_0
    return v0

    .line 164
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 168
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 162
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static c()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 222
    sget-object v0, LsL;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 224
    sput-boolean v1, LsL;->b:Z

    .line 225
    sget-object v0, LsL;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 226
    invoke-static {}, Lcom/kms/license/legacy/License;->h()V

    .line 227
    invoke-static {}, LsL;->free()V

    .line 228
    return-void
.end method

.method public static d()Z
    .locals 1

    .prologue
    .line 246
    sget-boolean v0, LsL;->b:Z

    return v0
.end method

.method public static e()Z
    .locals 1

    .prologue
    .line 252
    sget-object v0, LsL;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public static f()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 257
    sget-object v1, LsL;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static g()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    .line 262
    invoke-static {}, LsL;->a()I

    move-result v0

    .line 267
    sget-object v1, LsL;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 269
    if-nez v0, :cond_1

    .line 270
    sget-object v0, LsL;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 271
    sget-object v0, LsL;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 282
    :cond_0
    :goto_0
    sget-object v0, LsL;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 287
    :goto_1
    return-void

    .line 272
    :cond_1
    if-ne v0, v3, :cond_2

    .line 273
    sget-object v0, LsL;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 274
    sget-object v0, LsL;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_0

    .line 275
    :cond_2
    if-gt v0, v4, :cond_3

    .line 276
    sget-object v0, LsL;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 277
    sget-object v0, LsL;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_0

    .line 278
    :cond_3
    const/4 v1, 0x7

    if-gt v0, v1, :cond_0

    .line 279
    sget-object v0, LsL;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 280
    sget-object v0, LsL;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_0

    .line 286
    :cond_4
    sget-object v0, LsL;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_1
.end method

.method private static i()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 147
    :try_start_0
    invoke-static {}, LsL;->getLicenseState()I

    move-result v1

    .line 148
    sget-object v2, LsL;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {v1}, LsL;->c(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 149
    if-nez v1, :cond_0

    invoke-static {}, LsL;->getNumberOfKeys()I

    move-result v1

    if-lez v1, :cond_1

    .line 150
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, LsL;->getKeyLicenseType(I)I

    move-result v1

    .line 151
    sget-object v2, LsL;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_0
    .catch Lcom/kms/license/legacy/LicenseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 158
    :cond_1
    :goto_0
    return v0

    .line 154
    :catch_0
    move-exception v1

    .line 156
    invoke-virtual {v1}, Lcom/kms/license/legacy/LicenseException;->printStackTrace()V

    goto :goto_0
.end method
