.class Lcom/kaspersky/kts/gui/settings/panels/AntitheftDetailPanel$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/kaspersky/kts/gui/settings/panels/AntitheftDetailPanel;


# direct methods
.method constructor <init>(Lcom/kaspersky/kts/gui/settings/panels/AntitheftDetailPanel;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftDetailPanel$1;->a:Lcom/kaspersky/kts/gui/settings/panels/AntitheftDetailPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftDetailPanel$1;->a:Lcom/kaspersky/kts/gui/settings/panels/AntitheftDetailPanel;

    invoke-static {v0}, Lcom/kaspersky/kts/gui/settings/panels/AntitheftDetailPanel;->a(Lcom/kaspersky/kts/gui/settings/panels/AntitheftDetailPanel;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lqy;->a(Landroid/app/Activity;I)V

    .line 230
    return-void
.end method
