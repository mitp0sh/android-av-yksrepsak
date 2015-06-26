.class final LuK;
.super Lcom/kms/menu/KisMenuButton;
.source "SourceFile"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Luz;)V
    .locals 3

    .prologue
    .line 22
    const v0, 0x7f070032

    const v1, 0x7f0200d6

    sget-object v2, Lcom/kms/menu/KisMenuButton$ButtonId;->SCAN_MENU_BUTTON:Lcom/kms/menu/KisMenuButton$ButtonId;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/kms/menu/KisMenuButton;-><init>(Luz;IILcom/kms/menu/KisMenuButton$ButtonId;)V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, LuK;->a:Z

    .line 23
    return-void
.end method

.method private static a(Landroid/view/View;Lcom/kms/menu/MenuButtonState;)V
    .locals 2

    .prologue
    .line 58
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1}, Lcom/kms/menu/MenuButtonState;->getDrawableLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 59
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 27
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA$MainWindowActions;->ScanButtonPressed:Lcom/google/android/apps/analytics/easytracking/GA$MainWindowActions;

    invoke-static {v0}, Lcom/google/android/apps/analytics/easytracking/GA;->a(Lcom/google/android/apps/analytics/easytracking/GA$MainWindowActions;)V

    .line 29
    invoke-virtual {p0}, LuK;->f()Luz;

    move-result-object v0

    invoke-virtual {v0, p0}, Luz;->a(Lcom/kms/menu/KisMenuButton;)Landroid/view/View;

    move-result-object v0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    sget-object v1, Lcom/kms/menu/MenuButtonState;->Normal:Lcom/kms/menu/MenuButtonState;

    invoke-static {v0, v1}, LuK;->a(Landroid/view/View;Lcom/kms/menu/MenuButtonState;)V

    .line 34
    :cond_0
    invoke-virtual {p0}, LuK;->f()Luz;

    move-result-object v0

    invoke-virtual {v0}, Luz;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36
    invoke-static {}, LjJ;->b()Lrx;

    move-result-object v0

    sget-object v1, Lcom/kms/UiEventType;->ScanCancelRequested:Lcom/kms/UiEventType;

    invoke-virtual {v1}, Lcom/kms/UiEventType;->newEvent()Lkk;

    move-result-object v1

    invoke-interface {v0, v1}, Lrx;->a(Lrw;)V

    .line 45
    :goto_0
    return-void

    .line 38
    :cond_1
    iget-boolean v0, p0, LuK;->a:Z

    if-eqz v0, :cond_2

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, LuK;->a:Z

    .line 40
    invoke-static {}, LjJ;->b()Lrx;

    move-result-object v0

    sget-object v1, Lcom/kms/UiEventType;->TypedScanRequested:Lcom/kms/UiEventType;

    sget-object v2, Lcom/kms/antivirus/AntivirusScanType;->Quick:Lcom/kms/antivirus/AntivirusScanType;

    invoke-virtual {v1, v2}, Lcom/kms/UiEventType;->newEvent(Ljava/lang/Object;)Lkk;

    move-result-object v1

    invoke-interface {v0, v1}, Lrx;->a(Lrw;)V

    goto :goto_0

    .line 42
    :cond_2
    invoke-static {}, LjJ;->b()Lrx;

    move-result-object v0

    sget-object v1, Lcom/kms/UiEventType;->ScanRequested:Lcom/kms/UiEventType;

    invoke-virtual {v1}, Lcom/kms/UiEventType;->newEvent()Lkk;

    move-result-object v1

    invoke-interface {v0, v1}, Lrx;->a(Lrw;)V

    goto :goto_0
.end method

.method public final g()V
    .locals 2

    .prologue
    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, LuK;->a:Z

    .line 49
    invoke-virtual {p0}, LuK;->f()Luz;

    move-result-object v0

    const v1, 0x7f070033

    invoke-virtual {v0, p0, v1}, Luz;->a(Lcom/kms/menu/KisMenuButton;I)V

    .line 50
    return-void
.end method

.method public final h()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, LuK;->a:Z

    .line 54
    invoke-virtual {p0}, LuK;->f()Luz;

    move-result-object v0

    invoke-virtual {v0, p0}, Luz;->b(Lcom/kms/menu/KisMenuButton;)V

    .line 55
    return-void
.end method

.method public final i()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 62
    invoke-virtual {p0}, LuK;->f()Luz;

    move-result-object v0

    invoke-virtual {v0, p0}, Luz;->a(Lcom/kms/menu/KisMenuButton;)Landroid/view/View;

    move-result-object v4

    .line 64
    if-eqz v4, :cond_0

    .line 65
    invoke-static {}, LjJ;->f()LpA;

    move-result-object v5

    .line 69
    sget-object v0, Lmi;->a:Ljava/lang/String;

    invoke-interface {v5, v0}, LpA;->a(Ljava/lang/String;)Lps;

    move-result-object v0

    check-cast v0, Lmi;

    .line 70
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lmi;->j()Z

    move-result v0

    if-nez v0, :cond_4

    .line 71
    iput-boolean v2, p0, LuK;->a:Z

    move v1, v2

    .line 75
    :goto_0
    if-nez v1, :cond_3

    .line 76
    sget-object v0, Lmg;->b:Ljava/lang/String;

    invoke-interface {v5, v0}, LpA;->a(Ljava/lang/String;)Lps;

    move-result-object v0

    check-cast v0, Lmg;

    .line 77
    if-eqz v0, :cond_3

    .line 78
    invoke-virtual {v0}, Lmg;->j()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 79
    iput-boolean v3, p0, LuK;->a:Z

    move v0, v1

    .line 87
    :goto_1
    if-eqz v0, :cond_2

    sget-object v0, Lcom/kms/menu/MenuButtonState;->Warning:Lcom/kms/menu/MenuButtonState;

    :goto_2
    invoke-static {v4, v0}, LuK;->a(Landroid/view/View;Lcom/kms/menu/MenuButtonState;)V

    .line 89
    :cond_0
    return-void

    .line 81
    :cond_1
    invoke-virtual {v0}, Lmg;->g()Z

    move-result v0

    iput-boolean v0, p0, LuK;->a:Z

    move v0, v2

    .line 82
    goto :goto_1

    .line 87
    :cond_2
    sget-object v0, Lcom/kms/menu/MenuButtonState;->Normal:Lcom/kms/menu/MenuButtonState;

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    move v1, v3

    goto :goto_0
.end method
