.class public final LfM;
.super Lfu;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLfJ;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3, p4}, Lfu;-><init>(Ljava/lang/String;Ljava/lang/String;ZLfJ;)V

    .line 20
    return-void
.end method

.method private static e(Landroid/view/View;)Lcom/kaspersky/components/views/Switch;
    .locals 1

    .prologue
    .line 45
    const v0, 0x7f0b0179

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kaspersky/components/views/Switch;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/View;LfK;Ljava/lang/Object;)Landroid/view/View;
    .locals 2

    .prologue
    .line 25
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b0178

    if-ne v0, v1, :cond_0

    .line 30
    :goto_0
    invoke-virtual {p2, p4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 32
    invoke-static {p2}, LfM;->e(Landroid/view/View;)Lcom/kaspersky/components/views/Switch;

    move-result-object v0

    .line 33
    invoke-virtual {v0, p4}, Lcom/kaspersky/components/views/Switch;->setTag(Ljava/lang/Object;)V

    .line 34
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1, p2, p3}, LfM;->a(Landroid/content/Context;Landroid/view/View;LfK;)V

    .line 36
    invoke-virtual {v0, p3}, Lcom/kaspersky/components/views/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 37
    invoke-virtual {p0}, LfM;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kaspersky/components/views/Switch;->setChecked(Z)V

    .line 38
    iget-boolean v1, p0, LfM;->d:Z

    invoke-virtual {v0, v1}, Lcom/kaspersky/components/views/Switch;->setEnabled(Z)V

    .line 40
    return-object p2

    .line 28
    :cond_0
    const v0, 0x7f030089

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    move-object p2, v0

    goto :goto_0
.end method

.method public final synthetic b(Landroid/view/View;)Landroid/widget/CompoundButton;
    .locals 1

    .prologue
    .line 11
    invoke-static {p1}, LfM;->e(Landroid/view/View;)Lcom/kaspersky/components/views/Switch;

    move-result-object v0

    return-object v0
.end method
