.class public final LtE;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laz;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:J

.field private e:Ljava/lang/String;

.field private f:J

.field private g:LaD;


# direct methods
.method public constructor <init>(I)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object v0, p0, LtE;->a:Ljava/lang/String;

    .line 22
    iput v1, p0, LtE;->b:I

    .line 23
    iput v1, p0, LtE;->c:I

    .line 24
    iput-wide v2, p0, LtE;->d:J

    .line 25
    iput-object v0, p0, LtE;->e:Ljava/lang/String;

    .line 26
    iput-wide v2, p0, LtE;->f:J

    .line 103
    const-string v0, ""

    iput-object v0, p0, LtE;->a:Ljava/lang/String;

    .line 104
    iput p1, p0, LtE;->b:I

    .line 105
    iput v1, p0, LtE;->c:I

    .line 106
    iput-wide v2, p0, LtE;->d:J

    .line 107
    return-void
.end method

.method public constructor <init>(LaD;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object v1, p0, LtE;->a:Ljava/lang/String;

    .line 22
    iput v0, p0, LtE;->b:I

    .line 23
    iput v0, p0, LtE;->c:I

    .line 24
    iput-wide v2, p0, LtE;->d:J

    .line 25
    iput-object v1, p0, LtE;->e:Ljava/lang/String;

    .line 26
    iput-wide v2, p0, LtE;->f:J

    .line 30
    if-nez p1, :cond_0

    .line 58
    :goto_0
    return-void

    .line 33
    :cond_0
    invoke-virtual {p1}, LaD;->a()LaN;

    move-result-object v0

    iget-object v0, v0, LaN;->b:Ljava/lang/String;

    iput-object v0, p0, LtE;->a:Ljava/lang/String;

    .line 34
    iget v0, p1, LaD;->a:I

    iput v0, p0, LtE;->b:I

    .line 35
    iput-object p1, p0, LtE;->g:LaD;

    .line 36
    invoke-virtual {p1}, LaD;->b()LaE;

    move-result-object v0

    iget-object v0, v0, LaE;->e:LaF;

    iget v0, v0, LaF;->a:I

    iput v0, p0, LtE;->c:I

    .line 37
    invoke-virtual {p1}, LaD;->a()LaN;

    move-result-object v0

    iget-wide v0, v0, LaN;->c:J

    iput-wide v0, p0, LtE;->d:J

    .line 38
    invoke-virtual {p1}, LaD;->b()LaE;

    move-result-object v0

    iget-wide v0, v0, LaE;->d:J

    .line 45
    invoke-virtual {p1}, LaD;->b()LaE;

    move-result-object v2

    iget-object v2, v2, LaE;->e:LaF;

    iget-object v2, v2, LaF;->e:LaM;

    .line 46
    if-eqz v2, :cond_1

    .line 47
    iget-object v2, v2, LaM;->c:Ljava/lang/String;

    .line 48
    invoke-static {v2}, Lra;->c(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v2}, Lra;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 49
    iput-object v2, p0, LtE;->e:Ljava/lang/String;

    .line 52
    :cond_1
    invoke-direct {p0, v0, v1}, LtE;->a(J)V

    goto :goto_0
.end method

.method private a(J)V
    .locals 8

    .prologue
    const/16 v7, 0xd

    const/16 v6, 0xc

    const/16 v5, 0xb

    const/16 v4, 0xe

    const/16 v3, 0x3b

    .line 67
    iget v0, p0, LtE;->c:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    iget v0, p0, LtE;->c:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_3

    .line 69
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_2

    .line 70
    new-instance v0, Ljava/util/GregorianCalendar;

    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 71
    invoke-virtual {v0, p1, p2}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 72
    const/16 v1, 0x17

    invoke-virtual {v0, v5, v1}, Ljava/util/GregorianCalendar;->set(II)V

    .line 73
    invoke-virtual {v0, v6, v3}, Ljava/util/GregorianCalendar;->set(II)V

    .line 74
    invoke-virtual {v0, v7, v3}, Ljava/util/GregorianCalendar;->set(II)V

    .line 75
    const/16 v1, 0x3e7

    invoke-virtual {v0, v4, v1}, Ljava/util/GregorianCalendar;->set(II)V

    .line 76
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    .line 78
    invoke-virtual {v1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v2

    invoke-virtual {v0, v4, v2}, Ljava/util/GregorianCalendar;->add(II)V

    .line 80
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 81
    invoke-virtual {v1}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v2

    invoke-virtual {v0, v4, v2}, Ljava/util/GregorianCalendar;->add(II)V

    .line 83
    :cond_1
    const/16 v2, 0x17

    invoke-virtual {v0, v5, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 84
    invoke-virtual {v0, v6, v3}, Ljava/util/GregorianCalendar;->set(II)V

    .line 85
    invoke-virtual {v0, v7, v3}, Ljava/util/GregorianCalendar;->set(II)V

    .line 86
    const/16 v2, 0x3e7

    invoke-virtual {v0, v4, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 87
    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 88
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v0

    iput-wide v0, p0, LtE;->f:J

    .line 100
    :cond_2
    :goto_0
    return-void

    .line 91
    :cond_3
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 92
    invoke-virtual {v0, p1, p2}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 93
    const/16 v1, 0x17

    invoke-virtual {v0, v5, v1}, Ljava/util/GregorianCalendar;->set(II)V

    .line 94
    invoke-virtual {v0, v6, v3}, Ljava/util/GregorianCalendar;->set(II)V

    .line 95
    invoke-virtual {v0, v7, v3}, Ljava/util/GregorianCalendar;->set(II)V

    .line 96
    const/16 v1, 0x3e7

    invoke-virtual {v0, v4, v1}, Ljava/util/GregorianCalendar;->set(II)V

    .line 97
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v0

    iput-wide v0, p0, LtE;->f:J

    goto :goto_0
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 111
    iget-wide v0, p0, LtE;->d:J

    return-wide v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, LtE;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, LtE;->c:I

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, LtE;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final e()J
    .locals 2

    .prologue
    .line 136
    iget-wide v0, p0, LtE;->f:J

    return-wide v0
.end method

.method public final f()LaD;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, LtE;->g:LaD;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 147
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v0

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "LicenseInfo [m_serial="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, LtE;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", m_error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, LtE;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", m_licenseType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, LtE;->c:I

    invoke-static {v2}, Ltk;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", m_validTo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, LtE;->d:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", m_providerUrl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, LtE;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", m_expirationTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, LtE;->f:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTicketContent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LtE;->g:LaD;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
