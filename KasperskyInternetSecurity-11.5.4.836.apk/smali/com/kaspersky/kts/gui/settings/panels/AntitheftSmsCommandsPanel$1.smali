.class Lcom/kaspersky/kts/gui/settings/panels/AntitheftSmsCommandsPanel$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/kaspersky/kts/gui/settings/panels/AntitheftSmsCommandsPanel;


# direct methods
.method constructor <init>(Lcom/kaspersky/kts/gui/settings/panels/AntitheftSmsCommandsPanel;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftSmsCommandsPanel$1;->a:Lcom/kaspersky/kts/gui/settings/panels/AntitheftSmsCommandsPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftSmsCommandsPanel$1;->a:Lcom/kaspersky/kts/gui/settings/panels/AntitheftSmsCommandsPanel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kaspersky/kts/gui/settings/panels/AntitheftSmsCommandsPanel;->d(I)V

    .line 41
    invoke-static {}, Lcom/google/android/apps/analytics/easytracking/GA;->f()V

    .line 42
    return-void
.end method
