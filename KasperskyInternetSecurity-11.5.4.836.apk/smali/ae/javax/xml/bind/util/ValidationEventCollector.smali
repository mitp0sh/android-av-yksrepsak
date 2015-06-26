.class public Lae/javax/xml/bind/util/ValidationEventCollector;
.super Ljava/lang/Object;
.source "ValidationEventCollector.java"

# interfaces
.implements Lae/javax/xml/bind/ValidationEventHandler;


# instance fields
.field private final events:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lae/javax/xml/bind/ValidationEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lae/javax/xml/bind/util/ValidationEventCollector;->events:Ljava/util/List;

    return-void
.end method

.method private static _assert(ZLjava/lang/String;)V
    .locals 1
    .param p0, "b"    # Z
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 125
    if-nez p0, :cond_0

    .line 126
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0, p1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_0
    return-void
.end method


# virtual methods
.method public getEvents()[Lae/javax/xml/bind/ValidationEvent;
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lae/javax/xml/bind/util/ValidationEventCollector;->events:Ljava/util/List;

    iget-object v1, p0, Lae/javax/xml/bind/util/ValidationEventCollector;->events:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lae/javax/xml/bind/ValidationEvent;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lae/javax/xml/bind/ValidationEvent;

    return-object v0
.end method

.method public handleEvent(Lae/javax/xml/bind/ValidationEvent;)Z
    .locals 4
    .param p1, "event"    # Lae/javax/xml/bind/ValidationEvent;

    .prologue
    .line 101
    iget-object v1, p0, Lae/javax/xml/bind/util/ValidationEventCollector;->events:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    const/4 v0, 0x1

    .line 104
    .local v0, "retVal":Z
    invoke-interface {p1}, Lae/javax/xml/bind/ValidationEvent;->getSeverity()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 115
    const/4 v1, 0x0

    const-string v2, "ValidationEventCollector.UnrecognizedSeverity"

    invoke-interface {p1}, Lae/javax/xml/bind/ValidationEvent;->getSeverity()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lae/javax/xml/bind/util/Messages;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lae/javax/xml/bind/util/ValidationEventCollector;->_assert(ZLjava/lang/String;)V

    .line 121
    :goto_0
    return v0

    .line 106
    :pswitch_0
    const/4 v0, 0x1

    .line 107
    goto :goto_0

    .line 109
    :pswitch_1
    const/4 v0, 0x1

    .line 110
    goto :goto_0

    .line 112
    :pswitch_2
    const/4 v0, 0x0

    .line 113
    goto :goto_0

    .line 104
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public hasEvents()Z
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lae/javax/xml/bind/util/ValidationEventCollector;->events:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lae/javax/xml/bind/util/ValidationEventCollector;->events:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 87
    return-void
.end method
