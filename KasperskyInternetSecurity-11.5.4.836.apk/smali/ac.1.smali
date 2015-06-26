.class final Lac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lam;


# instance fields
.field private synthetic a:Lab;


# direct methods
.method private constructor <init>(Lab;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lac;->a:Lab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lab;B)V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lac;-><init>(Lab;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 116
    new-instance v0, Ljava/util/GregorianCalendar;

    new-instance v1, Ljava/util/SimpleTimeZone;

    const/4 v2, 0x0

    const-string v3, "GMT"

    invoke-direct {v1, v2, v3}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 118
    iget-object v1, p0, Lac;->a:Lab;

    invoke-static {v1}, Lab;->a(Lab;)Lai;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lai;->c(J)Ljava/util/List;

    move-result-object v0

    .line 119
    if-eqz v0, :cond_0

    .line 120
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 122
    iget-object v0, p0, Lac;->a:Lab;

    invoke-static {v0}, Lab;->b(Lab;)Lcom/kaspersky/components/ipm/IpmMessageManager;

    move-result-object v0

    invoke-interface {v0, v2, v3}, Lcom/kaspersky/components/ipm/IpmMessageManager;->a(J)V

    .line 123
    iget-object v0, p0, Lac;->a:Lab;

    invoke-static {v0}, Lab;->a(Lab;)Lai;

    move-result-object v0

    invoke-interface {v0, v2, v3}, Lai;->b(J)V

    goto :goto_0

    .line 129
    :cond_0
    return-void
.end method

.method public final a(Ljava/util/Calendar;)V
    .locals 5

    .prologue
    .line 153
    iget-object v0, p0, Lac;->a:Lab;

    invoke-static {v0}, Lab;->a(Lab;)Lai;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lai;->a(IJ)Ljava/util/List;

    move-result-object v0

    .line 156
    if-nez v0, :cond_1

    .line 169
    :cond_0
    return-void

    .line 160
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lag;

    .line 161
    iget-object v2, v0, Lag;->b:Ljava/lang/String;

    iget-object v3, p0, Lac;->a:Lab;

    invoke-static {v3}, Lab;->c(Lab;)Lae;

    move-result-object v3

    invoke-virtual {v3}, Lae;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 162
    iget-object v2, p0, Lac;->a:Lab;

    invoke-static {v2}, Lab;->b(Lab;)Lcom/kaspersky/components/ipm/IpmMessageManager;

    move-result-object v2

    iget-wide v3, v0, Lag;->a:J

    invoke-interface {v2, v3, v4}, Lcom/kaspersky/components/ipm/IpmMessageManager;->a(J)V

    .line 163
    iget-object v2, p0, Lac;->a:Lab;

    invoke-static {v2}, Lab;->a(Lab;)Lai;

    move-result-object v2

    iget-wide v3, v0, Lag;->a:J

    invoke-interface {v2, v3, v4}, Lai;->b(J)V

    goto :goto_0
.end method

.method public final a(IJ)Z
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lac;->a:Lab;

    invoke-static {v0}, Lab;->c(Lab;)Lae;

    move-result-object v0

    invoke-virtual {v0}, Lae;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LbC;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    .line 133
    :goto_0
    iget-object v1, p0, Lac;->a:Lab;

    invoke-static {v1}, Lab;->a(Lab;)Lai;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, v0}, Lai;->a(IJLjava/lang/String;)Z

    move-result v0

    .line 138
    return v0

    .line 132
    :cond_0
    iget-object v0, p0, Lac;->a:Lab;

    invoke-static {v0}, Lab;->c(Lab;)Lae;

    move-result-object v0

    invoke-virtual {v0}, Lae;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(IJJLjava/lang/String;)Z
    .locals 7

    .prologue
    .line 142
    iget-object v0, p0, Lac;->a:Lab;

    invoke-static {v0}, Lab;->a(Lab;)Lai;

    move-result-object v0

    const/4 v1, 0x0

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lai;->a(IJJLjava/lang/String;)Z

    move-result v0

    .line 148
    return v0
.end method
