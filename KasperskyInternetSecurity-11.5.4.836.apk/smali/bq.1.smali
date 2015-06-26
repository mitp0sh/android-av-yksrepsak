.class public final Lbq;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 9
    new-instance v0, Ljava/util/SimpleTimeZone;

    const/4 v1, 0x0

    const-string v2, "GMT"

    invoke-direct {v0, v1, v2}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    sput-object v0, Lbq;->a:Ljava/util/TimeZone;

    return-void
.end method

.method public static a(Ljava/util/Calendar;Ljava/util/Calendar;)I
    .locals 6

    .prologue
    const/16 v5, 0xb

    const/4 v4, 0x1

    .line 32
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Calendar;

    .line 34
    const/4 v2, 0x0

    .line 35
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v3

    if-lez v3, :cond_0

    .line 36
    :goto_0
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 37
    invoke-virtual {v1, v5, v4}, Ljava/util/Calendar;->add(II)V

    .line 38
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 41
    :cond_0
    :goto_1
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 42
    invoke-virtual {v0, v5, v4}, Ljava/util/Calendar;->add(II)V

    .line 43
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 47
    :cond_1
    return v2
.end method
