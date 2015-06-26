.class public final LdG;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LdI;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/kaspersky/kts/antitheft/find/FindState;
    .locals 2

    .prologue
    .line 10
    new-instance v0, Lcom/kaspersky/kts/antitheft/find/FindState;

    invoke-direct {v0}, Lcom/kaspersky/kts/antitheft/find/FindState;-><init>()V

    .line 11
    invoke-static {}, Lsr;->e()Lse;

    move-result-object v1

    invoke-virtual {v1}, Lse;->l()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kaspersky/kts/antitheft/find/FindState;->setAttempts(I)V

    .line 12
    return-object v0
.end method

.method public final a(Lcom/kaspersky/kts/antitheft/find/FindState;)V
    .locals 2

    .prologue
    .line 17
    invoke-static {}, Lsr;->e()Lse;

    move-result-object v0

    .line 18
    invoke-virtual {p1}, Lcom/kaspersky/kts/antitheft/find/FindState;->getAttempts()I

    move-result v1

    invoke-virtual {v0, v1}, Lse;->b(I)V

    .line 19
    invoke-virtual {v0}, Lse;->g_()V

    .line 20
    return-void
.end method
