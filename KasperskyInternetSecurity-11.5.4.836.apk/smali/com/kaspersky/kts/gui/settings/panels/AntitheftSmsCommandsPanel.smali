.class public Lcom/kaspersky/kts/gui/settings/panels/AntitheftSmsCommandsPanel;
.super Lcom/kaspersky/kts/gui/settings/panels/AntiTheftSafeSettingsDetailBase;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;Landroid/support/v4/app/Fragment;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/kaspersky/kts/gui/settings/panels/AntiTheftSafeSettingsDetailBase;-><init>(Landroid/view/LayoutInflater;Landroid/support/v4/app/Fragment;)V

    .line 30
    return-void
.end method

.method static synthetic a(Lcom/kaspersky/kts/gui/settings/panels/AntitheftSmsCommandsPanel;)Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftSmsCommandsPanel;->e:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method private y()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftSmsCommandsPanel;->c:Landroid/content/Context;

    const v1, 0x7f070336

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 61
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(I)Landroid/app/Dialog;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 66
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 67
    new-instance v1, Lcom/kaspersky/kts/gui/settings/panels/AntitheftSmsCommandsPanel$SelectCommandListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/kaspersky/kts/gui/settings/panels/AntitheftSmsCommandsPanel$SelectCommandListener;-><init>(Lcom/kaspersky/kts/gui/settings/panels/AntitheftSmsCommandsPanel;B)V

    .line 68
    new-instance v2, LoN;

    iget-object v3, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftSmsCommandsPanel;->c:Landroid/content/Context;

    invoke-direct {v2, v3}, LoN;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0701f7

    invoke-virtual {v2, v3}, LoN;->a(I)LoN;

    move-result-object v2

    const v3, 0x7f0a0015

    invoke-virtual {v2, v3, v1}, LoN;->d(ILandroid/content/DialogInterface$OnClickListener;)LoN;

    move-result-object v1

    const v2, 0x7f0701f8

    invoke-virtual {v1, v2, v0}, LoN;->b(ILandroid/content/DialogInterface$OnClickListener;)LoN;

    move-result-object v0

    invoke-virtual {v0}, LoN;->b()LoM;

    move-result-object v0

    .line 74
    :cond_0
    return-object v0
.end method

.method protected final c()Landroid/view/View;
    .locals 9

    .prologue
    const/4 v7, 0x0

    const v1, 0x7f020162

    .line 34
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftSmsCommandsPanel;->b:Landroid/view/LayoutInflater;

    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 35
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftSmsCommandsPanel;->d:Ljava/util/Vector;

    .line 37
    new-instance v6, Lcom/kaspersky/kts/gui/settings/panels/AntitheftSmsCommandsPanel$1;

    invoke-direct {v6, p0}, Lcom/kaspersky/kts/gui/settings/panels/AntitheftSmsCommandsPanel$1;-><init>(Lcom/kaspersky/kts/gui/settings/panels/AntitheftSmsCommandsPanel;)V

    .line 44
    iget-object v8, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftSmsCommandsPanel;->d:Ljava/util/Vector;

    new-instance v0, LfG;

    const v2, 0x7f070335

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/kaspersky/kts/gui/settings/panels/AntitheftSmsCommandsPanel;->y()Ljava/lang/CharSequence;

    move-result-object v3

    const v5, 0x7f07029c

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move v5, v1

    invoke-direct/range {v0 .. v7}, LfG;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v8, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 53
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftSmsCommandsPanel;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f030081

    invoke-virtual {v0, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 54
    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftSmsCommandsPanel;->d:Ljava/util/Vector;

    invoke-virtual {p0, v0, v1}, Lcom/kaspersky/kts/gui/settings/panels/AntitheftSmsCommandsPanel;->a(Landroid/view/View;Ljava/util/Vector;)V

    .line 55
    const v1, 0x7f0b016f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 56
    return-object v0
.end method

.method public final h()I
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method protected final i()Ljava/lang/String;
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftSmsCommandsPanel;->c:Landroid/content/Context;

    const v1, 0x7f070335

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final i(I)V
    .locals 0

    .prologue
    .line 79
    return-void
.end method

.method public final l()I
    .locals 1

    .prologue
    .line 93
    const/16 v0, 0x1f

    return v0
.end method
