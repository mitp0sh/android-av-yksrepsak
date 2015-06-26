.class public final LvL;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/TimeZone;

.field private static b:Ljava/lang/String;


# instance fields
.field private c:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 22
    new-instance v0, Ljava/util/SimpleTimeZone;

    const/4 v1, 0x0

    const-string v2, "GMT"

    invoke-direct {v0, v1, v2}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    sput-object v0, LvL;->a:Ljava/util/TimeZone;

    return-void
.end method

.method private constructor <init>(Ljava/util/Map;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LvL;->c:Ljava/util/Map;

    .line 33
    iput-object p1, p0, LvL;->c:Ljava/util/Map;

    .line 34
    return-void
.end method

.method private static a(Ljava/util/Calendar;J)I
    .locals 5

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x1

    .line 136
    new-instance v1, Ljava/util/GregorianCalendar;

    sget-object v0, LvL;->a:Ljava/util/TimeZone;

    invoke-direct {v1, v0}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 137
    invoke-virtual {v1, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 138
    const/4 v0, -0x1

    .line 139
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v2

    if-lez v2, :cond_0

    .line 140
    :goto_0
    invoke-virtual {v1, p0}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 141
    invoke-virtual {v1, v4, v3}, Ljava/util/Calendar;->add(II)V

    .line 142
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 145
    :cond_0
    :goto_1
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 146
    invoke-virtual {p0, v4, v3}, Ljava/util/Calendar;->add(II)V

    .line 147
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 151
    :cond_1
    return v0
.end method

.method private static a()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 37
    sget-object v0, LvL;->b:Ljava/lang/String;

    invoke-static {v0}, LbC;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    invoke-static {}, Lcom/kms/kmsshared/Utils;->s()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\."

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 40
    array-length v2, v1

    if-le v2, v4, :cond_0

    .line 41
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v1, v1, v4

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, LvL;->b:Ljava/lang/String;

    .line 45
    :cond_0
    sget-object v0, LvL;->b:Ljava/lang/String;

    return-object v0
.end method

.method private static a(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    packed-switch p0, :pswitch_data_0

    .line 130
    const-string v0, "0"

    :goto_0
    return-object v0

    .line 128
    :pswitch_0
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 120
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 156
    const/16 v0, 0x3f

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 157
    const/4 v2, -0x1

    if-eq v0, v2, :cond_7

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_7

    .line 158
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 159
    invoke-static {v2}, LbC;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 160
    const-string v4, "&"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 161
    if-eqz v4, :cond_7

    array-length v2, v4

    if-lez v2, :cond_7

    .line 162
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 164
    array-length v6, v4

    move v2, v3

    move v0, v3

    :goto_0
    if-ge v2, v6, :cond_6

    aget-object v7, v4, v2

    .line 166
    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 167
    if-eqz v8, :cond_1

    .line 168
    array-length v9, v8

    const/4 v10, 0x2

    if-ne v9, v10, :cond_4

    .line 172
    aget-object v9, v8, v1

    .line 174
    iget-object v10, p0, LvL;->c:Ljava/util/Map;

    invoke-interface {v10, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 176
    if-eqz v0, :cond_0

    .line 177
    const-string v0, "&"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    :cond_0
    aget-object v0, v8, v3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    const-string v0, "="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    iget-object v0, p0, LvL;->c:Ljava/util/Map;

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    .line 164
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 184
    :cond_2
    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "<"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 186
    if-eqz v0, :cond_3

    .line 187
    const-string v0, "&"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    :cond_3
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    .line 191
    goto :goto_1

    .line 193
    :cond_4
    array-length v7, v8

    if-ne v7, v1, :cond_1

    .line 195
    if-eqz v0, :cond_5

    .line 196
    const-string v0, "&"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    :cond_5
    aget-object v0, v8, v3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    const-string v0, "="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    .line 201
    goto :goto_1

    .line 204
    :cond_6
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 208
    :goto_2
    return-object v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;LaC;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 49
    invoke-static {p1, p2}, LvL;->a(Ljava/lang/String;LaC;)Ljava/util/Map;

    move-result-object v0

    .line 50
    new-instance v1, LvL;

    invoke-direct {v1, v0}, LvL;-><init>(Ljava/util/Map;)V

    invoke-direct {v1, p0}, LvL;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;LaC;)Ljava/util/Map;
    .locals 10

    .prologue
    .line 54
    new-instance v7, Ljava/util/GregorianCalendar;

    sget-object v0, LvL;->a:Ljava/util/TimeZone;

    invoke-direct {v7, v0}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 55
    invoke-interface {p1}, LaC;->c()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 57
    :goto_0
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 60
    const-string v1, "<LicenseType>"

    invoke-interface {p1}, LaC;->c()I

    move-result v2

    invoke-static {v2}, LvL;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-string v1, "<PpcsId>"

    invoke-static {}, LjJ;->o()LvH;

    move-result-object v2

    invoke-virtual {v2}, LvH;->d()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-string v1, "<ApplicationType>"

    const-string v2, "kis4android"

    invoke-interface {v8, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-string v1, "<ApplicationVersion>"

    invoke-static {}, LvL;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-string v1, "<Localization>"

    invoke-static {}, Lcom/kms/kmsshared/Utils;->t()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-string v1, "<LicenseStatusId>"

    invoke-static {p1}, LD;->a(LaC;)Lcom/kaspersky/components/ipm/LicenseInfo$Status;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kaspersky/components/ipm/LicenseInfo$Status;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    invoke-static {}, Lsr;->e()Lse;

    move-result-object v1

    invoke-virtual {v1}, Lse;->d()Ljava/lang/String;

    move-result-object v1

    .line 67
    const-string v2, "<KasperskyId>"

    invoke-interface {v8, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const-string v1, "0"

    .line 71
    const-string v6, "0"

    .line 72
    const-string v5, ""

    .line 73
    const-string v4, ""

    .line 74
    const-string v3, "0"

    .line 75
    const-string v2, "0"

    .line 77
    if-nez v0, :cond_4

    .line 78
    invoke-interface {p1}, LaC;->f()J

    move-result-wide v4

    invoke-static {v7, v4, v5}, LvL;->a(Ljava/util/Calendar;J)I

    move-result v0

    .line 79
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 81
    invoke-interface {p1}, LaC;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 82
    invoke-interface {p1}, LaC;->e()J

    move-result-wide v0

    invoke-static {v7, v0, v1}, LvL;->a(Ljava/util/Calendar;J)I

    move-result v0

    .line 83
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 86
    :goto_1
    invoke-interface {p1}, LaC;->a()Lay;

    move-result-object v1

    invoke-interface {v1}, Lay;->k()Laz;

    move-result-object v1

    invoke-interface {v1}, Laz;->f()LaD;

    move-result-object v1

    .line 87
    if-eqz v1, :cond_1

    .line 90
    const-string v4, "0"

    .line 92
    invoke-interface {p1}, LaC;->a()Lay;

    move-result-object v6

    invoke-interface {v6}, Lay;->c()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    .line 93
    invoke-interface {p1}, LaC;->d()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 94
    invoke-virtual {v1}, LaD;->b()LaE;

    move-result-object v1

    iget-object v1, v1, LaE;->e:LaF;

    iget v1, v1, LaF;->b:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    move-object v3, v5

    move-object v9, v2

    move-object v2, v4

    move-object v4, v0

    move-object v0, v1

    move-object v1, v9

    .line 106
    :goto_2
    const-string v5, "<KeySerialNumber>"

    invoke-interface {v8, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-string v2, "<LicenseId>"

    invoke-interface {v8, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string v2, "<LicenseDaysToExpiration>"

    invoke-interface {v8, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-string v1, "<LicenseDaysSinceActivation>"

    invoke-interface {v8, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string v1, "<LicenseDaysAfterExpiration>"

    invoke-interface {v8, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-string v1, "<LicenseTerm>"

    invoke-interface {v8, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    return-object v8

    .line 55
    :cond_0
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 98
    :cond_1
    invoke-interface {p1}, LaC;->g()I

    move-result v1

    .line 99
    invoke-interface {p1}, LaC;->d()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 100
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 101
    const-string v3, "0"

    move-object v4, v0

    move-object v0, v1

    move-object v1, v2

    move-object v2, p0

    move-object p0, v3

    move-object v3, v5

    .line 102
    goto :goto_2

    :cond_2
    move-object v1, v3

    move-object v3, v5

    move-object v9, v4

    move-object v4, v0

    move-object v0, v2

    move-object v2, v9

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto :goto_1

    :cond_4
    move-object v0, v2

    move-object p0, v4

    move-object v2, v5

    move-object v4, v1

    move-object v1, v3

    move-object v3, v6

    goto :goto_2
.end method
