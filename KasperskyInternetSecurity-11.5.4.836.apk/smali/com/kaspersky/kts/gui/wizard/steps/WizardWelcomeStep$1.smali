.class Lcom/kaspersky/kts/gui/wizard/steps/WizardWelcomeStep$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/kaspersky/kts/gui/wizard/steps/WizardWelcomeStep;


# direct methods
.method constructor <init>(Lcom/kaspersky/kts/gui/wizard/steps/WizardWelcomeStep;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWelcomeStep$1;->a:Lcom/kaspersky/kts/gui/wizard/steps/WizardWelcomeStep;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .prologue
    .line 72
    if-ltz p2, :cond_0

    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWelcomeStep$1;->a:Lcom/kaspersky/kts/gui/wizard/steps/WizardWelcomeStep;

    invoke-static {v0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardWelcomeStep;->a(Lcom/kaspersky/kts/gui/wizard/steps/WizardWelcomeStep;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWelcomeStep$1;->a:Lcom/kaspersky/kts/gui/wizard/steps/WizardWelcomeStep;

    invoke-static {v0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardWelcomeStep;->a(Lcom/kaspersky/kts/gui/wizard/steps/WizardWelcomeStep;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    .line 74
    invoke-static {}, Lsr;->h()Lsj;

    move-result-object v1

    .line 75
    const-class v2, Lsj;

    monitor-enter v2

    .line 76
    :try_start_0
    iget-object v3, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWelcomeStep$1;->a:Lcom/kaspersky/kts/gui/wizard/steps/WizardWelcomeStep;

    invoke-static {v3}, Lcom/kaspersky/kts/gui/wizard/steps/WizardWelcomeStep;->b(Lcom/kaspersky/kts/gui/wizard/steps/WizardWelcomeStep;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lsj;->e(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v1}, Lsj;->g_()V

    .line 79
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 82
    return-void

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method
