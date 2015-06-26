.class public final Ltv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lay;


# instance fields
.field private a:Laz;

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:I

.field private h:I

.field private i:Z

.field private j:J

.field private k:J

.field private l:Z


# direct methods
.method public constructor <init>(LaD;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Ltv;->a:Laz;

    .line 21
    iput-boolean v2, p0, Ltv;->b:Z

    .line 22
    iput-boolean v2, p0, Ltv;->c:Z

    .line 23
    iput-boolean v2, p0, Ltv;->d:Z

    .line 24
    iput-boolean v2, p0, Ltv;->e:Z

    .line 25
    iput-boolean v2, p0, Ltv;->f:Z

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Ltv;->g:I

    .line 27
    iput v2, p0, Ltv;->h:I

    .line 28
    iput-boolean v2, p0, Ltv;->i:Z

    .line 29
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ltv;->j:J

    .line 31
    iput-boolean v2, p0, Ltv;->l:Z

    .line 34
    invoke-direct {p0, p1}, Ltv;->a(LaD;)V

    .line 35
    return-void
.end method

.method private a(LaD;)V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 83
    if-eqz p1, :cond_0

    iget v0, p1, LaD;->a:I

    if-eqz v0, :cond_2

    .line 84
    :cond_0
    iput-boolean v1, p0, Ltv;->b:Z

    .line 85
    if-eqz p1, :cond_1

    .line 86
    new-instance v0, LtE;

    iget v1, p1, LaD;->a:I

    invoke-direct {v0, v1}, LtE;-><init>(I)V

    iput-object v0, p0, Ltv;->a:Laz;

    .line 155
    :goto_0
    return-void

    .line 88
    :cond_1
    new-instance v0, LtE;

    const/16 v1, 0x3e5

    invoke-direct {v0, v1}, LtE;-><init>(I)V

    iput-object v0, p0, Ltv;->a:Laz;

    goto :goto_0

    .line 93
    :cond_2
    invoke-virtual {p1}, LaD;->a()LaN;

    move-result-object v0

    iget v0, v0, LaN;->d:I

    if-ne v0, v1, :cond_7

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Ltv;->i:Z

    .line 95
    new-instance v5, Ljava/util/GregorianCalendar;

    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 96
    new-instance v0, Ljava/util/GregorianCalendar;

    const-string v3, "GMT"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 97
    invoke-virtual {p1}, LaD;->b()LaE;

    move-result-object v3

    iget-wide v3, v3, LaE;->a:J

    invoke-virtual {v0, v3, v4}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 99
    invoke-virtual {v5}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v6

    cmp-long v0, v3, v6

    if-gez v0, :cond_3

    .line 100
    iput-boolean v1, p0, Ltv;->b:Z

    .line 101
    const/16 v0, 0x400

    iput v0, p1, LaD;->a:I

    .line 112
    :cond_3
    new-instance v0, LtE;

    invoke-direct {v0, p1}, LtE;-><init>(LaD;)V

    iput-object v0, p0, Ltv;->a:Laz;

    .line 114
    invoke-virtual {p1}, LaD;->b()LaE;

    move-result-object v0

    iget-object v6, v0, LaE;->e:LaF;

    .line 116
    iget v0, v6, LaF;->a:I

    const/4 v3, 0x6

    if-eq v0, v3, :cond_4

    iget v0, v6, LaF;->a:I

    const/4 v3, 0x7

    if-ne v0, v3, :cond_8

    :cond_4
    move v0, v1

    :goto_2
    iput-boolean v0, p0, Ltv;->f:Z

    .line 119
    iget-boolean v0, p0, Ltv;->f:Z

    if-eqz v0, :cond_e

    .line 120
    invoke-virtual {p1}, LaD;->b()LaE;

    move-result-object v0

    iget v0, v0, LaE;->c:I

    if-ne v0, v8, :cond_9

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Ltv;->l:Z

    .line 123
    const-wide/16 v3, 0x0

    .line 124
    iget-object v0, v6, LaF;->e:LaM;

    .line 125
    if-eqz v0, :cond_a

    .line 126
    iget v3, v0, LaM;->d:I

    int-to-long v3, v3

    const-wide/32 v6, 0x5265c00

    mul-long/2addr v3, v6

    .line 127
    iget v6, v0, LaM;->e:I

    iput v6, p0, Ltv;->g:I

    .line 128
    iget v0, v0, LaM;->b:I

    iput v0, p0, Ltv;->h:I

    .line 133
    :goto_4
    iget v0, p0, Ltv;->g:I

    if-nez v0, :cond_b

    .line 134
    invoke-virtual {p1}, LaD;->a()LaN;

    move-result-object v0

    iget-wide v6, v0, LaN;->c:J

    add-long/2addr v3, v6

    iput-wide v3, p0, Ltv;->k:J

    .line 138
    :goto_5
    invoke-virtual {v5}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v3

    iget-wide v5, p0, Ltv;->k:J

    cmp-long v0, v3, v5

    if-gez v0, :cond_c

    move v0, v1

    :goto_6
    iput-boolean v0, p0, Ltv;->d:Z

    .line 139
    iget-boolean v0, p0, Ltv;->d:Z

    if-nez v0, :cond_5

    .line 140
    invoke-virtual {p1}, LaD;->b()LaE;

    move-result-object v0

    iget v0, v0, LaE;->c:I

    if-ne v8, v0, :cond_d

    move v0, v1

    :goto_7
    iput-boolean v0, p0, Ltv;->d:Z

    .line 149
    :cond_5
    :goto_8
    iget-boolean v0, p0, Ltv;->d:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Ltv;->i:Z

    if-nez v0, :cond_6

    move v2, v1

    :cond_6
    iput-boolean v2, p0, Ltv;->d:Z

    .line 150
    iput-boolean v1, p0, Ltv;->e:Z

    goto/16 :goto_0

    :cond_7
    move v0, v2

    .line 93
    goto/16 :goto_1

    :cond_8
    move v0, v2

    .line 116
    goto :goto_2

    :cond_9
    move v0, v2

    .line 120
    goto :goto_3

    .line 130
    :cond_a
    iput v2, p0, Ltv;->g:I

    goto :goto_4

    .line 136
    :cond_b
    iget-object v0, p0, Ltv;->a:Laz;

    invoke-interface {v0}, Laz;->e()J

    move-result-wide v3

    iput-wide v3, p0, Ltv;->k:J

    goto :goto_5

    :cond_c
    move v0, v2

    .line 138
    goto :goto_6

    :cond_d
    move v0, v2

    .line 140
    goto :goto_7

    .line 143
    :cond_e
    iget-object v0, p0, Ltv;->a:Laz;

    invoke-interface {v0}, Laz;->e()J

    move-result-wide v3

    iput-wide v3, p0, Ltv;->k:J

    .line 144
    invoke-virtual {v5}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v3

    iget-wide v5, p0, Ltv;->k:J

    cmp-long v0, v3, v5

    if-ltz v0, :cond_f

    invoke-virtual {p1}, LaD;->b()LaE;

    move-result-object v0

    iget v0, v0, LaE;->b:I

    if-ne v8, v0, :cond_10

    :cond_f
    move v0, v1

    :goto_9
    iput-boolean v0, p0, Ltv;->d:Z

    goto :goto_8

    :cond_10
    move v0, v2

    goto :goto_9
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Ltv;->f:Z

    return v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Ltv;->g:I

    return v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 178
    iget v0, p0, Ltv;->h:I

    return v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Ltv;->d:Z

    return v0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Ltv;->e:Z

    return v0
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Ltv;->i:Z

    return v0
.end method

.method public final g()J
    .locals 4

    .prologue
    .line 159
    invoke-static {}, Lsu;->a()Lsu;

    move-result-object v0

    .line 160
    const-string v1, "lisence_latest_synchronization_key"

    const-wide/16 v2, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lsu;->a(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final h()J
    .locals 4

    .prologue
    .line 166
    invoke-static {}, Lsu;->a()Lsu;

    move-result-object v0

    .line 167
    const-string v1, "lisence_latest_update_key"

    const-wide/16 v2, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lsu;->a(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final i()J
    .locals 2

    .prologue
    .line 183
    iget-wide v0, p0, Ltv;->k:J

    return-wide v0
.end method

.method public final j()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 188
    new-instance v4, Ljava/util/GregorianCalendar;

    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 189
    invoke-static {}, Lcom/kms/kmsshared/Utils;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 191
    invoke-static {}, Lcom/kms/kmsshared/Utils;->k()J

    move-result-wide v0

    .line 197
    :goto_0
    iget-boolean v5, p0, Ltv;->f:Z

    if-eqz v5, :cond_2

    .line 198
    iget-wide v5, p0, Ltv;->k:J

    cmp-long v0, v0, v5

    if-gez v0, :cond_0

    invoke-virtual {v4}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v0

    iget-wide v4, p0, Ltv;->k:J

    cmp-long v0, v0, v4

    if-ltz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Ltv;->l:Z

    if-eqz v0, :cond_4

    :cond_1
    move v0, v3

    :goto_1
    iput-boolean v0, p0, Ltv;->d:Z

    .line 201
    :cond_2
    iget-boolean v0, p0, Ltv;->d:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Ltv;->i:Z

    if-nez v0, :cond_5

    :goto_2
    iput-boolean v3, p0, Ltv;->d:Z

    .line 202
    return-void

    .line 194
    :cond_3
    invoke-virtual {v4}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v0

    goto :goto_0

    :cond_4
    move v0, v2

    .line 198
    goto :goto_1

    :cond_5
    move v3, v2

    .line 201
    goto :goto_2
.end method

.method public final k()Laz;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Ltv;->a:Laz;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 206
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v0

    .line 207
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Activation2LicenseState [mError="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Ltv;->b:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mTolerance=false"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mValid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Ltv;->d:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mInitialized="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Ltv;->e:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mSubscriptionOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Ltv;->f:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mSubscriptionState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ltv;->g:I

    invoke-static {v2}, LaB;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mSubscriptionLimitationState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ltv;->h:I

    invoke-static {v2}, LaA;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mBlocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Ltv;->i:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mSubscriptionStoppedDate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    const-wide/16 v3, 0x0

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mRealExpirationDate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Ltv;->k:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLicenseInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltv;->a:Laz;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
