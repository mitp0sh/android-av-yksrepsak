.class public final LsD;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(J)J
    .locals 5

    .prologue
    const-wide/16 v0, 0x0

    .line 22
    new-instance v2, Ljava/util/GregorianCalendar;

    const-string v3, "GMT"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 23
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    sub-long v2, p0, v2

    .line 24
    cmp-long v4, v2, v0

    if-gez v4, :cond_0

    .line 27
    :goto_0
    return-wide v0

    :cond_0
    const-wide/32 v0, 0x5265c00

    div-long v0, v2, v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    goto :goto_0
.end method

.method private static a(Ljava/util/Calendar;Ljava/util/Calendar;)J
    .locals 8

    .prologue
    .line 42
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    invoke-static {v0}, LsD;->a(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v1

    .line 43
    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    invoke-static {v0}, LsD;->a(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    .line 45
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 46
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 48
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v1

    int-to-long v6, v1

    add-long v1, v2, v6

    .line 49
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    int-to-long v6, v0

    add-long v3, v4, v6

    .line 51
    sub-long v0, v3, v1

    const-wide/32 v2, 0x5265c00

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public static a(Ljava/util/Date;Ljava/util/Date;)J
    .locals 2

    .prologue
    .line 32
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 33
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 35
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 36
    invoke-virtual {v1, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 38
    invoke-static {v0, v1}, LsD;->a(Ljava/util/Calendar;Ljava/util/Calendar;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static a(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 55
    const/16 v0, 0xb

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 56
    const/16 v0, 0xc

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 57
    const/16 v0, 0xd

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 58
    const/16 v0, 0xe

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 59
    return-object p0
.end method
