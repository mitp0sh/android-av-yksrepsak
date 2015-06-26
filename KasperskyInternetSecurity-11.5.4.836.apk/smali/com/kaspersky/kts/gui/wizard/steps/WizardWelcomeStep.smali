.class public Lcom/kaspersky/kts/gui/wizard/steps/WizardWelcomeStep;
.super Lcom/kaspersky/kts/gui/wizard/steps/AbstractWizardStep;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Ljava/util/List;

.field private final f:Ljava/util/List;

.field private g:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;Landroid/support/v4/app/Fragment;)V
    .locals 3

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/kaspersky/kts/gui/wizard/steps/AbstractWizardStep;-><init>(Landroid/view/LayoutInflater;Landroid/support/v4/app/Fragment;)V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWelcomeStep;->f:Ljava/util/List;

    .line 42
    invoke-static {}, Lsr;->h()Lsj;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lsj;->r()Ljava/lang/String;

    move-result-object v1

    .line 44
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 45
    const-class v1, Lsj;

    monitor-enter v1

    .line 46
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lsj;->e(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v0}, Lsj;->g_()V

    .line 48
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWelcomeStep;->f:Ljava/util/List;

    invoke-static {v0}, Lcom/kms/kmsshared/Utils;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWelcomeStep;->a:Ljava/util/List;

    .line 56
    return-void

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/kaspersky/kts/gui/wizard/steps/WizardWelcomeStep;)Ljava/util/List;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWelcomeStep;->a:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/kaspersky/kts/gui/wizard/steps/WizardWelcomeStep;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWelcomeStep;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method private b()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 92
    new-instance v0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWelcomeStep$UcpReadyCheckWorkThreadLoader;

    invoke-direct {v0, p0, v5}, Lcom/kaspersky/kts/gui/wizard/steps/WizardWelcomeStep$UcpReadyCheckWorkThreadLoader;-><init>(Lcom/kaspersky/kts/gui/wizard/steps/WizardWelcomeStep;B)V

    .line 93
    new-instance v1, LnT;

    iget-object v2, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWelcomeStep;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWelcomeStep;->c:Landroid/content/Context;

    const v4, 0x7f07047f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v0, v5, v3}, LnT;-><init>(Landroid/content/Context;LnX;ILjava/lang/String;)V

    invoke-virtual {v1}, LnT;->a()V

    .line 98
    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    .line 101
    invoke-static {}, Lsr;->h()Lsj;

    move-result-object v0

    .line 102
    const-class v1, Lsj;

    monitor-enter v1

    .line 103
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v0, v2}, Lsj;->f(Z)V

    .line 104
    invoke-virtual {v0}, Lsj;->g_()V

    .line 105
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardWelcomeStep;->p()V

    .line 107
    return-void

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic c(Lcom/kaspersky/kts/gui/wizard/steps/WizardWelcomeStep;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardWelcomeStep;->c()V

    return-void
.end method


# virtual methods
.method public final a(I)Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 60
    packed-switch p1, :pswitch_data_0

    .line 87
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 63
    :pswitch_0
    invoke-static {}, Lsr;->h()Lsj;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Lsj;->r()Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, -0x1

    move v1, v0

    .line 67
    :goto_1
    new-instance v0, LoN;

    iget-object v2, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWelcomeStep;->c:Landroid/content/Context;

    invoke-direct {v0, v2}, LoN;-><init>(Landroid/content/Context;)V

    const v2, 0x7f07025e

    invoke-virtual {v0, v2}, LoN;->a(I)LoN;

    move-result-object v2

    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWelcomeStep;->f:Ljava/util/List;

    iget-object v3, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWelcomeStep;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    new-instance v3, Lcom/kaspersky/kts/gui/wizard/steps/WizardWelcomeStep$1;

    invoke-direct {v3, p0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardWelcomeStep$1;-><init>(Lcom/kaspersky/kts/gui/wizard/steps/WizardWelcomeStep;)V

    invoke-virtual {v2, v0, v1, v3}, LoN;->a([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)LoN;

    move-result-object v0

    invoke-virtual {v0}, LoN;->b()LoM;

    move-result-object v0

    goto :goto_0

    .line 65
    :cond_0
    iget-object v1, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWelcomeStep;->a:Ljava/util/List;

    invoke-static {v1, v0}, Lcom/kms/kmsshared/Utils;->a(Ljava/util/List;Ljava/lang/String;)I

    move-result v0

    move v1, v0

    goto :goto_1

    .line 60
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final c(I)Landroid/view/View;
    .locals 4

    .prologue
    .line 113
    packed-switch p1, :pswitch_data_0

    .line 119
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unsupported screen configuration"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :pswitch_0
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWelcomeStep;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f0300bf

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 122
    const v0, 0x7f0b022d

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWelcomeStep;->g:Landroid/widget/TextView;

    .line 124
    invoke-static {}, Lsr;->h()Lsj;

    move-result-object v0

    .line 125
    invoke-virtual {v0}, Lsj;->r()Ljava/lang/String;

    move-result-object v0

    .line 127
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, -0x1

    .line 128
    :goto_0
    if-lez v0, :cond_0

    .line 129
    iget-object v1, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWelcomeStep;->g:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWelcomeStep;->a:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    :cond_0
    const v0, 0x7f0b0215

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 133
    iget-object v1, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWelcomeStep;->g:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    const v1, 0x7f0b0036

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 137
    const v3, 0x7f0702e6

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 138
    const v1, 0x7f07025f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 139
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    return-object v2

    .line 127
    :cond_1
    iget-object v1, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWelcomeStep;->a:Ljava/util/List;

    invoke-static {v1, v0}, Lcom/kms/kmsshared/Utils;->a(Ljava/util/List;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 113
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 146
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 153
    :goto_0
    return-void

    .line 148
    :sswitch_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardWelcomeStep;->d(I)V

    goto :goto_0

    .line 151
    :sswitch_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 152
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardWelcomeStep;->b()V

    goto :goto_0

    .line 146
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b0215 -> :sswitch_1
        0x7f0b022d -> :sswitch_0
    .end sparse-switch
.end method

.method public final r()Z
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x0

    return v0
.end method
