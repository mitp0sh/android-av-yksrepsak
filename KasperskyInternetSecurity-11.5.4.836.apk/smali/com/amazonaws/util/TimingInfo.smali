.class public Lcom/amazonaws/util/TimingInfo;
.super Ljava/lang/Object;
.source "TimingInfo.java"


# instance fields
.field private final countersByName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field

.field private endTime:J

.field private final startTime:J

.field private final subMeasurementsByName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/util/TimingInfo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/amazonaws/util/TimingInfo;-><init>(JJ)V

    .line 32
    return-void
.end method

.method public constructor <init>(J)V
    .locals 2
    .param p1, "startTime"    # J

    .prologue
    .line 35
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/amazonaws/util/TimingInfo;-><init>(JJ)V

    .line 36
    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 1
    .param p1, "startTime"    # J
    .param p3, "endTime"    # J

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/util/TimingInfo;->subMeasurementsByName:Ljava/util/Map;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/util/TimingInfo;->countersByName:Ljava/util/Map;

    .line 39
    iput-wide p1, p0, Lcom/amazonaws/util/TimingInfo;->startTime:J

    .line 40
    iput-wide p3, p0, Lcom/amazonaws/util/TimingInfo;->endTime:J

    .line 41
    return-void
.end method


# virtual methods
.method public addSubMeasurement(Ljava/lang/String;Lcom/amazonaws/util/TimingInfo;)V
    .locals 2
    .param p1, "subMeasurementName"    # Ljava/lang/String;
    .param p2, "timingInfo"    # Lcom/amazonaws/util/TimingInfo;

    .prologue
    .line 74
    iget-object v1, p0, Lcom/amazonaws/util/TimingInfo;->subMeasurementsByName:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 75
    .local v0, "timings":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/util/TimingInfo;>;"
    if-nez v0, :cond_0

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "timings":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/util/TimingInfo;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .restart local v0    # "timings":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/util/TimingInfo;>;"
    iget-object v1, p0, Lcom/amazonaws/util/TimingInfo;->subMeasurementsByName:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    return-void
.end method

.method public getAllCounters()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lcom/amazonaws/util/TimingInfo;->countersByName:Ljava/util/Map;

    return-object v0
.end method

.method public getAllSubMeasurements(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "subMeasurementName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/util/TimingInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lcom/amazonaws/util/TimingInfo;->subMeasurementsByName:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getCounter(Ljava/lang/String;)Ljava/lang/Number;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/amazonaws/util/TimingInfo;->countersByName:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    return-object v0
.end method

.method public getEndTime()J
    .locals 2

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/amazonaws/util/TimingInfo;->endTime:J

    return-wide v0
.end method

.method public getLastSubMeasurement(Ljava/lang/String;)Lcom/amazonaws/util/TimingInfo;
    .locals 1
    .param p1, "subMeasurementName"    # Ljava/lang/String;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/amazonaws/util/TimingInfo;->subMeasurementsByName:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazonaws/util/TimingInfo;->subMeasurementsByName:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 101
    :cond_0
    const/4 v0, 0x0

    .line 104
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/amazonaws/util/TimingInfo;->subMeasurementsByName:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/amazonaws/util/TimingInfo;->getSubMeasurement(Ljava/lang/String;I)Lcom/amazonaws/util/TimingInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public getStartTime()J
    .locals 2

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/amazonaws/util/TimingInfo;->startTime:J

    return-wide v0
.end method

.method public getSubMeasurement(Ljava/lang/String;)Lcom/amazonaws/util/TimingInfo;
    .locals 1
    .param p1, "subMeasurementName"    # Ljava/lang/String;

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/amazonaws/util/TimingInfo;->getSubMeasurement(Ljava/lang/String;I)Lcom/amazonaws/util/TimingInfo;

    move-result-object v0

    return-object v0
.end method

.method public getSubMeasurement(Ljava/lang/String;I)Lcom/amazonaws/util/TimingInfo;
    .locals 2
    .param p1, "subMesurementName"    # Ljava/lang/String;
    .param p2, "index"    # I

    .prologue
    .line 89
    iget-object v1, p0, Lcom/amazonaws/util/TimingInfo;->subMeasurementsByName:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 90
    .local v0, "timings":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/util/TimingInfo;>;"
    if-ltz p2, :cond_0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lt p2, v1, :cond_1

    .line 92
    :cond_0
    const/4 v1, 0x0

    .line 95
    :goto_0
    return-object v1

    :cond_1
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/util/TimingInfo;

    goto :goto_0
.end method

.method public getSubMeasurementsByName()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/util/TimingInfo;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lcom/amazonaws/util/TimingInfo;->subMeasurementsByName:Ljava/util/Map;

    return-object v0
.end method

.method public getTimeTakenMillis()D
    .locals 5

    .prologue
    .line 60
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v1, p0, Lcom/amazonaws/util/TimingInfo;->endTime:J

    iget-wide v3, p0, Lcom/amazonaws/util/TimingInfo;->startTime:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public incrementCounter(Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 129
    const/4 v0, 0x0

    .line 130
    .local v0, "count":I
    invoke-virtual {p0, p1}, Lcom/amazonaws/util/TimingInfo;->getCounter(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v1

    .line 132
    .local v1, "counter":Ljava/lang/Number;
    if-eqz v1, :cond_0

    .line 133
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 136
    :cond_0
    add-int/lit8 v0, v0, 0x1

    int-to-long v2, v0

    invoke-virtual {p0, p1, v2, v3}, Lcom/amazonaws/util/TimingInfo;->setCounter(Ljava/lang/String;J)V

    .line 137
    return-void
.end method

.method public setCounter(Ljava/lang/String;J)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "count"    # J

    .prologue
    .line 124
    iget-object v0, p0, Lcom/amazonaws/util/TimingInfo;->countersByName:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    return-void
.end method

.method public setEndTime(J)V
    .locals 0
    .param p1, "endTime"    # J

    .prologue
    .line 69
    iput-wide p1, p0, Lcom/amazonaws/util/TimingInfo;->endTime:J

    .line 70
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/amazonaws/util/TimingInfo;->getTimeTakenMillis()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
