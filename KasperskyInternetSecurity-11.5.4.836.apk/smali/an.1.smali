.class public final Lan;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kaspersky/components/ipm/IpmMessageManager;


# instance fields
.field private final a:Lau;

.field private final b:Lap;

.field private final c:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lau;Lap;)V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lan;->c:Ljava/util/ArrayList;

    .line 18
    iput-object p1, p0, Lan;->a:Lau;

    .line 19
    iput-object p2, p0, Lan;->b:Lap;

    .line 20
    return-void
.end method


# virtual methods
.method public final a(Lcom/kaspersky/components/ipm/IpmMessageSeverityEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kaspersky/components/ipm/IpmMessageManager$MessageContentEnum;Z)J
    .locals 7

    .prologue
    .line 26
    iget-object v0, p0, Lan;->a:Lau;

    invoke-interface {v0}, Lau;->c()Laq;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    .line 27
    invoke-interface/range {v0 .. v6}, Laq;->a(Lcom/kaspersky/components/ipm/IpmMessageSeverityEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kaspersky/components/ipm/IpmMessageManager$MessageContentEnum;Z)J

    move-result-wide v0

    .line 28
    iget-object v2, p0, Lan;->b:Lap;

    invoke-interface {v2}, Lap;->b()Lao;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lao;->a(J)V

    .line 30
    return-wide v0
.end method

.method public final a(J)V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lan;->a:Lau;

    invoke-interface {v0}, Lau;->c()Laq;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Laq;->b(J)V

    .line 36
    iget-object v0, p0, Lan;->b:Lap;

    invoke-interface {v0}, Lap;->b()Lao;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lao;->b(J)V

    .line 38
    return-void
.end method

.method public final a(LN;)V
    .locals 2

    .prologue
    .line 42
    iget-object v1, p0, Lan;->c:Ljava/util/ArrayList;

    monitor-enter v1

    .line 43
    :try_start_0
    iget-object v0, p0, Lan;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b(J)V
    .locals 3

    .prologue
    .line 56
    iget-object v1, p0, Lan;->c:Ljava/util/ArrayList;

    monitor-enter v1

    .line 57
    :try_start_0
    iget-object v0, p0, Lan;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LN;

    .line 58
    invoke-interface {v0, p1, p2}, LN;->a(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
