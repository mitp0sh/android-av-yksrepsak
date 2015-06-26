.class public Lcom/kaspersky/bby/BbyGrace2Event;
.super Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;-><init>()V

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kaspersky/bby/BbyGrace2Event;->mRunIfMissed:Z

    .line 32
    invoke-virtual {p0}, Lcom/kaspersky/bby/BbyGrace2Event;->updateNextTime()V

    .line 33
    return-void
.end method

.method private static a(Ljava/util/Calendar;)I
    .locals 7

    .prologue
    const/4 v1, -0x1

    const/16 v2, 0x18

    .line 100
    invoke-static {}, Lsr;->g()Lsk;

    move-result-object v0

    invoke-virtual {v0}, Lsk;->s()J

    move-result-wide v3

    .line 101
    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v0, v3, v5

    if-nez v0, :cond_0

    move v0, v1

    .line 113
    :goto_0
    return v0

    .line 104
    :cond_0
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 105
    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 107
    invoke-static {p0, v0}, Lbq;->a(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result v0

    .line 108
    if-gt v0, v2, :cond_1

    .line 109
    const/4 v0, 0x1

    goto :goto_0

    .line 110
    :cond_1
    if-le v0, v2, :cond_2

    const/16 v3, 0x2d0

    if-ge v0, v3, :cond_2

    move v0, v2

    .line 111
    goto :goto_0

    :cond_2
    move v0, v1

    .line 113
    goto :goto_0
.end method


# virtual methods
.method public onStartEvent()V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lh;

    invoke-direct {v1, p0}, Lh;-><init>(Lcom/kaspersky/bby/BbyGrace2Event;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 50
    return-void
.end method

.method public updateNextTime()V
    .locals 7

    .prologue
    .line 54
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 55
    invoke-static {v1}, Lcom/kaspersky/bby/BbyGrace2Event;->a(Ljava/util/Calendar;)I

    move-result v2

    .line 57
    const/4 v0, -0x1

    if-ne v2, v0, :cond_0

    .line 58
    const/4 v0, 0x0

    invoke-static {v0}, Lj;->a(Z)V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kaspersky/bby/BbyGrace2Event;->mNextDate:Ljava/util/Date;

    .line 85
    :goto_0
    invoke-static {}, Lsr;->g()Lsk;

    move-result-object v0

    .line 86
    iget-object v1, p0, Lcom/kaspersky/bby/BbyGrace2Event;->mNextDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Lsk;->a(Ljava/util/Date;)V

    .line 87
    invoke-virtual {v0}, Lsk;->g_()V

    .line 88
    return-void

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/kaspersky/bby/BbyGrace2Event;->mNextDate:Ljava/util/Date;

    if-nez v0, :cond_1

    .line 64
    invoke-static {}, Lsr;->g()Lsk;

    move-result-object v0

    invoke-virtual {v0}, Lsk;->u()J

    move-result-wide v3

    .line 65
    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_2

    .line 66
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v3, v4}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/kaspersky/bby/BbyGrace2Event;->mNextDate:Ljava/util/Date;

    .line 72
    :cond_1
    :goto_1
    invoke-virtual {v1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 73
    iget-object v3, p0, Lcom/kaspersky/bby/BbyGrace2Event;->mNextDate:Ljava/util/Date;

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 74
    const/16 v3, 0xb

    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->add(II)V

    .line 76
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 78
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/kaspersky/bby/BbyGrace2Event;->mNextDate:Ljava/util/Date;

    goto :goto_0

    .line 68
    :cond_2
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/kaspersky/bby/BbyGrace2Event;->mNextDate:Ljava/util/Date;

    goto :goto_1

    .line 80
    :cond_3
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/kaspersky/bby/BbyGrace2Event;->mNextDate:Ljava/util/Date;

    goto :goto_0
.end method
