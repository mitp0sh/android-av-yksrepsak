.class final LuM;
.super Lcom/kms/menu/KisMenuButton;
.source "SourceFile"


# direct methods
.method public constructor <init>(Luz;)V
    .locals 3

    .prologue
    .line 12
    const v0, 0x7f070035

    const v1, 0x7f0200da

    sget-object v2, Lcom/kms/menu/KisMenuButton$ButtonId;->UPDATE_MENU_BUTTON:Lcom/kms/menu/KisMenuButton$ButtonId;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/kms/menu/KisMenuButton;-><init>(Luz;IILcom/kms/menu/KisMenuButton$ButtonId;)V

    .line 13
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 17
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA$MainWindowActions;->BasesUpdateButtonPressed:Lcom/google/android/apps/analytics/easytracking/GA$MainWindowActions;

    invoke-static {v0}, Lcom/google/android/apps/analytics/easytracking/GA;->a(Lcom/google/android/apps/analytics/easytracking/GA$MainWindowActions;)V

    .line 18
    invoke-virtual {p0}, LuM;->f()Luz;

    move-result-object v0

    invoke-virtual {v0}, Luz;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    invoke-static {}, LjJ;->b()Lrx;

    move-result-object v0

    sget-object v1, Lcom/kms/UiEventType;->BasesUpdateCancelRequested:Lcom/kms/UiEventType;

    invoke-virtual {v1}, Lcom/kms/UiEventType;->newEvent()Lkk;

    move-result-object v1

    invoke-interface {v0, v1}, Lrx;->a(Lrw;)V

    .line 24
    :goto_0
    return-void

    .line 22
    :cond_0
    invoke-static {}, LjJ;->b()Lrx;

    move-result-object v0

    sget-object v1, Lcom/kms/UiEventType;->BasesUpdateRequested:Lcom/kms/UiEventType;

    invoke-virtual {v1}, Lcom/kms/UiEventType;->newEvent()Lkk;

    move-result-object v1

    invoke-interface {v0, v1}, Lrx;->a(Lrw;)V

    goto :goto_0
.end method

.method public final g()V
    .locals 2

    .prologue
    .line 27
    invoke-virtual {p0}, LuM;->f()Luz;

    move-result-object v0

    const v1, 0x7f070034

    invoke-virtual {v0, p0, v1}, Luz;->a(Lcom/kms/menu/KisMenuButton;I)V

    .line 28
    return-void
.end method

.method public final h()V
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, LuM;->f()Luz;

    move-result-object v0

    invoke-virtual {v0, p0}, Luz;->b(Lcom/kms/menu/KisMenuButton;)V

    .line 32
    return-void
.end method
