.class public Lcom/kaspersky/kts/gui/settings/WelcomeSetupSettingsView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    return-void
.end method


# virtual methods
.method public final a(III)V
    .locals 3

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/settings/WelcomeSetupSettingsView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 27
    const v1, 0x7f03005d

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 29
    const v0, 0x7f0b0106

    invoke-virtual {p0, v0}, Lcom/kaspersky/kts/gui/settings/WelcomeSetupSettingsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 30
    const v0, 0x7f0b0107

    invoke-virtual {p0, v0}, Lcom/kaspersky/kts/gui/settings/WelcomeSetupSettingsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(I)V

    .line 31
    const v0, 0x7f0b0105

    invoke-virtual {p0, v0}, Lcom/kaspersky/kts/gui/settings/WelcomeSetupSettingsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f020198

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 32
    const v0, 0x7f0b0108

    invoke-virtual {p0, v0}, Lcom/kaspersky/kts/gui/settings/WelcomeSetupSettingsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lft;

    invoke-direct {v1, p0}, Lft;-><init>(Lcom/kaspersky/kts/gui/settings/WelcomeSetupSettingsView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    return-void
.end method
