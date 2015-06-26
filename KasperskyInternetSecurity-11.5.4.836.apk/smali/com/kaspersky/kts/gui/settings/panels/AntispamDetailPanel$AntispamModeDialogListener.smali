.class Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel$AntispamModeDialogListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel;


# direct methods
.method private constructor <init>(Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel$AntispamModeDialogListener;->a:Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel;B)V
    .locals 0

    .prologue
    .line 214
    invoke-direct {p0, p1}, Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel$AntispamModeDialogListener;-><init>(Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 218
    iget-object v2, p0, Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel$AntispamModeDialogListener;->a:Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel;

    invoke-static {v2}, Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel;->a(Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel;)LkZ;

    move-result-object v2

    invoke-interface {v2}, LkZ;->a()I

    move-result v2

    if-ne v2, p2, :cond_0

    .line 237
    :goto_0
    return-void

    .line 222
    :cond_0
    invoke-static {p2}, Lcom/google/android/apps/analytics/easytracking/GA$AsFilterMode;->getFilterMode(I)Lcom/google/android/apps/analytics/easytracking/GA$AsFilterMode;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/analytics/easytracking/GA;->a(Lcom/google/android/apps/analytics/easytracking/GA$AsFilterMode;)V

    .line 224
    iget-object v2, p0, Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel$AntispamModeDialogListener;->a:Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel;

    invoke-static {v2}, Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel;->a(Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel;)LkZ;

    move-result-object v2

    invoke-interface {v2, p2}, LkZ;->a(I)V

    .line 225
    if-eqz p2, :cond_1

    .line 226
    iget-object v2, p0, Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel$AntispamModeDialogListener;->a:Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel;

    invoke-static {v2}, Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel;->a(Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel;)LkZ;

    move-result-object v2

    invoke-interface {v2}, LkZ;->d()V

    .line 228
    :cond_1
    iget-object v2, p0, Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel$AntispamModeDialogListener;->a:Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel;

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel$AntispamModeDialogListener;->a:Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel;

    invoke-static {v4}, Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel;->b(Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0701c3

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v0, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel$AntispamModeDialogListener;->a:Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel;

    invoke-static {v6}, Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel;->c(Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a000f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel$AntispamModeDialogListener;->a:Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel;

    invoke-static {v7}, Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel;->a(Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel;)LkZ;

    move-result-object v7

    invoke-interface {v7}, LkZ;->a()I

    move-result v7

    aget-object v6, v6, v7

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel;->a(Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel;ILjava/lang/String;)V

    .line 229
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 231
    and-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_2

    .line 234
    :goto_1
    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel$AntispamModeDialogListener;->a:Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel;

    invoke-static {v1}, Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel;->d(Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/kms/antispam/ContactsBlocker;->a(Landroid/app/Activity;Z)V

    .line 236
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel$AntispamModeDialogListener;->a:Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel;

    invoke-virtual {v0, p2}, Lcom/kaspersky/kts/gui/settings/panels/AntispamDetailPanel;->k(I)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 231
    goto :goto_1
.end method
