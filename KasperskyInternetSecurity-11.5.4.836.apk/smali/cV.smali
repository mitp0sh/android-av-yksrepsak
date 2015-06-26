.class final LcV;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldj;


# instance fields
.field private a:Lcom/kaspersky/kts/antitheft/QueueItem;

.field private synthetic b:LcU;


# direct methods
.method constructor <init>(LcU;Lcom/kaspersky/kts/antitheft/QueueItem;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, LcV;->b:LcU;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p2, p0, LcV;->a:Lcom/kaspersky/kts/antitheft/QueueItem;

    .line 64
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, LcV;->b:LcU;

    iget-object v1, p0, LcV;->a:Lcom/kaspersky/kts/antitheft/QueueItem;

    invoke-virtual {v0, v1}, LcU;->b(Lcom/kaspersky/kts/antitheft/QueueItem;)V

    .line 69
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, LcV;->a:Lcom/kaspersky/kts/antitheft/QueueItem;

    sget-object v1, Lcom/kaspersky/kts/antitheft/QueueItem$ItemStatus;->NEW:Lcom/kaspersky/kts/antitheft/QueueItem$ItemStatus;

    invoke-virtual {v0, v1}, Lcom/kaspersky/kts/antitheft/QueueItem;->setStatus(Lcom/kaspersky/kts/antitheft/QueueItem$ItemStatus;)V

    .line 74
    iget-object v0, p0, LcV;->b:LcU;

    iget-object v1, p0, LcV;->a:Lcom/kaspersky/kts/antitheft/QueueItem;

    invoke-virtual {v0, v1}, LcU;->c(Lcom/kaspersky/kts/antitheft/QueueItem;)V

    .line 75
    return-void
.end method
