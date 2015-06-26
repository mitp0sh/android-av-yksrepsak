.class public final Lak;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laj;


# static fields
.field private static final c:Ljava/util/TimeZone;


# instance fields
.field private final d:Lam;

.field private e:Lay;

.field private f:Lae;

.field private g:LU;

.field private h:LV;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 15
    new-instance v0, Ljava/util/SimpleTimeZone;

    const/4 v1, 0x0

    const-string v2, "GMT"

    invoke-direct {v0, v1, v2}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    sput-object v0, Lak;->c:Ljava/util/TimeZone;

    return-void
.end method

.method public constructor <init>(Lam;LU;LV;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lak;->d:Lam;

    .line 25
    iput-object p2, p0, Lak;->g:LU;

    .line 26
    iput-object p3, p0, Lak;->h:LV;

    .line 27
    return-void
.end method

.method private static a(JJ)I
    .locals 6

    .prologue
    const/4 v5, 0x5

    const/4 v1, 0x1

    .line 334
    new-instance v2, Ljava/util/GregorianCalendar;

    sget-object v0, Lak;->c:Ljava/util/TimeZone;

    invoke-direct {v2, v0}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 335
    invoke-virtual {v2, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 336
    new-instance v3, Ljava/util/GregorianCalendar;

    sget-object v0, Lak;->c:Ljava/util/TimeZone;

    invoke-direct {v3, v0}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 337
    invoke-virtual {v3, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 338
    const/4 v0, 0x0

    .line 339
    cmp-long v4, p0, p2

    if-gez v4, :cond_0

    .line 340
    :goto_0
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 341
    invoke-virtual {v2, v5, v1}, Ljava/util/Calendar;->add(II)V

    .line 342
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 344
    :cond_0
    cmp-long v4, p0, p2

    if-lez v4, :cond_1

    move v0, v1

    .line 346
    :goto_1
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 347
    const/4 v1, -0x1

    invoke-virtual {v2, v5, v1}, Ljava/util/Calendar;->add(II)V

    .line 348
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 352
    :cond_1
    return v0
.end method

.method private a(I)J
    .locals 3

    .prologue
    .line 198
    new-instance v0, Ljava/util/GregorianCalendar;

    sget-object v1, Lak;->c:Ljava/util/TimeZone;

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 199
    iget-object v1, p0, Lak;->e:Lay;

    invoke-interface {v1}, Lay;->k()Laz;

    move-result-object v1

    invoke-interface {v1}, Laz;->e()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 200
    const/4 v1, 0x6

    neg-int v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 201
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private a(J)V
    .locals 9

    .prologue
    const/4 v2, 0x1

    .line 92
    iget-object v0, p0, Lak;->d:Lam;

    invoke-interface {v0, v2, p1, p2}, Lam;->a(IJ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    iget-object v0, p0, Lak;->h:LV;

    invoke-interface {v0}, LV;->c()LY;

    move-result-object v1

    .line 95
    iget-object v0, p0, Lak;->g:LU;

    iget-object v3, p0, Lak;->e:Lay;

    invoke-interface {v3}, Lay;->k()Laz;

    move-result-object v3

    invoke-interface {v3}, Laz;->e()J

    move-result-wide v5

    iget-object v3, p0, Lak;->f:Lae;

    invoke-virtual {v3}, Lae;->g()Ljava/lang/String;

    move-result-object v7

    iget-object v3, p0, Lak;->f:Lae;

    invoke-virtual {v3}, Lae;->h()Ljava/lang/String;

    move-result-object v8

    move-wide v3, p1

    invoke-interface/range {v0 .. v8}, LU;->a(LY;IJJLjava/lang/String;Ljava/lang/String;)V

    .line 99
    :cond_0
    return-void
.end method

.method private a(Ljava/util/Calendar;)V
    .locals 13

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x6

    const/4 v6, 0x0

    .line 206
    iget-object v0, p0, Lak;->e:Lay;

    invoke-interface {v0}, Lay;->k()Laz;

    move-result-object v0

    invoke-interface {v0}, Laz;->e()J

    move-result-wide v1

    .line 207
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-static {v3, v4, v1, v2}, Lak;->a(JJ)I

    move-result v5

    .line 208
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    .line 210
    if-ltz v5, :cond_7

    .line 212
    sget-object v3, Lak;->a:[I

    array-length v4, v3

    move v0, v6

    :goto_0
    if-ge v0, v4, :cond_3

    aget v9, v3, v0

    .line 214
    if-ne v9, v5, :cond_2

    .line 216
    new-instance v0, Ljava/util/GregorianCalendar;

    sget-object v3, Lak;->c:Ljava/util/TimeZone;

    invoke-direct {v0, v3}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 217
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 218
    neg-int v1, v9

    invoke-virtual {v0, v10, v1}, Ljava/util/Calendar;->add(II)V

    .line 219
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 220
    invoke-virtual {v0, v10, v11}, Ljava/util/Calendar;->add(II)V

    .line 221
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    .line 223
    iget-object v0, p0, Lak;->d:Lam;

    invoke-interface {v0, v6, v7, v8}, Lam;->a(IJ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 226
    iget-object v0, p0, Lak;->g:LU;

    sget-object v5, Lcom/kaspersky/components/ipm/IpmMessageSeverityEnum;->SeverityMedium:Lcom/kaspersky/components/ipm/IpmMessageSeverityEnum;

    invoke-interface/range {v0 .. v6}, LU;->a(JJLcom/kaspersky/components/ipm/IpmMessageSeverityEnum;Z)V

    .line 231
    :cond_0
    iget-object v0, p0, Lak;->g:LU;

    invoke-interface {v0, v3, v4}, LU;->a(J)V

    .line 290
    :cond_1
    :goto_1
    return-void

    .line 212
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 236
    :cond_3
    new-instance v3, Ljava/util/GregorianCalendar;

    sget-object v0, Lak;->c:Ljava/util/TimeZone;

    invoke-direct {v3, v0}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 237
    new-instance v12, Ljava/util/GregorianCalendar;

    sget-object v0, Lak;->c:Ljava/util/TimeZone;

    invoke-direct {v12, v0}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    move v0, v6

    .line 238
    :goto_2
    sget-object v4, Lak;->b:[[I

    array-length v4, v4

    if-ge v0, v4, :cond_6

    .line 240
    sget-object v4, Lak;->b:[[I

    aget-object v4, v4, v0

    .line 241
    invoke-virtual {v3, v1, v2}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 242
    invoke-virtual {v12, v1, v2}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 244
    aget v5, v4, v6

    neg-int v5, v5

    invoke-virtual {v3, v10, v5}, Ljava/util/GregorianCalendar;->add(II)V

    .line 245
    aget v4, v4, v11

    neg-int v4, v4

    invoke-virtual {v12, v10, v4}, Ljava/util/GregorianCalendar;->add(II)V

    .line 247
    invoke-virtual {p1, v3}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {p1, v12}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 249
    iget-object v5, p0, Lak;->d:Lam;

    invoke-virtual {v3}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v7

    invoke-virtual {v12}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v9

    iget-object v0, p0, Lak;->f:Lae;

    invoke-virtual {v0}, Lae;->c()Ljava/lang/String;

    move-result-object v11

    invoke-interface/range {v5 .. v11}, Lam;->a(IJJLjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 252
    iget-object v0, p0, Lak;->g:LU;

    invoke-virtual {v3}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v12}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v3

    sget-object v5, Lcom/kaspersky/components/ipm/IpmMessageSeverityEnum;->SeverityMedium:Lcom/kaspersky/components/ipm/IpmMessageSeverityEnum;

    invoke-interface/range {v0 .. v6}, LU;->a(JJLcom/kaspersky/components/ipm/IpmMessageSeverityEnum;Z)V

    .line 257
    :cond_4
    iget-object v0, p0, Lak;->d:Lam;

    invoke-interface {v0, p1}, Lam;->a(Ljava/util/Calendar;)V

    .line 258
    iget-object v0, p0, Lak;->g:LU;

    invoke-virtual {v12}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, LU;->a(J)V

    goto :goto_1

    .line 238
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 263
    :cond_6
    cmp-long v0, v7, v1

    if-gez v0, :cond_1

    .line 264
    new-instance v0, Ljava/util/GregorianCalendar;

    sget-object v1, Lak;->c:Ljava/util/TimeZone;

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 265
    sget-object v1, Lak;->a:[I

    aget v1, v1, v6

    neg-int v1, v1

    invoke-virtual {v0, v10, v1}, Ljava/util/GregorianCalendar;->add(II)V

    .line 266
    iget-object v1, p0, Lak;->g:LU;

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, LU;->a(J)V

    goto/16 :goto_1

    .line 272
    :cond_7
    if-gez v5, :cond_1

    const/16 v0, -0x1e

    if-lt v5, v0, :cond_1

    .line 274
    add-int/lit8 v0, v5, -0x1

    invoke-direct {p0, v0}, Lak;->a(I)J

    move-result-wide v3

    .line 276
    iget-object v0, p0, Lak;->d:Lam;

    invoke-interface {v0, v6, v7, v8}, Lam;->a(IJ)Z

    move-result v0

    if-nez v0, :cond_8

    .line 278
    invoke-direct {p0, v5}, Lak;->a(I)J

    move-result-wide v1

    .line 280
    iget-object v0, p0, Lak;->g:LU;

    sget-object v5, Lcom/kaspersky/components/ipm/IpmMessageSeverityEnum;->SeverityMedium:Lcom/kaspersky/components/ipm/IpmMessageSeverityEnum;

    invoke-interface/range {v0 .. v6}, LU;->a(JJLcom/kaspersky/components/ipm/IpmMessageSeverityEnum;Z)V

    .line 286
    :cond_8
    iget-object v0, p0, Lak;->d:Lam;

    invoke-interface {v0, p1}, Lam;->a(Ljava/util/Calendar;)V

    .line 287
    iget-object v0, p0, Lak;->g:LU;

    invoke-interface {v0, v3, v4}, LU;->a(J)V

    goto/16 :goto_1
.end method

.method private static a(Ljava/util/Calendar;J)[J
    .locals 6

    .prologue
    const/4 v4, 0x6

    .line 306
    new-instance v0, Ljava/util/GregorianCalendar;

    sget-object v1, Lak;->c:Ljava/util/TimeZone;

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 307
    invoke-virtual {v0, p1, p2}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 308
    const/16 v1, -0x26

    invoke-virtual {v0, v4, v1}, Ljava/util/GregorianCalendar;->add(II)V

    .line 310
    :goto_0
    invoke-virtual {v0, p0}, Ljava/util/GregorianCalendar;->after(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 311
    const/4 v1, -0x5

    invoke-virtual {v0, v4, v1}, Ljava/util/GregorianCalendar;->add(II)V

    goto :goto_0

    .line 313
    :cond_0
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v1

    .line 314
    const/4 v3, 0x5

    invoke-virtual {v0, v4, v3}, Ljava/util/GregorianCalendar;->add(II)V

    .line 315
    const/4 v3, 0x2

    new-array v3, v3, [J

    const/4 v4, 0x0

    aput-wide v1, v3, v4

    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v4

    aput-wide v4, v3, v1

    return-object v3
.end method

.method private b(J)V
    .locals 9

    .prologue
    const/4 v2, 0x1

    .line 102
    iget-object v0, p0, Lak;->d:Lam;

    invoke-interface {v0, v2, p1, p2}, Lam;->a(IJ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    iget-object v0, p0, Lak;->h:LV;

    invoke-interface {v0}, LV;->d()LY;

    move-result-object v1

    .line 105
    iget-object v0, p0, Lak;->g:LU;

    iget-object v3, p0, Lak;->e:Lay;

    invoke-interface {v3}, Lay;->k()Laz;

    move-result-object v3

    invoke-interface {v3}, Laz;->e()J

    move-result-wide v5

    iget-object v3, p0, Lak;->f:Lae;

    invoke-virtual {v3}, Lae;->g()Ljava/lang/String;

    move-result-object v7

    iget-object v3, p0, Lak;->f:Lae;

    invoke-virtual {v3}, Lae;->h()Ljava/lang/String;

    move-result-object v8

    move-wide v3, p1

    invoke-interface/range {v0 .. v8}, LU;->a(LY;IJJLjava/lang/String;Ljava/lang/String;)V

    .line 109
    :cond_0
    return-void
.end method

.method private b(Ljava/util/Calendar;)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x1

    .line 320
    iget-object v0, p0, Lak;->e:Lay;

    invoke-interface {v0}, Lay;->k()Laz;

    move-result-object v0

    invoke-interface {v0}, Laz;->e()J

    move-result-wide v2

    invoke-static {p1, v2, v3}, Lak;->a(Ljava/util/Calendar;J)[J

    move-result-object v7

    .line 322
    iget-object v0, p0, Lak;->d:Lam;

    aget-wide v2, v7, v1

    aget-wide v4, v7, v8

    iget-object v6, p0, Lak;->f:Lae;

    invoke-virtual {v6}, Lae;->c()Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {v0 .. v6}, Lam;->a(IJJLjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 323
    iget-object v0, p0, Lak;->g:LU;

    aget-wide v1, v7, v1

    aget-wide v3, v7, v8

    sget-object v5, Lcom/kaspersky/components/ipm/IpmMessageSeverityEnum;->SeverityLow:Lcom/kaspersky/components/ipm/IpmMessageSeverityEnum;

    move v6, v8

    invoke-interface/range {v0 .. v6}, LU;->a(JJLcom/kaspersky/components/ipm/IpmMessageSeverityEnum;Z)V

    .line 328
    :cond_0
    iget-object v0, p0, Lak;->d:Lam;

    invoke-interface {v0, p1}, Lam;->a(Ljava/util/Calendar;)V

    .line 329
    iget-object v0, p0, Lak;->g:LU;

    aget-wide v1, v7, v8

    invoke-interface {v0, v1, v2}, LU;->a(J)V

    .line 330
    return-void
.end method

.method private c(J)V
    .locals 16

    .prologue
    .line 117
    move-object/from16 v0, p0

    iget-object v2, v0, Lak;->e:Lay;

    invoke-interface {v2}, Lay;->k()Laz;

    move-result-object v2

    invoke-interface {v2}, Laz;->e()J

    move-result-wide v7

    .line 118
    move-wide/from16 v0, p1

    invoke-static {v0, v1, v7, v8}, Lak;->a(JJ)I

    move-result v9

    .line 120
    const/4 v6, 0x0

    .line 121
    const/4 v5, 0x0

    .line 122
    const-wide/16 v3, 0x0

    .line 124
    if-ltz v9, :cond_a

    .line 126
    move-object/from16 v0, p0

    iget-object v2, v0, Lak;->h:LV;

    invoke-interface {v2}, LV;->a()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LY;

    .line 128
    invoke-interface {v2}, LY;->e()I

    move-result v11

    .line 129
    invoke-interface {v2}, LY;->f()I

    move-result v12

    .line 131
    const/4 v13, -0x1

    if-eq v12, v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lak;->f:Lae;

    invoke-virtual {v13}, Lae;->f()I

    move-result v13

    if-ne v12, v13, :cond_0

    .line 133
    :cond_1
    if-gt v11, v9, :cond_0

    .line 136
    if-ne v11, v9, :cond_8

    .line 138
    move-object/from16 v0, p0

    iget-object v6, v0, Lak;->d:Lam;

    const/4 v10, 0x2

    move-wide/from16 v0, p1

    invoke-interface {v6, v10, v0, v1}, Lam;->a(IJ)Z

    move-result v6

    if-nez v6, :cond_2

    .line 140
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lak;->a(I)J

    move-result-wide v3

    move-object v5, v2

    .line 143
    :cond_2
    if-nez v9, :cond_7

    .line 144
    const/4 v2, -0x1

    .line 148
    :goto_0
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lak;->a(I)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-wide v14, v3

    move-object v3, v5

    move-wide v5, v14

    .line 182
    :goto_1
    if-eqz v2, :cond_4

    .line 183
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    cmp-long v4, v9, p1

    if-gtz v4, :cond_3

    .line 184
    const-wide/32 v9, 0x1d4c0

    add-long v9, v9, p1

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 186
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lak;->g:LU;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-interface {v4, v9, v10}, LU;->a(J)V

    .line 189
    :cond_4
    if-eqz v3, :cond_6

    .line 190
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 191
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lak;->g:LU;

    const/4 v4, 0x2

    move-object/from16 v0, p0

    iget-object v9, v0, Lak;->f:Lae;

    invoke-virtual {v9}, Lae;->g()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lak;->f:Lae;

    invoke-virtual {v10}, Lae;->h()Ljava/lang/String;

    move-result-object v10

    invoke-interface/range {v2 .. v10}, LU;->a(LY;IJJLjava/lang/String;Ljava/lang/String;)V

    .line 195
    :cond_6
    return-void

    .line 146
    :cond_7
    invoke-interface {v2}, LY;->e()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 152
    :cond_8
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lak;->a(I)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-wide v14, v3

    move-object v3, v5

    move-wide v5, v14

    .line 154
    goto :goto_1

    :cond_9
    move-object v2, v6

    move-object v14, v5

    move-wide v5, v3

    move-object v3, v14

    .line 156
    goto :goto_1

    .line 160
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lak;->f:Lae;

    invoke-virtual {v2}, Lae;->f()I

    move-result v2

    if-nez v2, :cond_e

    .line 162
    move-object/from16 v0, p0

    iget-object v2, v0, Lak;->h:LV;

    invoke-interface {v2}, LV;->b()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_b
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LZ;

    .line 164
    invoke-virtual {v2}, LZ;->a()I

    move-result v11

    if-lt v11, v9, :cond_c

    invoke-virtual {v2}, LZ;->b()I

    move-result v11

    if-gt v11, v9, :cond_c

    .line 166
    move-object/from16 v0, p0

    iget-object v6, v0, Lak;->d:Lam;

    const/4 v10, 0x2

    move-wide/from16 v0, p1

    invoke-interface {v6, v10, v0, v1}, Lam;->a(IJ)Z

    move-result v6

    if-nez v6, :cond_d

    .line 167
    invoke-virtual {v2}, LZ;->c()Laa;

    move-result-object v4

    .line 168
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lak;->a(I)J

    move-result-wide v2

    .line 171
    :goto_2
    add-int/lit8 v5, v9, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lak;->a(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-wide v14, v2

    move-object v3, v4

    move-object v2, v5

    move-wide v5, v14

    .line 172
    goto/16 :goto_1

    .line 173
    :cond_c
    invoke-virtual {v2}, LZ;->a()I

    move-result v11

    if-ge v11, v9, :cond_b

    .line 174
    invoke-virtual {v2}, LZ;->a()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lak;->a(I)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-wide v14, v3

    move-object v3, v5

    move-wide v5, v14

    .line 175
    goto/16 :goto_1

    :cond_d
    move-wide v14, v3

    move-wide v2, v14

    move-object v4, v5

    goto :goto_2

    :cond_e
    move-object v2, v6

    move-object v14, v5

    move-wide v5, v3

    move-object v3, v14

    goto/16 :goto_1
.end method


# virtual methods
.method public final a()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v1, 0x1

    .line 38
    iget-object v0, p0, Lak;->d:Lam;

    invoke-interface {v0}, Lam;->a()V

    .line 40
    iget-object v0, p0, Lak;->e:Lay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lak;->f:Lae;

    if-nez v0, :cond_1

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    iget-object v0, p0, Lak;->e:Lay;

    invoke-interface {v0}, Lay;->c()I

    move-result v0

    if-ne v0, v9, :cond_0

    .line 48
    const/4 v0, 0x0

    .line 49
    new-instance v2, Ljava/util/GregorianCalendar;

    sget-object v3, Lak;->c:Ljava/util/TimeZone;

    invoke-direct {v2, v3}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 50
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    .line 51
    iget-object v5, p0, Lak;->f:Lae;

    invoke-virtual {v5}, Lae;->a()Ljava/lang/Long;

    move-result-object v5

    iget-object v6, p0, Lak;->f:Lae;

    invoke-virtual {v6}, Lae;->b()Ljava/lang/Long;

    move-result-object v6

    .line 52
    if-eqz v5, :cond_2

    if-eqz v6, :cond_2

    .line 54
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v5, v3, v7

    if-ltz v5, :cond_2

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v5, v3, v5

    if-gez v5, :cond_2

    .line 55
    iget-object v5, p0, Lak;->f:Lae;

    invoke-virtual {v5}, Lae;->d()I

    move-result v5

    if-ne v5, v1, :cond_2

    move v0, v1

    .line 61
    :cond_2
    if-eqz v0, :cond_4

    .line 62
    invoke-virtual {v2}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/GregorianCalendar;

    .line 63
    const/4 v1, 0x6

    const/16 v3, 0x26

    invoke-virtual {v0, v1, v3}, Ljava/util/GregorianCalendar;->add(II)V

    .line 64
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v0

    iget-object v3, p0, Lak;->e:Lay;

    invoke-interface {v3}, Lay;->k()Laz;

    move-result-object v3

    invoke-interface {v3}, Laz;->e()J

    move-result-wide v3

    cmp-long v0, v0, v3

    if-gez v0, :cond_3

    .line 65
    invoke-direct {p0, v2}, Lak;->b(Ljava/util/Calendar;)V

    goto :goto_0

    .line 67
    :cond_3
    invoke-direct {p0, v2}, Lak;->a(Ljava/util/Calendar;)V

    goto :goto_0

    .line 73
    :cond_4
    iget-object v0, p0, Lak;->f:Lae;

    invoke-virtual {v0}, Lae;->d()I

    move-result v0

    if-ne v0, v1, :cond_5

    .line 75
    invoke-direct {p0, v3, v4}, Lak;->c(J)V

    goto :goto_0

    .line 77
    :cond_5
    iget-object v0, p0, Lak;->f:Lae;

    invoke-virtual {v0}, Lae;->d()I

    move-result v0

    if-nez v0, :cond_0

    .line 79
    iget-object v0, p0, Lak;->f:Lae;

    invoke-virtual {v0}, Lae;->f()I

    move-result v0

    if-ne v0, v9, :cond_6

    .line 81
    invoke-direct {p0, v3, v4}, Lak;->b(J)V

    goto/16 :goto_0

    .line 83
    :cond_6
    iget-object v0, p0, Lak;->f:Lae;

    invoke-virtual {v0}, Lae;->e()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 85
    invoke-direct {p0, v3, v4}, Lak;->a(J)V

    goto/16 :goto_0
.end method

.method public final a(Lae;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lak;->f:Lae;

    .line 31
    return-void
.end method

.method public final a(Lay;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lak;->e:Lay;

    .line 35
    return-void
.end method
