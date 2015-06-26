.class final LuH;
.super Lcom/kms/menu/KisMenuButton;
.source "SourceFile"


# direct methods
.method public constructor <init>(Luz;)V
    .locals 3

    .prologue
    .line 12
    const v0, 0x7f07003d

    const v1, 0x7f0200d3

    sget-object v2, Lcom/kms/menu/KisMenuButton$ButtonId;->PREMIUM_MENU_BUTTON:Lcom/kms/menu/KisMenuButton$ButtonId;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/kms/menu/KisMenuButton;-><init>(Luz;IILcom/kms/menu/KisMenuButton$ButtonId;)V

    .line 13
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 17
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA$MainWindowActions;->PremiumButtonPressed:Lcom/google/android/apps/analytics/easytracking/GA$MainWindowActions;

    invoke-static {v0}, Lcom/google/android/apps/analytics/easytracking/GA;->a(Lcom/google/android/apps/analytics/easytracking/GA$MainWindowActions;)V

    .line 18
    invoke-static {}, LjJ;->b()Lrx;

    move-result-object v0

    sget-object v1, Lcom/kms/UiEventType;->ShowPremiumFeatures:Lcom/kms/UiEventType;

    invoke-virtual {v1}, Lcom/kms/UiEventType;->newEvent()Lkk;

    move-result-object v1

    invoke-interface {v0, v1}, Lrx;->a(Lrw;)V

    .line 19
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 23
    invoke-static {}, LjJ;->d()Ltg;

    move-result-object v0

    invoke-interface {v0}, Ltg;->a()LsW;

    move-result-object v0

    invoke-interface {v0}, LsW;->a()Z

    move-result v0

    return v0
.end method
