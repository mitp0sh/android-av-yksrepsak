.class final LuJ;
.super Lcom/kms/menu/KisMenuButton;
.source "SourceFile"


# direct methods
.method public constructor <init>(Luz;)V
    .locals 3

    .prologue
    .line 14
    const v0, 0x7f070036

    const v1, 0x7f0200d4

    sget-object v2, Lcom/kms/menu/KisMenuButton$ButtonId;->SAFE_BROWSER_MENU_BUTTON:Lcom/kms/menu/KisMenuButton$ButtonId;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/kms/menu/KisMenuButton;-><init>(Luz;IILcom/kms/menu/KisMenuButton$ButtonId;)V

    .line 15
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 19
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA$MainWindowActions;->OpenSafeBrowserButtonPressed:Lcom/google/android/apps/analytics/easytracking/GA$MainWindowActions;

    invoke-static {v0}, Lcom/google/android/apps/analytics/easytracking/GA;->a(Lcom/google/android/apps/analytics/easytracking/GA$MainWindowActions;)V

    .line 20
    invoke-static {}, LjJ;->b()Lrx;

    move-result-object v0

    sget-object v1, Lcom/kms/UiEventType;->OpenSafeBrowser:Lcom/kms/UiEventType;

    invoke-virtual {v1}, Lcom/kms/UiEventType;->newEvent()Lkk;

    move-result-object v1

    invoke-interface {v0, v1}, Lrx;->a(Lrw;)V

    .line 21
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 25
    invoke-static {}, LjJ;->d()Ltg;

    move-result-object v0

    invoke-interface {v0}, Ltg;->a()LsW;

    move-result-object v0

    invoke-interface {v0}, LsW;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c(Z)V
    .locals 2

    .prologue
    .line 29
    invoke-virtual {p0}, LuJ;->f()Luz;

    move-result-object v0

    invoke-virtual {v0, p0}, Luz;->a(Lcom/kms/menu/KisMenuButton;)Landroid/view/View;

    move-result-object v0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    const v1, 0x7f0b00df

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 33
    if-eqz p1, :cond_1

    const v1, 0x7f0200d5

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 36
    :cond_0
    return-void

    .line 33
    :cond_1
    const v1, 0x7f0200d4

    goto :goto_0
.end method
