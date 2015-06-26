.class public final Lsv;
.super Lsq;
.source "SourceFile"


# direct methods
.method private constructor <init>(II)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lsq;-><init>(II)V

    .line 15
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/Long;)Ljava/lang/CharSequence;
    .locals 4

    .prologue
    .line 23
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    int-to-long v0, v0

    .line 24
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long v0, v2, v0

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(II)Lsv;
    .locals 3

    .prologue
    .line 18
    new-instance v0, Lsv;

    const v1, 0x7f0700ea

    const v2, 0x7f0700eb

    invoke-direct {v0, v1, v2}, Lsv;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic a(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 11
    check-cast p2, Ljava/lang/Long;

    invoke-static {p1, p2}, Lsv;->a(Landroid/content/Context;Ljava/lang/Long;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final b(II)LbK;
    .locals 2

    .prologue
    .line 29
    new-instance v0, LvZ;

    invoke-static {p1, p2}, Lwc;->a(II)Lwc;

    move-result-object v1

    invoke-direct {v0, v1}, LvZ;-><init>(Lwc;)V

    return-object v0
.end method
