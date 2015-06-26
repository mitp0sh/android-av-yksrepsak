.class final LuI;
.super Lcom/kms/menu/KisMenuButton;
.source "SourceFile"


# direct methods
.method public constructor <init>(Luz;)V
    .locals 3

    .prologue
    .line 13
    const v0, 0x7f070037

    const v1, 0x7f0200d2

    sget-object v2, Lcom/kms/menu/KisMenuButton$ButtonId;->PRIVACY_PROTECTION_MENU_BUTTON:Lcom/kms/menu/KisMenuButton$ButtonId;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/kms/menu/KisMenuButton;-><init>(Luz;IILcom/kms/menu/KisMenuButton$ButtonId;)V

    .line 14
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 18
    invoke-virtual {p0}, LuI;->f()Luz;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Luz;->a(I)V

    .line 19
    return-void
.end method

.method public final b()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 23
    invoke-static {}, Lqq;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 24
    invoke-static {}, LjJ;->d()Ltg;

    move-result-object v2

    invoke-interface {v2}, Ltg;->a()LsW;

    move-result-object v2

    const/16 v3, 0x13

    invoke-interface {v2, v3}, LsW;->a(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 27
    invoke-static {}, Lsr;->f()Lsm;

    move-result-object v2

    invoke-virtual {v2}, Lsm;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 36
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 30
    goto :goto_0

    :cond_2
    move v0, v1

    .line 36
    goto :goto_0
.end method
