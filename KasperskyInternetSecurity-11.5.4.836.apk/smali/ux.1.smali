.class final Lux;
.super Lcom/kms/menu/KisMenuButton;
.source "SourceFile"


# direct methods
.method constructor <init>(Luz;)V
    .locals 3

    .prologue
    .line 12
    const v0, 0x7f07003b

    const v1, 0x7f0200d0

    sget-object v2, Lcom/kms/menu/KisMenuButton$ButtonId;->HELP_MENU_BUTTON:Lcom/kms/menu/KisMenuButton$ButtonId;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/kms/menu/KisMenuButton;-><init>(Luz;IILcom/kms/menu/KisMenuButton$ButtonId;)V

    .line 13
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 17
    sget-object v0, Lcom/google/android/apps/analytics/easytracking/GA$MainWindowActions;->HelpButtonPressed:Lcom/google/android/apps/analytics/easytracking/GA$MainWindowActions;

    invoke-static {v0}, Lcom/google/android/apps/analytics/easytracking/GA;->a(Lcom/google/android/apps/analytics/easytracking/GA$MainWindowActions;)V

    .line 18
    invoke-static {}, LjJ;->b()Lrx;

    move-result-object v0

    sget-object v1, Lcom/kms/UiEventType;->OpenHelp:Lcom/kms/UiEventType;

    const v2, 0x7f060016

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kms/UiEventType;->newEvent(Ljava/lang/Object;)Lkk;

    move-result-object v1

    invoke-interface {v0, v1}, Lrx;->a(Lrw;)V

    .line 19
    return-void
.end method
