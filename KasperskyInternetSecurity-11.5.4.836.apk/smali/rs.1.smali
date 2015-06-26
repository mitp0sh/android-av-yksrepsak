.class final Lrs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private synthetic a:Lrq;


# direct methods
.method constructor <init>(Lrq;)V
    .locals 0

    .prologue
    .line 249
    iput-object p1, p0, Lrs;->a:Lrq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;)I
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 253
    invoke-virtual {p0}, Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;->getNextUTCDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p1}, Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;->getNextUTCDate()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 272
    :cond_0
    :goto_0
    return v0

    .line 257
    :cond_1
    invoke-virtual {p0}, Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;->getNextUTCDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p1}, Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;->getNextUTCDate()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 259
    goto :goto_0

    .line 263
    :cond_2
    invoke-virtual {p0}, Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;->getPriority()I

    move-result v2

    invoke-virtual {p1}, Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;->getPriority()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 267
    invoke-virtual {p0}, Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;->getPriority()I

    move-result v0

    invoke-virtual {p1}, Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;->getPriority()I

    move-result v2

    if-le v0, v2, :cond_3

    move v0, v1

    .line 269
    goto :goto_0

    .line 272
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 249
    check-cast p1, Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;

    check-cast p2, Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;

    invoke-static {p1, p2}, Lrs;->a(Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;)I

    move-result v0

    return v0
.end method
