.class public final LcU;
.super Ldc;
.source "SourceFile"


# static fields
.field private static a:Ldo;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/util/concurrent/Executor;Ldo;)V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ldc;-><init>(Ljava/io/File;Ljava/util/concurrent/Executor;Ldm;)V

    .line 20
    sput-object p3, LcU;->a:Ldo;

    .line 21
    return-void
.end method

.method public static a(LaU;)V
    .locals 1

    .prologue
    .line 24
    sget-object v0, LcU;->a:Ldo;

    invoke-virtual {v0, p0}, Ldo;->a(LaU;)V

    .line 25
    return-void
.end method


# virtual methods
.method protected final a(Lcom/kaspersky/kts/antitheft/QueueItem;)Z
    .locals 6

    .prologue
    .line 28
    move-object v0, p1

    check-cast v0, Lcom/kaspersky/kts/antitheft/CommandItem;

    .line 29
    invoke-virtual {v0}, Lcom/kaspersky/kts/antitheft/CommandItem;->getActionInfo()Lcom/kaspersky/kts/antitheft/ActionInfo;

    move-result-object v1

    .line 34
    sget-object v2, LcU;->a:Ldo;

    invoke-virtual {v2, v0}, Ldo;->a(Lcom/kaspersky/kts/antitheft/CommandItem;)Ldn;

    move-result-object v2

    .line 37
    invoke-virtual {v2}, Ldn;->c()Len;

    move-result-object v3

    .line 38
    invoke-virtual {v2}, Ldn;->b()Lef;

    move-result-object v4

    .line 39
    invoke-virtual {v2}, Ldn;->a()Led;

    move-result-object v2

    new-instance v5, LcV;

    invoke-direct {v5, p0, v0}, LcV;-><init>(LcU;Lcom/kaspersky/kts/antitheft/QueueItem;)V

    invoke-interface {v2, v1, v5}, Led;->a(Lcom/kaspersky/kts/antitheft/ActionInfo;Ldj;)Lec;

    move-result-object v1

    .line 40
    sget-object v0, Lcom/kaspersky/kts/antitheft/QueueItem$ItemStatus;->FINISHED:Lcom/kaspersky/kts/antitheft/QueueItem$ItemStatus;

    .line 41
    if-eqz v1, :cond_0

    .line 42
    invoke-interface {v1, v3}, Lec;->a(Len;)V

    .line 43
    invoke-interface {v1, v4}, Lec;->a(Lef;)V

    .line 45
    invoke-interface {v1}, Lec;->k()V

    .line 47
    invoke-interface {v1}, Lec;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/kaspersky/kts/antitheft/QueueItem$ItemStatus;->FINISHED:Lcom/kaspersky/kts/antitheft/QueueItem$ItemStatus;

    .line 53
    :cond_0
    :goto_0
    invoke-virtual {p1, v0}, Lcom/kaspersky/kts/antitheft/QueueItem;->setStatus(Lcom/kaspersky/kts/antitheft/QueueItem$ItemStatus;)V

    .line 54
    const/4 v0, 0x1

    return v0

    .line 47
    :cond_1
    sget-object v0, Lcom/kaspersky/kts/antitheft/QueueItem$ItemStatus;->RUNNING:Lcom/kaspersky/kts/antitheft/QueueItem$ItemStatus;

    goto :goto_0
.end method
