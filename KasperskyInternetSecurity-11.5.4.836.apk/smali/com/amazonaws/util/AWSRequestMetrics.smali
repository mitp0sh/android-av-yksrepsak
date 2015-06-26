.class public Lcom/amazonaws/util/AWSRequestMetrics;
.super Ljava/lang/Object;
.source "AWSRequestMetrics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/util/AWSRequestMetrics$Field;
    }
.end annotation


# static fields
.field private static final COMMA_SEPARATOR:Ljava/lang/Object;

.field private static final KEY_VALUE_SEPARATOR:Ljava/lang/Object;

.field private static final latencyLogger:Lorg/apache/commons/logging/Log;


# instance fields
.field private final eventsBeingProfiled:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final profilingSystemPropertyEnabled:Z

.field private final properties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final timingInfo:Lcom/amazonaws/util/TimingInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const-string v0, "com.amazonaws.latency"

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/util/AWSRequestMetrics;->latencyLogger:Lorg/apache/commons/logging/Log;

    .line 64
    const-string v0, "="

    sput-object v0, Lcom/amazonaws/util/AWSRequestMetrics;->KEY_VALUE_SEPARATOR:Ljava/lang/Object;

    .line 65
    const-string v0, ", "

    sput-object v0, Lcom/amazonaws/util/AWSRequestMetrics;->COMMA_SEPARATOR:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/util/AWSRequestMetrics;->properties:Ljava/util/Map;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/util/AWSRequestMetrics;->eventsBeingProfiled:Ljava/util/Map;

    .line 69
    new-instance v0, Lcom/amazonaws/util/TimingInfo;

    invoke-direct {v0}, Lcom/amazonaws/util/TimingInfo;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/util/AWSRequestMetrics;->timingInfo:Lcom/amazonaws/util/TimingInfo;

    .line 70
    invoke-static {}, Lcom/amazonaws/util/AWSRequestMetrics;->isProfilingEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amazonaws/util/AWSRequestMetrics;->profilingSystemPropertyEnabled:Z

    .line 71
    return-void
.end method

.method private static isProfilingEnabled()Z
    .locals 1

    .prologue
    .line 75
    const-string v0, "com.amazonaws.sdk.enableRuntimeProfiling"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private keyValueFormat(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/StringBuilder;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "builder"    # Ljava/lang/StringBuilder;

    .prologue
    .line 175
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/amazonaws/util/AWSRequestMetrics;->KEY_VALUE_SEPARATOR:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/amazonaws/util/AWSRequestMetrics;->COMMA_SEPARATOR:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 176
    return-void
.end method


# virtual methods
.method public addProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 143
    iget-object v1, p0, Lcom/amazonaws/util/AWSRequestMetrics;->properties:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 144
    .local v0, "propertyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    if-nez v0, :cond_0

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "propertyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 146
    .restart local v0    # "propertyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/amazonaws/util/AWSRequestMetrics;->properties:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    return-void
.end method

.method public endEvent(Ljava/lang/String;)V
    .locals 7
    .param p1, "eventName"    # Ljava/lang/String;

    .prologue
    .line 105
    iget-boolean v1, p0, Lcom/amazonaws/util/AWSRequestMetrics;->profilingSystemPropertyEnabled:Z

    if-eqz v1, :cond_1

    .line 106
    iget-object v1, p0, Lcom/amazonaws/util/AWSRequestMetrics;->eventsBeingProfiled:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 108
    .local v0, "startTime":Ljava/lang/Long;
    if-nez v0, :cond_0

    .line 109
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to end an event which was never started. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 112
    :cond_0
    iget-object v1, p0, Lcom/amazonaws/util/AWSRequestMetrics;->timingInfo:Lcom/amazonaws/util/TimingInfo;

    new-instance v2, Lcom/amazonaws/util/TimingInfo;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/amazonaws/util/TimingInfo;-><init>(JJ)V

    invoke-virtual {v1, p1, v2}, Lcom/amazonaws/util/TimingInfo;->addSubMeasurement(Ljava/lang/String;Lcom/amazonaws/util/TimingInfo;)V

    .line 114
    .end local v0    # "startTime":Ljava/lang/Long;
    :cond_1
    return-void
.end method

.method public getTimingInfo()Lcom/amazonaws/util/TimingInfo;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/amazonaws/util/AWSRequestMetrics;->timingInfo:Lcom/amazonaws/util/TimingInfo;

    return-object v0
.end method

.method public incrementCounter(Ljava/lang/String;)V
    .locals 1
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/amazonaws/util/AWSRequestMetrics;->profilingSystemPropertyEnabled:Z

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/amazonaws/util/AWSRequestMetrics;->timingInfo:Lcom/amazonaws/util/TimingInfo;

    invoke-virtual {v0, p1}, Lcom/amazonaws/util/TimingInfo;->incrementCounter(Ljava/lang/String;)V

    .line 128
    :cond_0
    return-void
.end method

.method public log()V
    .locals 7

    .prologue
    .line 153
    iget-boolean v5, p0, Lcom/amazonaws/util/AWSRequestMetrics;->profilingSystemPropertyEnabled:Z

    if-nez v5, :cond_0

    .line 172
    :goto_0
    return-void

    .line 157
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 159
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v5, p0, Lcom/amazonaws/util/AWSRequestMetrics;->properties:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 160
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/Object;>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-direct {p0, v5, v6, v0}, Lcom/amazonaws/util/AWSRequestMetrics;->keyValueFormat(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    goto :goto_1

    .line 163
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/Object;>;>;"
    :cond_1
    iget-object v5, p0, Lcom/amazonaws/util/AWSRequestMetrics;->timingInfo:Lcom/amazonaws/util/TimingInfo;

    invoke-virtual {v5}, Lcom/amazonaws/util/TimingInfo;->getAllCounters()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 164
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Number;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-direct {p0, v5, v6, v0}, Lcom/amazonaws/util/AWSRequestMetrics;->keyValueFormat(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    goto :goto_2

    .line 167
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Number;>;"
    :cond_2
    iget-object v5, p0, Lcom/amazonaws/util/AWSRequestMetrics;->timingInfo:Lcom/amazonaws/util/TimingInfo;

    invoke-virtual {v5}, Lcom/amazonaws/util/TimingInfo;->getSubMeasurementsByName()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 168
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/amazonaws/util/TimingInfo;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-direct {p0, v5, v6, v0}, Lcom/amazonaws/util/AWSRequestMetrics;->keyValueFormat(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    goto :goto_3

    .line 171
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/amazonaws/util/TimingInfo;>;>;"
    :cond_3
    sget-object v5, Lcom/amazonaws/util/AWSRequestMetrics;->latencyLogger:Lorg/apache/commons/logging/Log;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setCounter(Ljava/lang/String;J)V
    .locals 1
    .param p1, "counterName"    # Ljava/lang/String;
    .param p2, "count"    # J

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/amazonaws/util/AWSRequestMetrics;->profilingSystemPropertyEnabled:Z

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/amazonaws/util/AWSRequestMetrics;->timingInfo:Lcom/amazonaws/util/TimingInfo;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazonaws/util/TimingInfo;->setCounter(Ljava/lang/String;J)V

    .line 134
    :cond_0
    return-void
.end method

.method public startEvent(Ljava/lang/String;)V
    .locals 3
    .param p1, "eventName"    # Ljava/lang/String;

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/amazonaws/util/AWSRequestMetrics;->profilingSystemPropertyEnabled:Z

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/amazonaws/util/AWSRequestMetrics;->eventsBeingProfiled:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    :cond_0
    return-void
.end method
